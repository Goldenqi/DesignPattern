//
//  OperationFactory.h
//  DesignPattern
//
//  Created by 金琦 on 2017/10/25.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Operation;

typedef NS_ENUM(NSUInteger, MyOperationType) {
    MyOperationTypeAdd,
    MyOperationTypeSub,
    MyOperationTypeMul,
    MyOperationTypeDiv
};

@interface OperationFactory : NSObject

+(Operation *)createOperateWithType:(MyOperationType)type;

@end
