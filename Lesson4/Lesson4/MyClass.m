//
//  MyClass.m
//  Lesson4
//
//  Created by Максим Бобков on 12.02.2024.
//

#import "MyClass.h"

@implementation MyClass



- (void)printResult:(NSInteger (^)(NSInteger, NSInteger))block andFirst:(NSInteger)value1 andSecond:(NSInteger)value2 {
    
    NSLog(@"%li", block(value1, value2));
}

@end
