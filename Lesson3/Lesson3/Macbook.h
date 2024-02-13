//
//  Macbook.h
//  Lesson3
//
//  Created by Максим Бобков on 08.02.2024.
//

#import <Foundation/Foundation.h>
#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface Macbook : NSObject
    
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSInteger storage;
@property (nonatomic, weak) Human *human;

- (instancetype) initWithName: (NSString *) name storage: (NSInteger) storage;

@end

NS_ASSUME_NONNULL_END
