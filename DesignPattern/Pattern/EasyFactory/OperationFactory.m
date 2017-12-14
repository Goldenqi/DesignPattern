//
//  OperationFactory.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/25.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationAdd.h"
#import "OperationDiv.h"
#import "OperationMul.h"
#import "OperationSub.h"

@implementation OperationFactory

+(Operation *)createOperateWithType:(MyOperationType)type{
    Operation *oper = nil;
    switch (type) {
        case MyOperationTypeAdd:
            oper = [[OperationAdd alloc] init];
            break;
        case MyOperationTypeSub:
            oper = [[OperationSub alloc] init];
            break;
        case MyOperationTypeDiv:
            oper = [[OperationDiv alloc] init];
            break;
        case MyOperationTypeMul:
            oper = [[OperationMul alloc] init];
            break;
    }
    return oper;
}

@end
