//
//  main.m
//  Homework2
//
//  Created by Максим Бобков on 13.02.2024.
//

#import <Foundation/Foundation.h>
#import "Figure.h"
#import "Figures/Rectangle.h"
#import "Figures/Circle.h"
#import "Figures/Triangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Создаем массив фигур
        NSArray<Figure *> *figures = @[
            [[Rectangle alloc] initWithName: @"Прямоугольник1" width: 10 height: 5],
            [[Rectangle alloc] initWithName: @"Прямоугольник2" width: 15 height: 10],
            [[Rectangle alloc] initWithName: @"Прямоугольник3" width: 20 height: 15],
            [[Circle alloc] initWithName: @"Круг1" radius: 10],
            [[Circle alloc] initWithName: @"Круг2" radius: 20],
            [[Triangle alloc] initWithName: @"Треугольник" a:10 b:15 c:20]
        ];
        
        // Выводим информацию о каждой фигуре
        for (Figure *figure in figures) {
            [figure figureInfo];
        }
    }
    return 0;
}
