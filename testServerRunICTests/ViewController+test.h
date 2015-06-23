//
//  ViewController+testViewController.h
//  testServerRunIC
//
//  Created by Oleksandr Buravlyov on 6/24/15.
//  Copyright (c) 2015 Oleksandr Buravlyov. All rights reserved.
//

#import "ViewController.h"


@interface ViewController (test)

//- (BOOL)viewDidLoadForTests;

- (NSString *)testLabelText;
- (NSString *)genLabelWithString:(NSString *)baseString;

@end