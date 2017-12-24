//
//  NSKVONotifying_Dog.m
//  KVOStudy
//
//  Created by wangliang on 2017/8/30.
//  Copyright © 2017年 wangliang. All rights reserved.
//

#import "NSKVONotifying_Dog.h"
#import <objc/runtime.h>

@implementation NSKVONotifying_Dog

-(void)setAge:(int)age
{
    [super setAge:age];
    
    //通知观察者
  id ariesObserve= objc_getAssociatedObject(self, @"ariesObserve");
    
    [ariesObserve observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
    
}

@end
