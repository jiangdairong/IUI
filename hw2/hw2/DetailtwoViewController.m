//
//  DetailtwoViewController.m
//  hw2
//
//  Created by dairong on 2014/3/10.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "DetailtwoViewController.h"

@interface DetailtwoViewController ()

@end

@implementation DetailtwoViewController

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
    [_scroller setScrollEnabled:YES];
    [_scroller setContentSize:CGSizeMake(320, 810)];
    
    _navi.title=_DetailModal[0];
    
    if([_navi.title isEqualToString:@"推薦書籍"]){
        image1.image = [UIImage imageNamed:@"b3.jpeg"];
        image2.image = [UIImage imageNamed:@"e2.jpeg"];
        image3.image = [UIImage imageNamed:@"e3.jpeg"];
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
