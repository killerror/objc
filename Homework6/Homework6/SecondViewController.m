//
//  SecondViewController.m
//  Homework6
//
//  Created by Максим Бобков on 21.02.2024.
//

#import "SecondViewController.h"
#import "Robot.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
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
    
    // Сохраняем свойства робота в файл
    [self saveRobotToFile: (Robot*) robot];
    
    // Достаём свойства робота из файла
    [self getRobotFromFile: (NSString*) name];
}

- (void) saveRobotToFile: (Robot*) robot {
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // Место для размещения наших папок и файлов
    NSURL *url = [fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
    
    // Папка
    NSURL *newFolderUrl = [url URLByAppendingPathComponent:@"robots"];
    
    // Файл с названием по имени робота
    NSURL *pathOfData = [newFolderUrl URLByAppendingPathComponent:[robot getName]];
    
    // Формируем содержимое файла:
    NSData *textData = [[NSString stringWithFormat: @"x: %f \ny: %f \nname: %@", robot.getPoint.x, robot.getPoint.y, robot.getName] dataUsingEncoding:kCFStringEncodingUTF8];
    
    if ([fileManager createDirectoryAtURL:newFolderUrl withIntermediateDirectories:YES attributes:NULL error:NULL]) {

        if ([fileManager fileExistsAtPath:pathOfData.path]) {
            [fileManager removeItemAtPath:pathOfData.path error:NULL];
        }
        [fileManager createFileAtPath:pathOfData.path contents:textData attributes:NULL];
    }
}

- (void) getRobotFromFile: (NSString*) name {
        
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // Получаем путь к папке с файлами
    NSURL *url = [fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
    NSURL *folderUrl = [url URLByAppendingPathComponent:@"robots"];
    
    // Формируем путь к файлу с именем робота
    NSURL *pathOfData = [folderUrl URLByAppendingPathComponent:name];
    
    if ([fileManager fileExistsAtPath:pathOfData.path]) {
        
        // Читаем содержимое файла
        NSData *data = [NSData dataWithContentsOfURL:pathOfData];
        NSString *text = [[NSString alloc] initWithData:data encoding:kCFStringEncodingUTF8];
        
        NSLog(@"Данные из файла: %@", text);
        
        // Выводим в TextView
        self.textView.text = text;
    }
}

@end
