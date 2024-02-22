//
//  ViewController.m
//  Homework6
//
//  Created by Максим Бобков on 21.02.2024.
//

#import "ViewController.h"
#import "Robot.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    // Добавляем обработчик нажатия на кнопку
    [self.button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void) buttonTapped {
    
    // Получаем данные из Text Field
    float x = [self.x.text floatValue];
    float y = [self.y.text floatValue];
    NSString *name = self.name.text;
    
    NSLog(@"Данные из текстовых полей:");
    NSLog(@"x: %f", x);
    NSLog(@"y: %f", y);
    NSLog(@"name: %@", name);
    
    // Кладём координаты в подходящую сущность - CGPoint
    CGPoint point = CGPointMake(x, y);
    
    // Создаём робота
    Robot *robot = [[Robot alloc] initWithName:name andPoint:point];
    
    // Сохраняем робота в UserDefaults
    [self saveRobotToUserDefaults: (Robot*) robot];
    
    // Достаём робота из UserDefaults
    [self getRobotFromUserDefaults: (NSString*) name];
}

- (void) saveRobotToUserDefaults: (Robot*) robot {
    
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:robot requiringSecureCoding:NO error:NULL];
    
    // Сохраняем под именем робота
    //[userDefaults setObject:data forKey:@"robot"];
    [userDefaults setObject:data forKey:[robot getName]];
}

- (void) getRobotFromUserDefaults: (NSString*) name {
    
    NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
    
    //NSData *data = [userDefaults objectForKey:@"robot"];
    NSData *data = [userDefaults objectForKey:name];
    
    Robot *robot = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    NSLog(@"Данные из UserDefaults:");
    NSLog(@"x: %f", robot.getPoint.x);
    NSLog(@"y: %f", robot.getPoint.y);
    NSLog(@"name: %@", robot.getName);
    
    // Выводим в TextView
    self.textView.text = [NSString stringWithFormat: @"x: %f \ny: %f \nname: %@", robot.getPoint.x, robot.getPoint.y, robot.getName];
}

@end
