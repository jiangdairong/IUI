//
//  StartViewController.m
//  homework1
//
//  Created by dairong on 2014/3/2.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:[UIImage imageNamed:@"1.jpg"]];
    [array addObject:[UIImage imageNamed:@"2.jpg"]];
    [array addObject:[UIImage imageNamed:@"3.jpg"]];
    [array addObject:[UIImage imageNamed:@"4.jpg"]];
    [array addObject:[UIImage imageNamed:@"5.jpg"]];
    [array addObject:[UIImage imageNamed:@"7.jpg"]];

    
    self.myImg.animationImages = array;
    
    self.myImg.animationDuration = 12;
    
    self.myImg.animationRepeatCount = 3;
    
    [self.myImg startAnimating];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
