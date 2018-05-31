//
//  LJCAEmitterLayerView.h
//  LJEmitter
//
//  Created by ZKMAC on 17/11/21.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LJCAEmitterLayerView : UIView

-(void)setEmitterLayer:(CAEmitterLayer*)layer;

-(CAEmitterLayer*)emitterLayer;

//显示出当前view
-(void)show;

//隐藏
-(void)hide;

@end
