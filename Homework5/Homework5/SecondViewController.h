//
//  SecondViewController.h
//  Homework5
//
//  Created by Максим Бобков on 21.02.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField1;

@property (weak, nonatomic) IBOutlet UITextField *textField2;

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic, strong) Loader* loader;

- (void) performLoadingWithPostRequest: (NSDictionary*) arguments;

@end

NS_ASSUME_NONNULL_END
