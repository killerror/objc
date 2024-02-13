//
//  Doctor.m
//  Homework3
//
//  Created by Максим Бобков on 13.02.2024.
//

#import "Doctor.h"

@implementation Doctor

- (void) giveMedicine {
    
    NSLog(@"Доктор даёт лекарство");
    
    [self.delegate takeMedicine];
}

@end
