//
//  TestModel.h
//  KVC&Setter-Benchmark
//
//  Created by October on 07/12/2017.
//  Copyright © 2017 October. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestModel : NSObject {
@public
    NSString  *_stringValue;
    NSInteger _integerValue;
}

@property (nonatomic, strong) NSString *stringValue;
@property (nonatomic, assign) NSInteger integerValue;

@end
