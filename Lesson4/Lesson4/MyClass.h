//
//  MyClass.h
//  Lesson4
//
//  Created by Максим Бобков on 12.02.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyClass : NSObject

typedef NSInteger (^DoubleInt) (NSInteger, NSInteger);

// @property (nonatomic, copy, nullability) returnType (^blockName)(parameterTypes);

//@property (nonatomic, copy, nullable) NSInteger (^block)(NSInteger, NSInteger);

@property (nonatomic, copy, nullable) DoubleInt block;

//- (void) printResult: (NSInteger (^) (NSInteger, NSInteger)) block andFirst: (NSInteger) value1 andSecond: (NSInteger) value2;

- (void) printResult: (DoubleInt) block andFirst: (NSInteger) value1 andSecond: (NSInteger) value2;

@end

NS_ASSUME_NONNULL_END
