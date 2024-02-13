//
//  Trainer.m
//  Lesson2
//
//  Created by Максим Бобков on 08.02.2024.
//

#import "Trainer.h"

@implementation Trainer

// Переопределяем родительский класс
- (NSInteger) checkMoney {
    NSInteger k = 2;
    return self.getStartNumberOfPhoto * k;
}

@end
