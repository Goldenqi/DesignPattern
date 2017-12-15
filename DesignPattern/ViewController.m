//
//  ViewController.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/25.
//  Copyright © 2017年 JinQi. All rights reserved.
//  2017年12月14日23:41:45
//  2017年12月15日10:39:46
//  2017年12月15日16:38:17

#import "ViewController.h"
/*---------简单工厂--------*/
#import "Operation.h"
#import "OperationFactory.h"
/*---------策略模式--------*/
#import "CrashContext.h"
/*---------装饰模式--------*/
#import "Decorator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self easyFactory];
    [self strategyPattern];
    [self decoratorPattern];
}

-(void)easyFactory{
    Operation *oper = [OperationFactory createOperateWithType:MyOperationTypeDiv];
    oper.numberA = 3;
    oper.numberB = 6;
    NSLog(@"easyFactory result = %f",[oper getResult]);
}

-(void)strategyPattern{
    CrashContext *context = [[CrashContext alloc] init];
    [context crashContextWithType:AcceptCrashTypeReturn];
    NSLog(@"原价600，返现实收：%f",[context getResult:600]);
    
    [context crashContextWithType:AcceptCrashTypeRebate];
    NSLog(@"原价600，打折实收：%f",[context getResult:600]);
}

-(void)decoratorPattern{
    Cat *cat = [[Cat alloc] initWithName:@"小白"];
    NSLog(@"第一种装扮：");
    TShirts *tshirts = [[TShirts alloc] init];
    Trouser *trouser = [[Trouser alloc] init];
    Hat *hat = [[Hat alloc] init];
    Bag *bag = [[Bag alloc] init];
    
    [tshirts decorate:cat];
    [trouser decorate:tshirts];
    [hat decorate:trouser];
    [bag decorate:hat];
    [bag show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
