//
//  main.m
//  Homework1.Task2
//
//  Created by Максим Бобков on 06.02.2024.
//


/*
 ЗАДАНИЕ 2.
 
 Создать программу, которая находит большее число среди 3-х чисел.
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a = 2;
        int b = 24;
        int c = 12;
        int max = a;
        
        if (a > b && a > c)
            max = a;
        else if (b > a && b > c)
            max = b;
        else if (c > a && c > b)
            max = c;
        
        NSLog(@"Большее число: %i", max);
    }
    return 0;
}
