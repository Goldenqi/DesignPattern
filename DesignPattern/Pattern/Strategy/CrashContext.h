//
//  CrashContext.h
//  DesignPattern
//
//  Created by 金琦 on 2017/10/26.
//  Copyright © 2017年 JinQi. All rights reserved.
//  维持对策略类的引用

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, AcceptCrashType) {
    AcceptCrashTypeNormal,
    AcceptCrashTypeReturn,
    AcceptCrashTypeRebate,
};

@interface CrashContext : NSObject

-(void)crashContextWithType:(AcceptCrashType)type;

-(float)getResult:(float)money;

@end
