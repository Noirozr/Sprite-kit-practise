//
//  baseViewController.m
//  SeasonsOfYear
//
//  Created by Yongjia Liu on 14-4-1.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import "baseViewController.h"
#import  "SpringView.h"
@interface baseViewController ()

@end

@implementation baseViewController
{
    float width;
    float height;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)doPinch:(UIPinchGestureRecognizer *)recognizer
{
    if (recognizer.state==UIGestureRecognizerStateBegan) {
        
    }else{
        self.view.transform=CGAffineTransformMakeScale(1, recognizer.scale);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    width=self.view.frame.size.width;
    height=self.view.frame.size.height;
    UIScrollView *scrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    self.springView=[[SpringView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.winterView=[[WinterView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    UIPinchGestureRecognizer *recognizer=[[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(doPinch:)];
    [scrollView setShowsVerticalScrollIndicator:NO];
    [self.springView addGestureRecognizer:recognizer];
    [self.view addSubview:scrollView];
    //[self.view addSubview:self.springView];
    [self.view addSubview:self.winterView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch = [touches anyObject];
//    //定义一个UITouch类型的变量touch，用于标记任何的触摸点
//    
//    self.startPoint = [touch locationInView:self.view];
//    //将开始触摸屏幕时的坐标设置为当前的touch所在的位置
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
