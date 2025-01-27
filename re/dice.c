#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function to generate a random dice number
int roll_dice() {
    return rand() % 6 + 1;  // Random number between 1 and 6
}

int main() {
    // Initialize random seed based on current time
    // srand(time(NULL));
    srand(42);

    // Roll the dice
    int dice_result = roll_dice();
    
    // Print the result
    printf("Dice: %d\n", dice_result);

    return 0;
}