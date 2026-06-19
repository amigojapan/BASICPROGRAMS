#include <stdio.h>
#include <string.h>
#include <conio.h> // For getch(), kbhit(), and gotoxy()

#define MAX_LEVELS 3
#define MAX_W 40
#define MAX_H 16
#define MAX_BOXES 35
#define BOARD_OFFSET_Y 3 

// Commodore 64 Hardware Register for Joystick Port 2
#define JOY2 (*(volatile unsigned char*)0xDC00)

const char levels[MAX_LEVELS][MAX_H][MAX_W + 1] = {
    // LEVEL 1: THE WAREHOUSE (EASY) - 10 Boxes
    {
        "########################################",
        "#                                      #",
        "#   ################################   #",
        "#   # G G G G G #                  #   #",
        "#   #           #      1   1   1   #   #",
        "#   # G G G G G #    1   1   1     #   #",
        "#   #           #      1   1       #   #",
        "#   #####  ######        1   1     #   #",
        "#   # ^                            #   #",
        "#   #                              #   #",
        "#   ################################   #",
        "########################################",
        "                                        ",
        "                                        ",
        "                                        ",
        "                                        "
    },
    // LEVEL 2: MEDIUM (THE GREAT DIVIDE) - 21 Boxes
    {
        "########################################",
        "#                                      #",
        "#   ################################   #",
        "#   #     #                #       #   #",
        "#   # ^   #  1   1   1   1 # G G G #   #",
        "#   #     #                # G G G #   #",
        "#   #  1  # 1  1   1   1   # G G G #   #",
        "#   #     #                # G G G #   #",
        "#   # 1 1    1   1   1   1   G G G #   #",
        "#   #     #                # G G G #   #",
        "#   #  1  #  1   1   1   1 # G G G #   #",
        "#   #     #                #       #   #",
        "#   ################################   #",
        "#                                      #",
        "########################################"
    },
    // LEVEL 3: HARD (THE FORTRESS) - 25 Boxes
    {
        "########################################",
        "#                                      #",
        "#    ##############################    #",
        "#    #          #                 #    #",
        "#    # G G G G G# 1 1 1 1 1 1 1 1 #    #",
        "#    # G G G G G#                 #    #",
        "#    # G G G G G# 1 ###   ### 1 1 #    #",
        "#    # G G G G G    #       #     #    #",
        "#    # G G G G G# 1 #   ^   # 1 1 #    #",
        "#    #          #   #       #     #    #",
        "#    ############ 1 ###   ### 1 1 #    #",
        "#               #                 #    #",
        "#               # 1 1 1 1 1 1 1 1 #    #",
        "#               #                 #    #",
        "#               ###################    #",
        "########################################"
    }
};

int walls[MAX_H][MAX_W];
int goals[MAX_H][MAX_W];
int box_x[MAX_BOXES];
int box_y[MAX_BOXES];

int num_boxes = 0;
int px = 0, py = 0;

int level_moves = 0;
int total_moves = 0;

void load_level(int level_idx) {
    num_boxes = 0;
    level_moves = 0; 
    
    for (int y = 0; y < MAX_H; y++) {
        int row_len = strlen(levels[level_idx][y]);
        for (int x = 0; x < MAX_W; x++) {
            walls[y][x] = 0;
            goals[y][x] = 0;
            
            char c = (x < row_len) ? levels[level_idx][y][x] : ' ';
            
            if (c == '#') {
                walls[y][x] = 1;
            } else if (c == 'G') {
                goals[y][x] = 1;
            } else if (c == '1') {
                if(num_boxes < MAX_BOXES) {
                    box_x[num_boxes] = x;
                    box_y[num_boxes] = y;
                    num_boxes++;
                }
            } else if (c == '^') {
                px = x;
                py = y;
            }
        }
    }
}

void draw_tile(int x, int y) {
    gotoxy(x, y + BOARD_OFFSET_Y);
    
    if (x == px && y == py) {
        printf("\x12@\x92"); 
        return;
    }
    
    int is_box = 0;
    for (int i = 0; i < num_boxes; i++) {
        if (box_x[i] == x && box_y[i] == y) {
            is_box = 1;
            break;
        }
    }
    
    if (is_box) {
        if (goals[y][x]) {
            printf("\x12*\x92"); 
        } else {
            printf("\x12O\x92"); 
        }
        return;
    }
    
    if (walls[y][x]) {
        printf("\x12 \x92"); 
    } else if (goals[y][x]) {
        putchar('.');
    } else {
        putchar(' ');
    }
}

void draw_full_board() {
    for (int y = 0; y < MAX_H; y++) {
        for (int x = 0; x < MAX_W; x++) {
            draw_tile(x, y);
        }
    }
}

void update_ui(int current_level) {
    char buffer[41];
    sprintf(buffer, "LEVEL: %d/3 | MOVES: %-3d | TOTAL: %-4d", current_level + 1, level_moves, total_moves);
    gotoxy(0, 1);
    printf("%s", buffer);
}

// Custom input function to read both Keyboard and Joystick Port 2
char get_input() {
    while (1) {
        // 1. Check Keyboard (Non-blocking)
        if (kbhit()) {
            return getch();
        }
        
        // 2. Check Joystick Port 2 (Active Low, so 0 means pressed)
        unsigned char j = JOY2;
        if ((j & 15) != 15) { // If any of the bottom 4 bits are 0 (direction pushed)
            char m = 0;
            if ((j & 1) == 0) m = 'W';      // UP
            else if ((j & 2) == 0) m = 'S'; // DOWN
            else if ((j & 4) == 0) m = 'A'; // LEFT
            else if ((j & 8) == 0) m = 'D'; // RIGHT

            // Debounce: Wait until the joystick returns to the neutral center
            // so the player moves exactly one square per push!
            while ((JOY2 & 15) != 15) {}
            
            return m;
        }
    }
}

void execute_input(char move, int current_level) {
    int dx = 0, dy = 0;
    
    if (move == 'W' || move == 'w') dy = -1;
    else if (move == 'S' || move == 's') dy = 1;
    else if (move == 'A' || move == 'a') dx = -1;
    else if (move == 'D' || move == 'd') dx = 1;
    else return;

    int tx = px + dx;
    int ty = py + dy;

    if (tx < 0 || tx >= MAX_W || ty < 0 || ty >= MAX_H || walls[ty][tx]) {
        return; 
    }

    int box_idx = -1;
    for (int i = 0; i < num_boxes; i++) {
        if (box_x[i] == tx && box_y[i] == ty) {
            box_idx = i;
            break;
        }
    }

    int pushed_box = 0;
    int nnx = tx + dx;
    int nny = ty + dy;

    if (box_idx != -1) {
        if (nnx < 0 || nnx >= MAX_W || nny < 0 || nny >= MAX_H || walls[nny][nnx]) return; 
        
        for (int i = 0; i < num_boxes; i++) {
            if (box_x[i] == nnx && box_y[i] == nny) return;
        }
        
        box_x[box_idx] = nnx;
        box_y[box_idx] = nny;
        pushed_box = 1;
    }

    int old_px = px;
    int old_py = py;

    px = tx;
    py = ty;
    
    level_moves++;
    total_moves++;

    draw_tile(old_px, old_py); 
    draw_tile(px, py);         
    if (pushed_box) {
        draw_tile(nnx, nny);   
    }

    update_ui(current_level);
}

int check_win() {
    for (int i = 0; i < num_boxes; i++) {
        int bx = box_x[i];
        int by = box_y[i];
        if (!goals[by][bx]) return 0; 
    }
    return 1; 
}

int main() {
    putchar('\x0E'); 
    
    int game_running = 1;
    int current_level;
    
    for (current_level = 0; current_level < MAX_LEVELS && game_running; current_level++) {
        load_level(current_level);
        
        clrscr();
        gotoxy(0, 0); 
        printf("=== SOKOBAN (OSCAR64) ===");
        update_ui(current_level);
        
        draw_full_board();
        
        gotoxy(0, MAX_H + BOARD_OFFSET_Y + 1);
        printf("MOVE: WASD OR JOY 2. Q TO QUIT.");
        
        int level_playing = 1;
        while (level_playing && game_running) {
            
            if (check_win()) {
                gotoxy(0, MAX_H + BOARD_OFFSET_Y + 1);
                printf("!!! LEVEL COMPLETE !!! PRESS ANY KEY    ");
                get_input(); // Wait for key or joystick click
                level_playing = 0;
                continue;
            }
            
            // Read either Keyboard or Joystick automatically!
            char move = get_input();
            
            if (move == 'Q' || move == 'q') {
                game_running = 0; 
            } else {
                execute_input(move, current_level);
            }
        }
    }
    
    clrscr();
    gotoxy(0, 2);
    printf("========================================");
    gotoxy(0, 4);
    printf("               GAME OVER                ");
    gotoxy(0, 6);
    if (current_level == MAX_LEVELS && game_running) {
        printf("         YOU BEAT ALL 3 LEVELS!         ");
    } else {
        printf("              PLAYER QUIT               ");
    }
    gotoxy(0, 8);
    printf("         GRAND TOTAL MOVES: %-4d        ", total_moves);
    gotoxy(0, 10);
    printf("========================================");
    
    return 0;
}
