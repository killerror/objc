//
//  Circle.m
//  Homework2
//
//  Created by Максим Бобков on 13.02.2024.
//

#import "Circle.h"

@implementation Circle

- (double) calcArea {
    return M_PI * self.radius * self.radius;
}

- (double) calcPerimeter {
    return 2 * M_PI * self.radius;
}

- (void) figureInfo {
    NSLog(@"Название фигуры: %@\n радиус: %f\n площадь: %f\n периметр: %f", self.name, self.radius, self.calcArea, self.calcPerimeter);
}

- (instancetype)initWithName:(NSString *)name radius:(double)radius {
    self = [super init];
    if (self) {
        self.name = name;
        self.radius = radius;
    }
    return self;
}

@end
