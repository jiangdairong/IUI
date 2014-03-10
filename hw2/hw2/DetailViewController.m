//
//  DetailViewController.m
//  hw2
//
//  Created by dairong on 2014/3/8.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize scroller;
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
    
    [scroller setScrollEnabled:YES];
    [scroller setContentSize:CGSizeMake(320, 810)];

   
    _navi.title=_DetailModal[0];
    
    if([_navi.title isEqualToString:@"暢銷榜"]){
        image1.image = [UIImage imageNamed:@"a1.jpeg"];
        image2.image = [UIImage imageNamed:@"a2.jpg"];
        image3.image = [UIImage imageNamed:@"a3.jpeg"];
    }
    else if([_navi.title isEqualToString:@"新書榜"]){
        image1.image = [UIImage imageNamed:@"b1.jpeg"];
        image2.image = [UIImage imageNamed:@"b2.jpeg"];
        image3.image = [UIImage imageNamed:@"b3.jpeg"];
    }
    else if([_navi.title isEqualToString:@"週榜"]){
        image1.image = [UIImage imageNamed:@"a2.jpg"];
        image2.image = [UIImage imageNamed:@"b1.jpeg"];
        image3.image = [UIImage imageNamed:@"c3.jpeg"];
    }
    else if([_navi.title isEqualToString:@"月榜"]){
        image1.image = [UIImage imageNamed:@"d1.jpeg"];
        image2.image = [UIImage imageNamed:@"d2.jpeg"];
        image3.image = [UIImage imageNamed:@"a2.jpg"];
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)returnToFirstPage:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}

@end
