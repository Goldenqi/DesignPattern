//
//  CrashRebate.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/26.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "CrashRebate.h"

@interface CrashRebate ()

@property (nonatomic, assign) float moneyRebate;


@end
@implementation CrashRebate

-(instancetype)initWithRebate:(float)rebate{
    self = [super init];
    if (self) {
        self.moneyRebate = rebate;
    }
    return self;
}

-(float)acceptCrash:(float)money{
    return money * self.moneyRebate;
}
@end
