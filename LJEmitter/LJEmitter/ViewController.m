//
//  ViewController.m
//  LJEmitter
//
//  Created by ZKMAC on 17/11/21.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import "ViewController.h"
#import "LJSnowView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self creatEmitter];
//    [self creatLJEmitter];
}
-(void)creatLJEmitter
{LJSnowView * snv = [[LJSnowView alloc] initWithFrame:CGRectMake(10, 0, [UIScreen mainScreen].bounds.size.width-20, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:snv];
    [snv show];
}
-(void)creatEmitter
{
    CAEmitterLayer * emtterLayer = [CAEmitterLayer layer];
    emtterLayer.frame = CGRectMake(100, 100, 100, 100);
    emtterLayer.borderWidth = 1.f;
    emtterLayer.emitterSize = self.view.frame.size;
    emtterLayer.emitterPosition = CGPointMake(100, 100);
    emtterLayer.emitterMode = kCAEmitterLayerSurface;
    //发射形状
    emtterLayer.emitterShape = kCAEmitterLayerRectangle;
    [self.view.layer addSublayer:emtterLayer];
    
    CAEmitterCell * cell = [CAEmitterCell emitterCell];
    cell.birthRate = 1.f;
    cell.lifetime = 120.f;
    cell.velocity = 10;
    cell.velocityRange = 3.f;
    cell.yAcceleration = 2.f;
    cell.emissionRange = 0.5 * M_1_PI;
//    cell.color = [UIColor redColor].CGColor;
    cell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"shuye1.png"].CGImage);
    
    
    CAEmitterCell * cell2 = [CAEmitterCell emitterCell];
    cell2.birthRate = 1.5f;
    cell2.lifetime = 110.f;
    cell2.velocity = 11;
    cell2.velocityRange = 3.f;
    cell2.yAcceleration = 2.5f;
    cell2.zAcceleration = 2.f;
    cell2.emissionRange = 0.6 * M_1_PI;
    
    cell2.contents = (__bridge id _Nullable)([UIImage imageNamed:@"shuye2.png"].CGImage);
    
    emtterLayer.emitterCells = @[cell,cell2];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
