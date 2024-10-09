import std.stdio;
import tacl;
import std.array;


void main()
{
	bool running = true;

	string[][] grid = new string[][](10,10);

	int playerX = 2;
	int playerY = 2;
	

	grid[playerY][playerX] = Bold.Green~"@"~Colors.Reset;

	

	while (running) {
		clearAll();
		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < 10; j++) {
				if (grid[i][j] != "") {
					write(grid[i][j]);
				} else {
					write(" ");
				}
			}
			write("\n");
		}
		string input = readln().replace("\n","");
		if (input == "exit") {
			running = false;
		} else if (input == "up" || input == "u") {
			grid[playerY][playerX] = "";
			if (playerY == 0) {
				playerY = 9;
			} else {
				playerY--;
			}
			grid[playerY][playerX] = Bold.Green~"@"~Colors.Reset;
		} else if (input == "down" || input == "d") {
			grid[playerY][playerX] = "";
			if (playerY == 9) {
				playerY = 0;
			} else {
				playerY++;
			}
			grid[playerY][playerX] = Bold.Green~"@"~Colors.Reset;
		} else if (input == "left" || input == "l") {
			grid[playerY][playerX] = "";
			if (playerX == 0) {
				playerX = 9;
			} else {
				playerX--;
			}
			
			grid[playerY][playerX] = Bold.Green~"@"~Colors.Reset;
		} else if (input == "right" || input == "r") {
			grid[playerY][playerX] = "";
			if (playerX == 9) {
				playerX = 0;
			} else {
				playerX++;
			}
			grid[playerY][playerX] = Bold.Green~"@"~Colors.Reset;
		}
		grid[playerY][playerX] = Bold.Green~"@"~Colors.Reset;
	}
}
