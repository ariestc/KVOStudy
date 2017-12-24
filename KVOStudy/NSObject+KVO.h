//
//  NSObject+KVO.h
//  KVOStudy
//
//  Created by wangliang on 2017/8/30.
//  Copyright © 2017年 wangliang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)
- (void)aries_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;

@end
