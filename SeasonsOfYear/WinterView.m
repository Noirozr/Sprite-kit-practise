//
//  WinterView.m
//  SeasonsOfYear
//
//  Created by Yongjia Liu on 14-4-7.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import "WinterView.h"

@implementation WinterView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        SKView *skview=[[SKView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [self addSubview:skview];
        
        WinterScene *winterScene=[WinterScene sceneWithSize:self.frame.size];
        winterScene.scaleMode=SKSceneScaleModeAspectFill;
        [skview presentScene:winterScene];
        
        UILabel *title=[[UILabel alloc]initWithFrame:CGRectMake( 30, 0, 300, 150)];
        title.text=@"小寒";
        title.font=[UIFont fontWithName:@"Helvetica" size:48];
        title.textColor=[UIColor whiteColor];
        [title setBackgroundColor:[UIColor clearColor]];
        [self addSubview:title];
        
        UILabel *intro=[[UILabel alloc]initWithFrame:CGRectMake(32,65, 700, 200)];
        intro.text=@"小寒，是二十四节气中的第二十三个节气，每年在1月5-7日之间，太阳位于黄经285°。对于中国而言，这时正值“三九”前后，小寒标志着开始进入一年中最寒冷的日子。\n《月令七十二候集解》：「十二月节，月初寒尚小，故云，月半则大矣。」\n根据中国的气象资料，小寒是气温最低的节气，只有少数年份的大寒气温低于小寒的。";
        intro.font=[UIFont fontWithName:@"Helvetica" size:18];
        intro.lineBreakMode=NSLineBreakByWordWrapping;
        intro.numberOfLines=0;
        intro.textColor=[UIColor whiteColor];
        [intro setBackgroundColor:[UIColor clearColor]];
        [self addSubview:intro];
        UILabel *subTitleName=[[UILabel alloc]initWithFrame:CGRectMake(32,200,300,100)];
        subTitleName.textColor=[UIColor whiteColor];
        subTitleName.font=[UIFont fontWithName:@"Helvetica" size:28];
        subTitleName.text=@"物候";
        [subTitleName setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subTitleName];
        
        UILabel *subContentName=[[UILabel alloc]initWithFrame:CGRectMake(32,270,700,100)];
        subContentName.textColor=[UIColor whiteColor];
        subContentName.font=[UIFont fontWithName:@"Helvetica" size:18];
        subContentName.text=@"雁北乡：乡，向导之义，二阳之候，雁将避热而回，今则乡北飞之，至立春后皆归矣，禽鸟得气之先故也。\n鹊始巢：鹊，喜鹊也；巢之门，每向太岁，冬至天元之始至，后二阳已得来年之节气，鹊遂可为巢，知所向也。\n雉始雊：雉，文明之禽，阳鸟也；雊，雌雄之同鸣也，感于阳而后有声。";
        subContentName.lineBreakMode=NSLineBreakByWordWrapping;
        subContentName.numberOfLines=0;
        [subContentName setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subContentName];
        
        UILabel *subTitleWuHou=[[UILabel alloc]initWithFrame:CGRectMake(32,350,300,100)];
        subTitleWuHou.textColor=[UIColor whiteColor];
        subTitleWuHou.font=[UIFont fontWithName:@"Helvetica" size:28];
        subTitleWuHou.text=@"谚语";
        [subTitleWuHou setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subTitleWuHou];
        
        UILabel *subContentWuhou=[[UILabel alloc]initWithFrame:CGRectMake(32,380,700,400)];
        subContentWuhou.textColor=[UIColor whiteColor];
        subContentWuhou.font=[UIFont fontWithName:@"Helvetica" size:18];
        subContentWuhou.text=@"小寒大寒不下雪，小暑大暑田开裂\n小寒大寒，冷成冰团\n小寒不寒，清明泥潭\n小寒大寒寒得透，来年春天天暖和\n小寒正处三九前后，俗话说：“冷在三九”，其严寒程度也就可想而知了，各地流行的气象谚语，可做佐证。如华北一带有“小寒大寒，滴水成冰”的说法，江南一带有“小寒大寒，冷成冰团”的说法。每年的大寒小寒虽说寒冷，但寒冷的情况也不尽相同。有的年份小寒不是很冷，这往往预示大寒要冷，广西群众有“小寒不寒寒大寒”的谚语。\n根据小寒的冷暖情况预示未来天气的谚语不少。如“小寒天气热，大寒冷莫说”、“小寒不寒，清明泥潭”、“小寒大寒寒得透，来年春天天暖和”、“小寒暖，立春雪”、“小寒寒，惊蛰暖”等。\n根据小寒节气阴雨（雪）情况，预示未来天气的谚语有： “小寒蒙蒙雨，雨水还冻秧”、“小寒雨蒙蒙，雨水惊蛰冻死秧”。\n群众在多年的实践中，总结了小寒大寒与小暑大暑的天气对应关系。如湖南省的“小寒大寒不下雪，小暑大暑田开裂”，山东省的“小寒无雨，小暑必旱”等。";
        subContentWuhou.lineBreakMode=NSLineBreakByWordWrapping;
        subContentWuhou.numberOfLines=0;
        [subContentWuhou setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subContentWuhou];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
