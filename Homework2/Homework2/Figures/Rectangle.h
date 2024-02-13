//
//  Rectangle.h
//  Homework2
//
//  Created by Максим Бобков on 13.02.2024.
//

#import <Foundation/Foundation.h>
#import "../Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure

@property (nonatomic) double width;
@property (nonatomic) double height;

- (instancetype) initWithName:(NSString*)name width:(double)width height:(double)height;

@end

NS_ASSUME_NONNULL_END
