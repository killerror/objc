//
//  Robot.m
//  Homework4
//
//  Created by Максим Бобков on 13.02.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype) init {
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    return self;
}

- (void)run:(NSString * (^)(void))block {
    
    NSString *direction = block();
        
    if ([direction isEqualToString:@"up"]) {
        self.y++;
    } else if ([direction isEqualToString:@"down"]) {
        self.y--;
    } else if ([direction isEqualToString:@"left"]) {
        self.x--;
    } else if ([direction isEqualToString:@"right"]) {
        self.x++;
    } else {
        NSLog(@"Не верный параметр");
        return;
    }
    
    NSLog(@"Движение: %@, текущие координаты: %li, %li", direction, self.x, self.y);
}

@end
