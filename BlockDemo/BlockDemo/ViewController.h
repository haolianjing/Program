//
//  ViewController.h
//  BlockDemo
//
//  Created by 陈向阳 on 16/1/18.
//  Copyright © 2016年 陈向阳. All rights reserved.
//
#import <UIKit/UIKit.h>

/**1.
 *声明一个block
 *关键字 typedef （^）
 **/
//无参无返回
typedef void(^MyBlock)();

//有参无返回值
typedef void(^MyBlock2)(NSString * str);

//有参有返回值
typedef NSString *(^MyBlock3)(NSString *str);

//无参有返回值
typedef NSString *(^MyBlock4)();


@interface ViewController : UIViewController

//2.声明一个block属性 copy
@property(nonatomic, copy)MyBlock block1;

@property(nonatomic, copy)MyBlock2 block2;

@property(nonatomic, copy)MyBlock3 block3;

@property(nonatomic, copy)MyBlock4 block4;


//block 进阶 作为方法参数

//-(void)whatDoyouwantToEat:(MyBlock)food;

-(void)whatDoyouwantToEat:(void(^)())food;


//有参数 无返回值

-(void)areYouHungry:(void(^)(NSString * str))result;

//无参有返

-(void)isTimeToWakeUp:(NSString *(^)())name;

@end

