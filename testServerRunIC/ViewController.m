//
//  ViewController.m
//  testServerRunIC
//
//  Created by Oleksandr Buravlyov on 6/23/15.
//  Copyright (c) 2015 Oleksandr Buravlyov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = @"test1";
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


@end
