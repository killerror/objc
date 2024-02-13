//
//  Circle.h
//  Homework2
//
//  Created by Максим Бобков on 13.02.2024.
//

#import <Foundation/Foundation.h>
#import "../Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure

@property (nonatomic) double radius;

- (instancetype) initWithName:(NSString*)name radius:(double)radius;

@end

NS_ASSUME_NONNULL_END
