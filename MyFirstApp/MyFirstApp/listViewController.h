//
//  listViewController.h
//  MyFirstApp
//
//  Created by dairong on 2014/4/9.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "AFNetworking.h"
#import "myCell.h"
#import "secondCell.h"
@interface listViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tableview;
@property (strong, nonatomic) IBOutlet FBProfilePictureView *picture;
@property(strong,nonatomic) NSArray *DetailModal;
@property(strong,nonatomic) NSArray *DetailBasic;
@property (strong, nonatomic) NSURL *coverurl;
@property (strong,nonatomic) id response;
@property (strong, nonatomic) IBOutlet UITextView *selectedFriendsView;
@property (retain, nonatomic) FBFriendPickerViewController *friendPickerController;

@property(nonatomic,strong)NSArray *TitleLabel;  

@end
