//
//  Human.h
//  Lesson3
//
//  Created by Максим Бобков on 08.02.2024.
//

#import <Foundation/Foundation.h>
@class Macbook;

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Macbook *macbook;

@end

NS_ASSUME_NONNULL_END
