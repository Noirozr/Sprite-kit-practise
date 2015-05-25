//
//  baseViewController.h
//  SeasonsOfYear
//
//  Created by Yongjia Liu on 14-4-1.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpringView.h"
#import "WinterView.h"
@interface baseViewController : UIViewController
@property (nonatomic,strong) SpringView *springView;
@property (nonatomic,strong) WinterView *winterView;
@property (assign, nonatomic) CGPoint startPoint;
@end
