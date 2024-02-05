//
//  main.m
//  Homework1.task1
//
//  Created by Максим Бобков on 05.02.2024.
//


/*
ЗАДАНИЕ 1.

Решить квадратные уравнения:
x^2 – 8x + 12 = 0,
12x^2 – 4x + 2 = 0,
x^2 – 100x - 2 = 0
(заменять константы в коде).
*/

#import <Foundation/Foundation.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int a = 1;
        int b = -100;
        int c = -2;

        /* Если константы вводить в консоль:
        double a, b, c;
        printf("a: ");
        scanf("%lf", &a);
        printf("b: ");
        scanf("%lf", &b);
        printf("c: ");
        scanf("%lf", &c);
        */

        double d = pow(b, 2.0) - 4 * a * c;

        if (d > 0) {
           double x1 = (-b + sqrt(d)) / (2 * a);
           double x2 = (-b - sqrt(d)) / (2 * a);
           NSLog(@"Корни: х1 = %f, x2 = %f", x1, x2);
        } else if (d == 0) {
           double x = -b / (2 * a);
           NSLog(@"Корень: x = %f", x);
        } else {
           NSLog(@"Нет корней.");
        }
    }
    return 0;
}

