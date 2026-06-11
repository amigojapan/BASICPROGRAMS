#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <conio.h>

// Screen memory pointer (Standard C64 Video RAM)
#define SCREEN ((unsigned char*)0x0400)

#define MAX_LEN 500

// Game State Variables
int sx[MAX_LEN], sy[MAX_LEN];
int len;
int dx, dy;
int fx, fy;
int sc;

// Draw a single character to screen RAM
void draw_char(int x, int y, unsigned char v) {
    SCREEN[y * 40 + x] = v;
}

// Convert standard text into C64 Uppercase Screen Codes and draw it
void draw_text(int x, int y, const char* str) {
    for (int i = 0; i < strlen(str); i++) {
        unsigned char c = str[i];
        if (c >= 'A' && c <= 'Z') c -= 64; 
        draw_char(x + i, y, c);
    }
}

void draw_hud() {
    char buf[20];
    sprintf(buf, "SCORE: %-5d", sc);
    draw_text(0, 23, buf); 
}

void spawn_food() {
    while(1) {
        fx = 1 + rand() % 38;
        fy = 1 + rand() % 21;
        
        int overlap = 0;
        for(int i = 0; i < len; i++) {
            if (sx[i] == fx && sy[i] == fy) overlap = 1;
        }
        if (!overlap) break;
    }
    // Draw food as a heart
    draw_char(fx, fy, 83); 
}

void init() {
    sc = 0;
    len = 4;
    dx = 1; dy = 0;
    srand(12345);

    printf("\x93"); // Clear Screen

    // Draw boundaries
    for (int y = 0; y < 23; y++) {
        for (int x = 0; x < 40; x++) {
            if (x == 0 || x == 39 || y == 0 || y == 22) {
                draw_char(x, y, 160); // Solid block
            } else {
                draw_char(x, y, 32);  // Empty Space
            }
        }
    }

    for (int i = 0; i < len; i++) {
        sx[i] = 10 - i;
        sy[i] = 10;
        draw_char(sx[i], sy[i], 81); // Solid ball
    }

    spawn_food();
    draw_hud();
}

int main() {
    init();

    while (1) {
        // TURN-BASED INPUT: Wait completely until a valid key is pressed
        while (1) {
            char a = getch();
            int new_dx = dx;
            int new_dy = dy;

            if (a == 'w' || a == 'W') { new_dx = 0; new_dy = -1; }
            else if (a == 's' || a == 'S') { new_dx = 0; new_dy = 1; }
            else if (a == 'a' || a == 'A') { new_dx = -1; new_dy = 0; }
            else if (a == 'd' || a == 'D') { new_dx = 1; new_dy = 0; }
            else continue; // Ignore any keys that aren't WASD

            // Prevent reversing direction directly into the second segment of the body
            if (len > 1 && (sx[0] + new_dx) == sx[1] && (sy[0] + new_dy) == sy[1]) {
                continue; // Ignore the reverse keypress, wait for a valid one
            }

            // Valid key pressed, update direction and break loop to move
            dx = new_dx;
            dy = new_dy;
            break;
        }

        // Calculate next head position
        int nx = sx[0] + dx;
        int ny = sy[0] + dy;

        // Collision Check: Walls
        if (nx == 0 || nx == 39 || ny == 0 || ny == 22) break;
        
        // Collision Check: Own Body (ignoring the very tip of the tail since it moves)
        int hit_self = 0;
        for (int i = 0; i < len - 1; i++) {
            if (sx[i] == nx && sy[i] == ny) hit_self = 1;
        }
        if (hit_self) break;

        int ate_food = (nx == fx && ny == fy);

        if (ate_food) {
            len++;
            sc += 10;
            draw_hud();
            spawn_food();
        } else {
            // Erase the old tail position
            draw_char(sx[len - 1], sy[len - 1], 32);
        }

        // Shift the array values to move the body forward
        for (int i = len - 1; i > 0; i--) {
            sx[i] = sx[i - 1];
            sy[i] = sy[i - 1];
        }
        
        // Update new head
        sx[0] = nx;
        sy[0] = ny;

        // Draw new head
        draw_char(sx[0], sy[0], 81);
    }

    draw_text(15, 11, "GAME OVER!");
    return 0;
}