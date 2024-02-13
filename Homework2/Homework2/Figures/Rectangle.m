//
//  Rectangle.m
//  Homework2
//
//  Created by Максим Бобков on 13.02.2024.
//

#import "Rectangle.h"

@implementation Rectangle

- (double) calcArea {
    return self.width * self.height;
}

- (double) calcPerimeter {
    return self.width * 2 + self.height * 2;
}

- (void) figureInfo {
    NSLog(@"Название фигуры: %@\n длина: %f\n ширина: %f\n площадь: %f\n периметр: %f", self.name, self.width, self.height, self.calcArea, self.calcPerimeter);
}

- (instancetype)initWithName:(NSString *)name width:(double)width height:(double)height {
    self = [super init];
    if (self) {
        self.name = name;
        self.width = width;
        self.height = height;
    }
    return self;
}

@end
