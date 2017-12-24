//
//  ViewController.m
//  KVOStudy
//
//  Created by wangliang on 2017/8/30.
//  Copyright © 2017年 wangliang. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "NSObject+KVO.h"

@interface ViewController ()

@property(nonatomic,strong) Dog *dog;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Dog *dog=[[Dog alloc] init];
    
    
//    [dog addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
  
    //NSKVONotifying_Dog
    
    [dog aries_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
    _dog=dog;
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _dog.age++;

//    _dog -> _age++;
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"dogAge=%d",_dog.age);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
