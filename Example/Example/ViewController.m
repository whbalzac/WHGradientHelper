//
//  ViewController.m
//  Example
//
//  Created by whbalzac on 3/20/17.
//  Copyright © 2017 whbalzac. All rights reserved.
//

#import "ViewController.h"
#import "WHGradientHelper.h"
#import "Globals.h"
#import "Masonry.h"
#import "MoreViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //navigation
    [self.navigationController.navigationBar setBackgroundImage:[WHGradientHelper getLinearGradientImage:kColor1 and:kColor2 directionType:WHLinearGradientDirectionLevel option:CGSizeMake(375, 64)] forBarMetrics:UIBarMetricsDefault];
    
    //   Linear Gradient
    
    UIImageView *image000 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 40, 200, 44)];
    image000.layer.masksToBounds = YES;
    image000.layer.cornerRadius = 22;
    image000.image = [WHGradientHelper getLinearGradientImage:kColor3 and:kColor4 directionType:WHLinearGradientDirectionLevel];
    [self.view addSubview:image000];
    
    UIImageView *image111 = [[UIImageView alloc] initWithFrame:CGRectMake(300, 40, 44, 200)];
    image111.layer.masksToBounds = YES;
    image111.layer.cornerRadius = 22;
    image111.image = [WHGradientHelper getLinearGradientImage:kColor5 and:kColor6 directionType:WHLinearGradientDirectionVertical];
    [self.view addSubview:image111];
    
    UIImageView *image222 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 100, 200, 100)];
    image222.image = [WHGradientHelper getLinearGradientImage:kColor7 and:kColor8 directionType:WHLinearGradientDirectionUpwardDiagonalLine];
    [self.view addSubview:image222];
    
    UIImageView *image333 = [[UIImageView alloc] initWithFrame:CGRectMake(30, 240, 200, 100)];
    image333.image = [WHGradientHelper getLinearGradientImage:[UIColor blackColor] and:[UIColor whiteColor] directionType:WHLinearGradientDirectionDownDiagonalLine];
    [self.view addSubview:image333];
    
    //    Radial Gradient
    UIImageView *imgViewLeft = [[UIImageView alloc] initWithFrame:CGRectMake(60, 440, 80, 80)];
    imgViewLeft.image = [WHGradientHelper getRadialGradientImage:kColor1 and:kColor2];
    [self.view addSubview:imgViewLeft];
    
    UIImageView *imgViewRight = [[UIImageView alloc] initWithFrame:CGRectMake(235, 440, 80, 80)];
    imgViewRight.image = [WHGradientHelper getRadialGradientImage:kColor1 and:kColor2];
    [self.view addSubview:imgViewRight];
    
    UIImageView *imgViewMiddle = [[UIImageView alloc] initWithFrame:CGRectMake(180, 510, 15, 15)];
    imgViewMiddle.image = [WHGradientHelper getRadialGradientImage:kColor1 and:kColor2];
    [self.view addSubview:imgViewMiddle];
    
    
    //   ChromatoAnimation
    UIImageView *imageView2 = [[UIImageView alloc] init];
    imageView2.layer.masksToBounds = YES;
    imageView2.layer.cornerRadius = 22;
    
    [self.view addSubview:imageView2];
    [imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).offset(50);
        make.centerX.mas_equalTo(self.view);
        make.height.mas_equalTo(44);
        make.bottom.mas_equalTo(self.view.mas_bottom).offset(-30);
    }];
    
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];

    [WHGradientHelper addGradientChromatoAnimation:imageView2];
    
    
    //more
    UIButton *moreBtn = [[UIButton alloc] initWithFrame:CGRectMake(300, 320, 64, 64)];
    [moreBtn setTitle:@"More" forState:UIControlStateNormal];
    [moreBtn setBackgroundImage:[WHGradientHelper getRadialGradientImage:kColor1 and:kColor2] forState:UIControlStateNormal];
    [moreBtn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:moreBtn];
    
}

#pragma mark - buttonAction
- (void)btnAction
{
    MoreViewController *moreVC =[[MoreViewController alloc] init];
    
    [self presentViewController:moreVC animated:YES completion:nil];
}



@end
