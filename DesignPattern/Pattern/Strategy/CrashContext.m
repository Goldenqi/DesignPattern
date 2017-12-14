//
//  CrashContext.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/26.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "CrashContext.h"
//策略类
#import "CrashSuper.h"
#import "CrashNormal.h"
#import "CrashRebate.h"
#import "CrashReturn.h"

@interface CrashContext ()

@property (nonatomic, strong) CrashSuper *crashSuper;

@end

@implementation CrashContext

//借助简单工厂
-(void)crashContextWithType:(AcceptCrashType)type{
   
    switch (type) {
        case AcceptCrashTypeNormal:
            self.crashSuper = [[CrashNormal alloc] init];
            break;
        case AcceptCrashTypeRebate:
            self.crashSuper = [[CrashRebate alloc] initWithRebate:0.66];
            
            break;
        case AcceptCrashTypeReturn:
            self.crashSuper = [[CrashReturn alloc] initWithMoneyCondition:500 moneyReturn:100];
            break;
    }
}

-(float)getResult:(float)money{
    return [self.crashSuper acceptCrash:money];
}
@end
