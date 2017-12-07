//
//  ViewController.m
//  KVC&Setter-Benchmark
//
//  Created by October on 07/12/2017.
//  Copyright © 2017 October. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"

static NSInteger count = 100000;

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self benchmark1];
    [self benchmark2];
    [self benchmark3];
    [self benchmark4];
    [self benchmark5];
    
    [self benchmark11];
    [self benchmark22];
    [self benchmark33];
    [self benchmark44];
    [self benchmark55];
}

- (void)benchmark1
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        [m setValue:@"hello" forKey:@"_stringValue"];
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"[m setValue:@\"hello\" forKey:@\"_stringValue\"]: %f", endTime - startTime);
}

- (void)benchmark2
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        [m setValue:@"hello" forKey:@"stringValue"];
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"[m setValue:@\"hello\" forKey:@\"stringValue\"]:  %f", endTime - startTime);
}

- (void)benchmark3
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        [m setStringValue:@"hello"];
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"[m setStringValue:@\"hello\"]:                  %f", endTime - startTime);
}

- (void)benchmark4
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        m->_stringValue = @"hello";
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"m->_stringValue = @\"hello\":                   %f", endTime - startTime);
}

- (void)benchmark5
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        m.stringValue = @"hello";
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"m.stringValue = @\"hello\":                     %f", endTime - startTime);
}

- (void)benchmark11
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    NSNumber *n = @(123);
    
    for (NSInteger i = 0; i < count; i++) {
        [m setValue:n forKey:@"_integerValue"];
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"[m setValue:num forKey:@\"_integerValue\"]:       %f", endTime - startTime);
}

- (void)benchmark22
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    NSNumber *n = @(123);
    
    for (NSInteger i = 0; i < count; i++) {
        [m setValue:n forKey:@"integerValue"];
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"[m setValue:num forKey:@\"integerValue\"]:        %f", endTime - startTime);
}

- (void)benchmark33
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        [m setIntegerValue:123];
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"[m setIntegerValue:123]:                      %f", endTime - startTime);
}

- (void)benchmark44
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        m->_integerValue = 123;
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"m->_integerValue = 123:                       %f", endTime - startTime);
}

- (void)benchmark55
{
    CFTimeInterval startTime = CACurrentMediaTime();
    
    TestModel *m = [TestModel new];
    
    for (NSInteger i = 0; i < count; i++) {
        m.integerValue = 123;
    }
    
    CFTimeInterval endTime = CACurrentMediaTime();
    NSLog(@"m.integerValue = 123:                         %f", endTime - startTime);
}


@end
