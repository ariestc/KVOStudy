//
//  NSObject+KVO.m
//  KVOStudy
//
//  Created by wangliang on 2017/8/30.
//  Copyright © 2017年 wangliang. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/runtime.h>
#import "NSKVONotifying_Dog.h"

@implementation NSObject (KVO)

-(void)aries_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context
{
    object_setClass(self, [NSKVONotifying_Dog class]);
    
    objc_setAssociatedObject(self, @"ariesObserve", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    /*
        KVO本质就是去判断是否调用了一个对象的set方法
        KVO底层实现:
        1.动态创建Dog的子类NSKVONotifying_Dog
        2.修改当前对象的isa指针为NSKVONotifying_Dog
        3.调用对象的set方法，即调用NSKVONotifying_Dog的set方法
        4.重写NSKVONotifying_Dog的set方法:
            1>[super set]
            2>通知观察者属性改变
     */
    
}
@end
