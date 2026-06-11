#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <conio.h>

// Hardware Registers
#define SCREEN ((unsigned char*)0x0400)
#define RASTER (*(volatile unsigned char*)0xD012)
#define JOY2   (*(volatile unsigned char*)0xDC00)

// Game State Variables (Expanded for 40x23 Map)
unsigned char b[40][23];
int px, py, ox, oy;
int gx[2], gy[2], g1x, g1y, g2x, g2y;
int sc = 0, li = 3, pm = 0, te = 0;
unsigned char p_sprite = 81;

// Full Screen Map Data (40 columns x 23 rows)
const char* map_data[23] = {
    "########################################",
    "#oooooooooooooooooo##oooooooooooooooooo#",
    "#o####o#######o###o##o###o#######o####o#",
    "#ox###o#######o###o##o###o#######o###xo#",
    "#o####o#######o###o##o###o#######o####o#",
    "#oooooooooooooooooooooooooooooooooooooo#",
    "#o####o##o####################o##o####o#",
    "#o####o##o####################o##o####o#",
    "#oooooo##oooooooooo##oooooooooo##oooooo#",
    "######o########### ## ###########o######",
    "     #o##                      ##o#     ",
    "######o## #########  ######### ##o######",
    "#oooooooo #m                 # oooooooo#",
    "######o## #        w         # ##o######",
    "     #o## #################### ##o#     ",
    "######o## #################### ##o######",
    "#oooooooooooooooooo##oooooooooooooooooo#",
    "#o####o###########o##o###########o####o#",
    "#ox##ooooooo       ^        ooooooo##xo#",
    "##o##o##o######################o##o##o##",
    "#ooooo##ooooooooooo##ooooooooooo##ooooo#",
    "#o################o##o################o#",
    "########################################"
};

// Waits for the screen to physically draw, allowing us to pace the joystick input
void wait_frames(int frames) {
    for (int i = 0; i < frames; i++) {
        while(RASTER != 0xFF); 
        while(RASTER == 0xFF); 
    }
}

unsigned char get_v(int x, int y) {
    if (b[x][y] == 1) return 160; 
    if (b[x][y] == 2) return 46;  
    if (b[x][y] == 3) return 87;  
    return 32;                    
}

void draw_char(int x, int y, unsigned char v) {
    SCREEN[y * 40 + x] = v;
}

// Custom text drawing to avoid screen scrolling
void draw_text(int x, int y, const char* str) {
    for (int i = 0; i < strlen(str); i++) {
        unsigned char c = str[i];
        if (c >= 'A' && c <= 'Z') c -= 64; 
        else if (c >= 'a' && c <= 'z') c -= 96; 
        draw_char(x + i, y, c);
    }
}

void draw_hud() {
    char buf[40];
    sprintf(buf, "SCORE: %-5d LIVES: %d   POWER: %-2d", sc, li, pm);
    draw_text(1, 24, buf); // Draw cleanly on the bottom row
}

void init() {
    sc = 0; li = 3; pm = 0; te = 0;
    p_sprite = 81;
    srand(12345);

    printf("\x93"); // Clear Screen

    for (int y = 0; y < 23; y++) {
        for (int x = 0; x < 40; x++) {
            char c = map_data[y][x];
            b[x][y] = 0;
            
            if (c == '#') { b[x][y] = 1; }
            else if (c == 'o') { b[x][y] = 2; te++; }
            else if (c == 'x') { b[x][y] = 3; te++; }
            else if (c == '^') { px = x; py = y; }
            else if (c == 'm') { gx[0] = x; gy[0] = y; }
            else if (c == 'w') { gx[1] = x; gy[1] = y; }
            
            draw_char(x, y, get_v(x, y));
        }
    }
    draw_hud();
}

void check_collisions() {
    for (int i = 0; i < 2; i++) {
        if (px == gx[i] && py == gy[i]) {
            if (pm > 0) { 
                draw_char(gx[i], gy[i], get_v(gx[i], gy[i]));
                sc += 200;
                gx[i] = 18; // Reset to ghost house
                gy[i] = 12;
            } else {      
                li--;
                px = 19;    // Reset to start pos
                py = 18;
                p_sprite = 81;
            }
        }
    }
}

void update_ghosts() {
    static int skip_turn = 0;
    
    if (pm > 0) {
        skip_turn = !skip_turn;
        if (skip_turn) return; 
    } else {
        skip_turn = 0;
    }

    for (int i = 0; i < 2; i++) {
        int bd = -1;
        if (pm == 0 && i == 1) bd = 999; 

        int bx = gx[i];
        int by = gy[i];
        int n = 0;

        for (int d = 1; d <= 4; d++) {
            int cx = 0, cy = 0;
            if (d == 1) cy = -1;
            if (d == 2) cy = 1;
            if (d == 3) cx = -1;
            if (d == 4) cx = 1;

            int tx = gx[i] + cx;
            int ty = gy[i] + cy;

            // Expanded bounding boxes for 40x23 map
            if (tx < 0 || tx > 39 || ty < 0 || ty > 22) continue;
            if (b[tx][ty] == 1) continue;

            int md = abs(tx - px) + abs(ty - py);

            if (pm > 0 && md > bd) { bd = md; bx = tx; by = ty; }
            if (pm == 0 && i == 1 && md < bd) { bd = md; bx = tx; by = ty; }
            
            if (i == 0) {
                n++;
                if (rand() % n == 0) { bx = tx; by = ty; }
            }
        }
        
        gx[i] = bx;
        gy[i] = by;
    }
}

int main() {
    init();

    while (1) {
        if (te == 0) { draw_text(16, 14, "YOU WIN!"); break; }
        if (li == 0) { draw_text(15, 14, "GAME OVER!"); break; }

        ox = px; oy = py;
        g1x = gx[0]; g1y = gy[0];
        g2x = gx[1]; g2y = gy[1];

        int dx = 0, dy = 0;

        // Input Polling Loop
        while (1) {
            // 1. Keyboard Check
            if (kbhit()) {
                char a = getch(); 
                if (a == 'w' || a == 'W') { dx=0; dy=-1; }
                else if (a == 's' || a == 'S') { dx=0; dy=1; }
                else if (a == 'a' || a == 'A') { dx=-1; dy=0; }
                else if (a == 'd' || a == 'D') { dx=1; dy=0; }
            } 
            // 2. Joystick Port 2 Check
            else {
                unsigned char j = JOY2;
                if (!(j & 1))      { dx=0; dy=-1; } // Up
                else if (!(j & 2)) { dx=0; dy=1;  } // Down
                else if (!(j & 4)) { dx=-1; dy=0; } // Left
                else if (!(j & 8)) { dx=1; dy=0;  } // Right
            }

            // If an input was detected
            if (dx != 0 || dy != 0) {
                int nx = px + dx;
                int ny = py + dy;
                // Check if it's a valid move (not a wall)
                if (b[nx][ny] != 1) { 
                    px = nx; py = ny;
                    break; // Break the input loop, progress the game
                }
                // Reset so momentum doesn't carry over into invalid walls
                dx = 0; dy = 0; 
            }
        }

        // Logic Updates
        if (b[px][py] == 2) { sc += 10; b[px][py] = 0; te--; }
        if (b[px][py] == 3) { sc += 50; b[px][py] = 0; te--; pm = 30; } 

        check_collisions();
        update_ghosts();
        check_collisions();

        if (pm > 0) pm--;

        // Draw Frame Updates
        draw_char(ox, oy, get_v(ox, oy));
        draw_char(g1x, g1y, get_v(g1x, g1y));
        draw_char(g2x, g2y, get_v(g2x, g2y));

        draw_char(px, py, p_sprite);

        unsigned char g1_sprite = (pm > 0) ? 102 : 161;
        unsigned char g2_sprite = (pm > 0) ? 102 : 162;

        draw_char(gx[0], gy[0], g1_sprite);
        draw_char(gx[1], gy[1], g2_sprite);

        draw_hud();

        // Delay so holding down the joystick provides a smooth, playable speed
        wait_frames(8); 
    }

    return 0;
}