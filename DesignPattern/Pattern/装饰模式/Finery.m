//
//  Finery.m
//  DesignPattern
//
//  Created by 金琦 on 2017/11/1.
//  Copyright © 2017年 JinQi. All rights reserved.
//

#import "Finery.h"

@interface Finery ()

@property (nonatomic, strong) Cat *cat;
@end

@implementation Finery

-(void)decorate:(Cat *)cat{
    self.cat = cat;
}

-(void)show{
    if (self.cat != nil) {
        [self.cat show];
    }
}

@end
