//
//  WinterScene.m
//  SeasonsOfYear
//
//  Created by Yongjia Liu on 14-4-7.
//  Copyright (c) 2014年 Yongjia Liu. All rights reserved.
//

#import "WinterScene.h"

@implementation WinterScene
-(id)initWithSize:(CGSize)size
{
    if (self=[super initWithSize:size]) {
        //[self addChild:[self newExplosionSnow:self.frame.size.width :self.frame.size.height]];
        [self addChild:[self newExplosionSnow:self.frame.size.width*3/4 :self.frame.size.height]];
        //[self addChild:[self newExplosionSnow:self.frame.size.width/2 :self.frame.size.height]];
        [self addChild:[self newExplosionSnow:self.frame.size.width/4 :self.frame.size.height]];
        [self addChild:[self newExplosionSnow:0 :self.frame.size.height]];
        
        [self setBackgroundColor:[SKColor colorWithRed:0.15 green:0.54 blue:0.65 alpha:1]];
    }
    return self;
}
-(SKEmitterNode *)newExplosionSnow:(float)posX : (float)posY
{
    SKEmitterNode *emitter=[NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:@"SnowParticle" ofType:@"sks"] ];
    emitter.particlePosition=CGPointMake(posX, posY);
    emitter.name=@"explosionSnow";
    emitter.numParticlesToEmit=0;
    emitter.particleZPositionRange=15;
    emitter.particleColor=[SKColor whiteColor];
    emitter.particleSize=CGSizeMake(22, 35.5);
    //emitter.particleLifetime=10;
    return emitter;
}
@end
