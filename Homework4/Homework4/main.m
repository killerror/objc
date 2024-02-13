//
//  main.m
//  Homework4
//
//  Created by Максим Бобков on 13.02.2024.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
              
        Robot *myRobot = [Robot new];

        // Перемещаем робота
        
        [myRobot run:^NSString *{
            return @"up";
        }];

        [myRobot run:^NSString *{
            return @"right";
        }];

        [myRobot run:^NSString *{
            return @"down";
        }];
    }
    return 0;
}
