//
//  LJSnowView.m
//  LJEmitter
//
//  Created by ZKMAC on 17/11/21.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import "LJSnowView.h"

@implementation LJSnowView



-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
-(void)setup{
    
    self.emitterLayer.masksToBounds = YES;
    self.emitterLayer.emitterShape = kCAEmitterLayerLine;
    self.emitterLayer.emitterMode = kCAEmitterLayerSurface;
    self.emitterLayer.emitterSize = self.frame.size;
    self.emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width/2.f, -20);
}
-(void)show
{
    CAEmitterCell * snowFlak1 = [self creatEmitterCellWithImage:@"shuye1.png"];
     CAEmitterCell * snowFlak2 = [self creatEmitterCellWithImage:@"shuye2.png"];
    
    self.emitterLayer.emitterCells = @[snowFlak1,snowFlak2];
    
}

-(CAEmitterCell*)creatEmitterCellWithImage:(NSString *) image
{
    CAEmitterCell * snowFlak = [CAEmitterCell emitterCell];
    snowFlak.birthRate = 1.f;
    snowFlak.speed = 5.f;
    snowFlak.velocity = 2.f;
    snowFlak.velocityRange = 10.f;
    //y轴加速度
    snowFlak.yAcceleration = 2.f;
    snowFlak.emissionRange = 0.5 * M_PI;
    snowFlak.spinRange = 0.25 * M_PI;
    
    snowFlak.contents = (__bridge id _Nullable)([UIImage imageNamed:image].CGImage);
    //    snowFlak.color = [UIColor redColor].CGColor;
    snowFlak.lifetime = 180.f;
    snowFlak.scale = 0.5;
    snowFlak.scaleRange = 0.3;
    
    return snowFlak;
}







@end
