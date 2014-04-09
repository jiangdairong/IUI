//
//  listViewController.h
//  MyFirstApp
//
//  Created by dairong on 2014/4/9.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
@interface listViewController : UIViewController
@property (strong, nonatomic) IBOutlet FBProfilePictureView *picture;
@property(strong,nonatomic) NSArray *DetailModal;
@end
