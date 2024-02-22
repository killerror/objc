//
//  ViewController.m
//  Homework5
//
//  Created by Максим Бобков on 15.02.2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    
    [self performLoadingWithGetRequest];
}

- (void)performLoadingWithGetRequest {
    [self.loader performGetRequestForUrl:@"https://postman-echo.com/get?" arguments:@{@"arg1":@"value1", @"arg2":@"value2"} completion:^(NSDictionary *dict, NSError *error) {
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

//- (void)performLoadingWithPostRequest: {
//    [self.loader performPostRequestForUrl:@"https://postman-echo.com/post?" arguments:@{@"arg1":@"value1", @"arg2":@"value2"} completion:^(NSDictionary *dict, NSError *error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (error) {
//                NSLog(@"%@", error);
//                return;
//            }
//            NSLog(@"%@", dict);
//        });
//    }];
//}

@end
