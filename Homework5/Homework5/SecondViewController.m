//
//  SecondViewController.m
//  Homework5
//
//  Created by Максим Бобков on 21.02.2024.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    
    // Добавляем обработчик нажатия на кнопку
    [self.button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonTapped {
    // Получаем текст из Text Field
    NSString *field1Text = self.textField1.text;
    NSString *field2Text = self.textField2.text;
    
    NSLog(@"Field1: %@", field1Text);
    NSLog(@"Field2: %@", field2Text);
    
    [self performLoadingWithPostRequest:@{@"arg1":field1Text, @"arg2":field2Text}];
}

- (void) performLoadingWithPostRequest: (NSDictionary*) arguments {
    [self.loader performPostRequestForUrl:@"https://postman-echo.com/post?" arguments:arguments completion:^(NSDictionary *dict, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
            
            // Преобразовываем NSDictionary в строку
            NSString *dictString = [dict description];
            // Выводим в TextView
            self.textView.text = dictString;
        });
    }];
}

@end
