//
//  OperationAdd.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/25.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "OperationAdd.h"

@implementation OperationAdd

-(double)getResult{
    double result = 0;
    result = self.numberA + self.numberB;
    return result;
}

@end
