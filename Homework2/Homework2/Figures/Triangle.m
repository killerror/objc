//
//  Triangle.m
//  Homework2
//
//  Created by Максим Бобков on 13.02.2024.
//

#import "Triangle.h"

@implementation Triangle

- (double) calcArea {
    // S = √(p(p-a)(p-b)(p-c))
    // p = (a + b + c)/2 - полупериметр треугольника
    double sp = (self.a + self.b + self.c) / 2.0; // semiperimeter
    return sqrt(sp * (sp - self.a) * (sp - self.b) * (sp - self.c));
}

- (double) calcPerimeter {
    return self.a + self.b + self.c;
}

- (void) figureInfo {
    NSLog(@"Название фигуры: %@\n сторона А: %f\n сторона B: %f\n сторона C: %f\n площадь: %f\n периметр: %f", self.name, self.a, self.b, self.c, self.calcArea, self.calcPerimeter);
}

- (instancetype) initWithName:(NSString *)name a:(double)a b:(double)b c:(double)c {
    self = [super init];
    if (self) {
        self.name = name;
        self.a = a;
        self.b = b;
        self.c = c;
    }
    return self;
}

@end
