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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
