//
//  OperationDiv.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/25.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "OperationDiv.h"

@implementation OperationDiv

-(double)getResult{
    double result = [super getResult];

    @try {
        if (self.numberB == 0) {
            @throw nil;
        }
    } @catch (NSException *exception) {
        NSLog(@"不能为0");
    } @finally {
        result = self.numberA / self.numberB;
    }
    return result;
}

@end
