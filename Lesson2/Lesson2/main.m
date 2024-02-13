//
//  main.m
//  Lesson2
//
//  Created by Максим Бобков on 08.02.2024.
//

#import <Foundation/Foundation.h> // В треуг. скобках библиотеки
#import "Photographer.h" // В кавычках внутренние фалы
#import "Trainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Создаём экземпляр класса
        // alloc - аллоцируем (создаём) память под экземпляр класса
        Photographer *photographer = [[Photographer alloc] initWithCameraType: Canon startNumberOfPhoto: 10 wAge: 23];
        
        NSLog(@"%li", (long)[photographer checkMoney]);
        
        // Создаём экземпляр стажёра
        Trainer *trainer = [[Trainer alloc] initWithCameraType: Canon startNumberOfPhoto: 5 wAge: 30];
        
        NSLog(@"%li", (long)[trainer checkMoney]);
    }
    return 0;
}
