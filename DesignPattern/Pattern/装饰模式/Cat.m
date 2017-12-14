//
//  Cat.m
//  DesignPattern
//
//  Created by 金琦 on 2017/10/30.
//  Copyright © 2017年 JinQi. All rights reserved.
//
//  ConcreteComponent

#import "Cat.h"

@interface Cat ()

@property (strong, nonatomic) NSString *name;

@end

@implementation Cat

-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

-(void)show{
    NSLog(@"装扮的%@",self.name);
}

@end
