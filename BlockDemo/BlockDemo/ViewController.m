//
//  ViewController.m
//  BlockDemo
//
//  Created by 陈向阳 on 16/1/18.
//  Copyright © 2016年 陈向阳. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //3.实现block
    self.block1 = ^(){
        NSLog(@"我的无参无返回值的block");
    };
    
   
    //有参无返回
    self.block2 = ^(NSString * value)
    {
        
        NSLog(@"有参无返回值%@",value);
    };
    
    //有参有返回值
    
    self.block3 = ^NSString *(NSString *str)
    {
        
        return str;
        
    };
    
    //无参有返回值
    
    self.block4 = ^()
    {
        NSLog(@"无参有返回值");
        return @"无参有返回值";
        
    };
    

}


#pragma mark 无参无返回值
- (IBAction)block1Action:(UIButton *)sender {
    
//    self.block1();
    
    [self whatDoyouwantToEat:^{
        
        //操作（加载 刷新）
    }];
    
}


#pragma mark 有参无返回值
- (IBAction)block2Action:(UIButton *)sender {
    
//    self.block2(@"陈向阳");
    
    [self areYouHungry:^(NSString *str) {
        
        
        //操作 （显示用户名 显示密码 参数用来提供信息）
    }];
}

#pragma mark 有参有返
- (IBAction)block3Action:(UIButton *)sender {
    
   NSString * result =  self.block3(@"吃饭");
    
}


#pragma mark 无参有返
- (IBAction)block4Action:(UIButton *)sender {
    
    //必须执行此段代码 
    [self isTimeToWakeUp:^NSString *{
        
        return @"xiangyang";
    }];
    
//   NSString *result = self.block4();
}

#pragma mark 方法实现
-(void)isTimeToWakeUp:(NSString *(^)())name
{
      //2.实现起床
     //你让我起床
     //睁开眼
     //穿衣服
    
     //3.我起床了 告诉你 name()
    
    //6.收到对方的回复
    NSString *str =  name();
    
    
    
    NSLog(@"你上完厕所没有？回答：%@",str);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
