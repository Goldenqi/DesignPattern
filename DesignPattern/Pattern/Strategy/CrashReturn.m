//
//  CrashReturn.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/26.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "CrashReturn.h"

@interface CrashReturn()

@property (nonatomic, assign) float moneyCondition;
@property (nonatomic, assign) float moneyReturn;

@end

@implementation CrashReturn

-(instancetype)initWithMoneyCondition:(float)condition moneyReturn:(float)moneyReturn{
    self = [super init];
    if (self) {
        self.moneyCondition = condition;
        self.moneyReturn = moneyReturn;
    }
    return self;
}

-(float)acceptCrash:(float)money{
    float result = money;
    if (money >= self.moneyCondition) {
        result = money - fls(money / self.moneyCondition) * self.moneyReturn;
    }
    return result;
}

@end
