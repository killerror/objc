//
//  Macbook.m
//  Lesson3
//
//  Created by Максим Бобков on 08.02.2024.
//

#import "Macbook.h"

@implementation Macbook

- (instancetype)initWithName:(NSString *)name storage:(NSInteger)storage {
    self = [super init];
    if (self) {
        self.name = name;
        self.storage = storage;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %li", self.name, self.storage];
}

- (void)dealloc
{
    NSLog(@"%@ %li удалён из памяти", self.name, self.storage);
}

@end
