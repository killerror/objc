//
//  main.m
//  Lesson3
//
//  Created by Максим Бобков on 08.02.2024.
//

#import <Foundation/Foundation.h>
#import "Macbook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Macbook *macbookPro = [[Macbook alloc] initWithName: @"Macbook Pro" storage: 512];
        Macbook *macbookAir = macbookPro;
        macbookAir.name = @"Macbook Air";
        
        NSLog(@"%@", macbookPro);
        NSLog(@"%@", macbookAir);
        
        Human *sergey = [Human new];
        sergey.macbook = macbookPro;
        macbookPro.human = sergey;
        
        NSLog(@"finish");
    }
    return 0;
}
