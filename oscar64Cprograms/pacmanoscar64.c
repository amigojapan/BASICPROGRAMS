#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <conio.h>

// Screen memory pointer (Standard C64 Video RAM)
#define SCREEN ((unsigned char*)0x0400)

// Game State Variables
unsigned char b[19][14];
int px, py, ox, oy;
int gx[2], gy[2], g1x, g1y, g2x, g2y;
int sc = 0, li = 3, pm = 0, te = 0;
unsigned char p_sprite = 81;

// Map Data 
const char* map_data[14] = {
    "###################",
    "#^ooooooooooooooox#",
    "#o#######o#######o#",
    "#ooooooooooooooooo#",
    "#o#o#####o#####o#o#",
    "#o#o##ooooooo##o#o#",
    "#o#o##o#####o##o#o#",
    "#o#o##o#####o##o#o#",
    "#o#o##ooooooo##o#o#",
    "#o#o###########o#o#",
    "#moooooooooooooooo#",
    "#o###############o#",
    "#wooooooooooooooox#",
    "###################"
};

unsigned char get_v(int x, int y) {
    if (b[x][y] == 1) return 160; // Solid block
    if (b[x][y] == 2) return 46;  // Dot '.'
    if (b[x][y] == 3) return 87;  // Power pellet (Open Circle)
    return 32;                    // Empty Space
}

void draw_char(int x, int y, unsigned char v) {
    SCREEN[y * 40 + x] = v;
}

void init() {
    sc = 0; li = 3; pm = 0; te = 0;
    p_sprite = 81;
    srand(12345);

    for (int y = 0; y < 14; y++) {
        for (int x = 0; x < 19; x++) {
            char c = map_data[y][x];
            b[x][y] = 0;
            
            if (c == '#') { b[x][y] = 1; }
            else if (c == 'o') { b[x][y] = 2; te++; }
            else if (c == 'x') { b[x][y] = 3; te++; }
            else if (c == '^') { px = x; py = y; }
            else if (c == 'm') { gx[0] = x; gy[0] = y; }
            else if (c == 'w') { gx[1] = x; gy[1] = y; }
        }
    }
}

void draw_map() {
    for (int y = 0; y < 14; y++) {
        for (int x = 0; x < 19; x++) {
            draw_char(x, y, get_v(x, y));
        }
    }
}

void draw_hud() {
    printf("\x13"); 
    for(int i = 0; i < 18; i++) printf("\n");
    // Formatted with spacing so dropping from 10 to 9 doesn't leave trailing zeros
    printf("SCORE: %-5d LIVES: %d   POWER: %-2d   \n", sc, li, pm);
}

void check_collisions() {
    for (int i = 0; i < 2; i++) {
        if (px == gx[i] && py == gy[i]) {
            if (pm > 0) { 
                draw_char(gx[i], gy[i], get_v(gx[i], gy[i]));
                sc += 200;
                gx[i] = 1; 
                gy[i] = 10;
            } else {      
                li--;
                px = 1; 
                py = 1;
                p_sprite = 81;
            }
        }
    }
}

void update_ghosts() {
    static int skip_turn = 0;
    
    // NEW MECHANIC: Frightened ghosts skip every other turn so you can catch them!
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

            if (tx < 0 || tx > 18 || ty < 0 || ty > 13) continue;
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
    printf("\x93"); 
    init();
    draw_map();
    draw_hud();

    while (1) {
        if (te == 0) { printf("\nYOU WIN!\n"); break; }
        if (li == 0) { printf("\nGAME OVER!\n"); break; }

        ox = px; oy = py;
        g1x = gx[0]; g1y = gy[0];
        g2x = gx[1]; g2y = gy[1];

        int dx = 0, dy = 0;

        while (1) {
            char a = getch(); 
            
            if (a == 'w' || a == 'W') dy = -1;
            else if (a == 's' || a == 'S') dy = 1;
            else if (a == 'a' || a == 'A') dx = -1;
            else if (a == 'd' || a == 'D') dx = 1;

            if (dx != 0 || dy != 0) {
                int nx = px + dx;
                int ny = py + dy;
                if (b[nx][ny] != 1) { 
                    px = nx; py = ny;
                    break; 
                }
            }
            dx = 0; dy = 0;
        }

        if (b[px][py] == 2) { sc += 10; b[px][py] = 0; te--; }
        // NEW MECHANIC: Increased power mode duration from 10 to 20
        if (b[px][py] == 3) { sc += 50; b[px][py] = 0; te--; pm = 20; } 

        check_collisions();
        update_ghosts();
        check_collisions();

        if (pm > 0) pm--;

        // Erase old positions
        draw_char(ox, oy, get_v(ox, oy));
        draw_char(g1x, g1y, get_v(g1x, g1y));
        draw_char(g2x, g2y, get_v(g2x, g2y));

        // Draw Player
        draw_char(px, py, p_sprite);

        // NEW MECHANIC: Ghosts visually change to a checkerboard (102) when frightened
        unsigned char g1_sprite = (pm > 0) ? 102 : 161;
        unsigned char g2_sprite = (pm > 0) ? 102 : 162;

        draw_char(gx[0], gy[0], g1_sprite);
        draw_char(gx[1], gy[1], g2_sprite);

        draw_hud();
    }

    return 0;
}