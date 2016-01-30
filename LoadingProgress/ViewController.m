//
//  ViewController.m
//  LoadingProgress
//
//  Created by lidp on 16/1/29.
//  Copyright © 2016年 lidp. All rights reserved.
//

#import "ViewController.h"
#import "LoadingProgressView.h"

@interface ViewController ()

@end

@implementation ViewController{
    LoadingProgressView     *_progressView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _progressView = [[LoadingProgressView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    _progressView.center = self.view.center;
    [self.view addSubview:_progressView];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    slider.center = CGPointMake(self.view.center.x, 60);
    slider.minimumValue = 0.0;
    slider.maximumValue = 1.0;
    slider.value = 0;
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];
}

-(void)changeValue:(UISlider *)slider{
    _progressView.progress = slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
