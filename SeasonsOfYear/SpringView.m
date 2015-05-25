//
//  SprintView.m
//  SeasonsOfYear
//
//  Created by Yongjia Liu on 14-4-5.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import "SpringView.h"
#import <SpriteKit/SpriteKit.h>
#import "SpringScene.h"
@implementation SpringView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        SKView *skview=[[SKView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [self addSubview:skview];
        
        SpringScene *springScene=[SpringScene sceneWithSize:self.frame.size];
        springScene.scaleMode=SKSceneScaleModeAspectFill;
        [skview presentScene:springScene];
        
        UILabel *title=[[UILabel alloc]initWithFrame:CGRectMake( 30, 0, 300, 150)];
        title.text=@"惊蛰";
        title.font=[UIFont fontWithName:@"Helvetica" size:48];
        title.textColor=[UIColor whiteColor];
        [title setBackgroundColor:[UIColor clearColor]];
        [self addSubview:title];
        
        UILabel *intro=[[UILabel alloc]initWithFrame:CGRectMake(32,65, 700, 200)];
        intro.text=@"惊蛰，古代中国与现代日本称“启蛰”，是二十四节气中第三个节气，指太阳到达黄经345°时，在公历每年3月5日或3月6日。《月令七十二候集解》：「二月节……万物出乎震，震为雷，故曰惊蛰，是蛰虫惊而出走矣。」这时天气转暖，渐有春雷，动物入冬藏伏土中，不饮不食，称为“蛰”，而“惊蛰”即上天以打雷惊醒蛰居动物的日子。这时中国大部分地区进入春耕季节。";
        intro.font=[UIFont fontWithName:@"Helvetica" size:18];
        intro.lineBreakMode=NSLineBreakByWordWrapping;
        intro.numberOfLines=0;
        intro.textColor=[UIColor whiteColor];
        [intro setBackgroundColor:[UIColor clearColor]];
        [self addSubview:intro];
        UILabel *subTitleName=[[UILabel alloc]initWithFrame:CGRectMake(32,200,300,100)];
        subTitleName.textColor=[UIColor whiteColor];
        subTitleName.font=[UIFont fontWithName:@"Helvetica" size:28];
        subTitleName.text=@"名称";
        [subTitleName setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subTitleName];
        
        UILabel *subContentName=[[UILabel alloc]initWithFrame:CGRectMake(32,270,700,100)];
        subContentName.textColor=[UIColor whiteColor];
        subContentName.font=[UIFont fontWithName:@"Helvetica" size:18];
        subContentName.text=@"该节气在历史上原本被称为「启蛰」，本意为蛰虫开始活动。《夏小正》曰：「正月启蛰」。在现在的汉字文化圈中，日本仍然使用「啓蛰」这个名称。汉朝第六代皇帝汉景帝的讳为「啓」，为了避讳而将「启」改为了当时发音不同但略近的「惊」字。但因为意思从「开始」变成了「惊醒」，时序略有不合，因此孟春正月的惊蛰与仲春二月节的「雨水」的顺序也被置换。同样的，「谷雨」与「清明」的顺次也被置换。";
        subContentName.lineBreakMode=NSLineBreakByWordWrapping;
        subContentName.numberOfLines=0;
        [subContentName setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subContentName];
        
        UILabel *subTitleWuHou=[[UILabel alloc]initWithFrame:CGRectMake(32,350,300,100)];
        subTitleWuHou.textColor=[UIColor whiteColor];
        subTitleWuHou.font=[UIFont fontWithName:@"Helvetica" size:28];
        subTitleWuHou.text=@"物候";
        [subTitleWuHou setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subTitleWuHou];
        
        UILabel *subContentWuhou=[[UILabel alloc]initWithFrame:CGRectMake(32,380,700,400)];
        subContentWuhou.textColor=[UIColor whiteColor];
        subContentWuhou.font=[UIFont fontWithName:@"Helvetica" size:18];
        subContentWuhou.text=@"桃始华：桃，果名，花色红，是月始开。\n仓庚鸣：仓庚，亦作鹒，黄鹂也。《诗》所谓「有鸣仓庚」是也。\n\t《章龟经》曰：「仓，清也；庚，新也。感春阳清新之气而初出，故名。」其名最多；\n\t《诗》曰「黄鸟」，齐人谓之「搏黍」，又谓之「黄袍」，僧家谓之「金衣公子」，其色鵹黑而黄，又名鵹黄，谚曰：「黄栗留黄莺」，莺儿皆一种也。\n鹰化为鸠：鹰，蛰鸟也，鹞鹯之属；鸠，即今之布谷。\n\t《章龟经》曰：「仲春之时，林木茂盛，又喙尚柔，不能捕鸟，瞪目忍饑，如痴而化，故名曰鸤鸠。」\n\t《王制》曰：「鸠化为鹰，秋时也。」此言鹰化为鸠，春时也。以生育肃杀气盛，故鸷鸟感之而变耳。\n\t孔氏曰：「化者，反归旧形之谓。」故鹰化为鸠，鸠复化为鹰，如田鼠化为鴽，则鴽又化为田鼠；\n\t若「腐草为萤」，「雉为蜃」，「爵为蛤」，皆不言化，是不再复本形者也。";
        subContentWuhou.lineBreakMode=NSLineBreakByWordWrapping;
        subContentWuhou.numberOfLines=0;
        [subContentWuhou setBackgroundColor:[UIColor clearColor]];
        [self addSubview:subContentWuhou];// Initialization code
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
