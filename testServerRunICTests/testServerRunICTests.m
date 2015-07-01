//
//  testServerRunICTests.m
//  testServerRunICTests
//
//  Created by Oleksandr Buravlyov on 6/23/15.
//  Copyright (c) 2015 Oleksandr Buravlyov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "ViewController+test.h"

@interface testServerRunICTests : XCTestCase  {
    ViewController *vc;
}
//@property (nonatomic, strong) ViewController *vc;
@end

@implementation testServerRunICTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    vc = [storyboard instantiateViewControllerWithIdentifier:@"MainVc"];
    [vc performSelectorOnMainThread:@selector(loadView) withObject:nil waitUntilDone:YES];
    [vc viewDidLoad];
    
    XCTAssert(vc, @"vc should be created");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTextLabel {
//    BOOL viewDidLoad = NO;
//    while (!viewDidLoad) {
//        viewDidLoad = vc.viewDidLoadForTests;
//    }
    
    
    NSString *resultString = vc.testLabelText;
    NSString *expectedString = @"test1";
    
    XCTAssert([resultString isEqualToString:expectedString], @"got %@ instead of %@", resultString, expectedString);
}

- (void)testGenLabelWithString {
    NSString *addString = @"some text";
    NSString *resultString = [vc genLabelWithString:addString];
    
    NSString *expectedString = @"some text IC";
    
    XCTAssert([resultString isEqualToString:expectedString], @"got %@ instead of %@", resultString, expectedString);
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        for (int i=0; i<30000; i++) {
            int a =0;
            a += i;
            a += a;
            
            NSString *addString = @"some text";
            NSString *resultString = [vc genLabelWithString:addString];
            addString = resultString;
            resultString = addString;
            addString = resultString;
        }
    }];
}

@end
