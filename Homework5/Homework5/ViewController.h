//
//  ViewController.h
//  Homework5
//
//  Created by Максим Бобков on 15.02.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic, strong) Loader* loader;

- (void) performLoadingWithGetRequest;
//- (void) performLoadingWithPostRequest;

@end

