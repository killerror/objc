//
//  main.m
//  Lesson4
//
//  Created by Максим Бобков on 12.02.2024.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Как локальная переменная
        //returnType (^blockName)(parameterTypes) = ^returnType(parameters) {...};
        
        NSInteger (^sum)(NSInteger, NSInteger) = ^NSInteger(NSInteger a, NSInteger b) {
            return a + b;
        };
        NSLog(@"Sum = %li", sum(3, 4));
        
        
        sum = ^NSInteger(NSInteger a, NSInteger b) {
            return a * b;
        };
        NSLog(@"Sum = %li", sum(3, 4));
        
        
        MyClass *myClass = [MyClass new];
        myClass.block = ^NSInteger(NSInteger a, NSInteger b) {
            return a - b;
        };
        NSLog(@"Block result = %li", myClass.block(7, 4));
        
        
        myClass.block = sum;
        NSLog(@"Block result = %li", myClass.block(7, 4));
        
        
        [myClass printResult:^NSInteger(NSInteger a, NSInteger b) {
            return a / b;
        } andFirst: 7 andSecond: 3];
        
        
        [myClass printResult: sum andFirst: 9 andSecond: 3];
        
        
        
    }
    return 0;
}
