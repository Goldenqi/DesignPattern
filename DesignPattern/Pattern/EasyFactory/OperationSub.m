//
//  OperationSub.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/25.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "OperationSub.h"

@implementation OperationSub

-(double)getResult{
    double result = [super getResult];
    result = self.numberA - self.numberB;
    return result;
}

@end
