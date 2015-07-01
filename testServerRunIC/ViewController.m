//
//  ViewController.m
//  testServerRunIC
//
//  Created by Oleksandr Buravlyov on 6/23/15.
//  Copyright (c) 2015 Oleksandr Buravlyov. All rights reserved.
//

#import "ViewController.h"
#import "ViewController+test.h"

@interface ViewController ()
@property (nonatomic) BOOL viewDidLoaded;
@property (nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = @"test1";
    
    self.viewDidLoaded = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSString *currentLableText = self.label.text;
    self.label.text = [self genLabelWithString:currentLableText];
}

- (NSString *)genLabelWithString:(NSString *)baseString {
    NSString *newText = [NSString stringWithFormat:@"%@ %@", baseString, @"IC"];
    return newText;
}

#pragma mark - Test
- (NSString *)testLabelText {
    return self.label.text;
}

//- (BOOL)viewDidLoadForTests {
//    return self.viewDidLoad;
//}

@end
