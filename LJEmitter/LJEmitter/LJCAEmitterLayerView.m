//
//  LJCAEmitterLayerView.m
//  LJEmitter
//
//  Created by ZKMAC on 17/11/21.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import "LJCAEmitterLayerView.h"

@interface LJCAEmitterLayerView (){
    
    CAEmitterLayer * _emitterLayer;
    
}

@end

@implementation LJCAEmitterLayerView

+(Class)layerClass{
    return [CAEmitterLayer class];
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _emitterLayer = (CAEmitterLayer *)self.layer;
    }
    return self;
}

-(void)setEmitterLayer:(CAEmitterLayer *)layer
{
    _emitterLayer = layer;
}
-(CAEmitterLayer*)emitterLayer
{
    return _emitterLayer;
}

-(void)show{
    
}
-(void)hide
{
    
}

@end
