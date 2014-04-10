//
//  listViewController.m
//  MyFirstApp
//
//  Created by dairong on 2014/4/9.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "listViewController.h"


@interface listViewController ()

@end

@implementation listViewController

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
    _picture.profileID= _DetailModal[0];
    
    
    //request cover photo
    NSArray *permissionsNeeded = @[@"user_events"];
    
    // Request the permissions the user currently has
    [FBRequestConnection startWithGraphPath:@"/me/permissions"
                          completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
                              if (!error){
                                  NSDictionary *currentPermissions= [(NSArray *)[result data] objectAtIndex:0];
                                  NSLog(@"current permissions %@", currentPermissions);
                                  NSMutableArray *requestPermissions = [[NSMutableArray alloc] initWithArray:@[]];
                                  
                                  // Check if all the permissions we need are present in the user's current permissions
                                  // If they are not present add them to the permissions to be requested
                                  for (NSString *permission in permissionsNeeded){
                                      if (![currentPermissions objectForKey:permission]){
                                          [requestPermissions addObject:permission];
                                      }
                                  }
                                  
                                  // If we have permissions to request
                                  if ([requestPermissions count] > 0){
                                      // Ask for the missing permissions
                                      [FBSession.activeSession requestNewReadPermissions:requestPermissions
                                                                       completionHandler:^(FBSession *session, NSError *error) {
                                                                           if (!error) {
                                                                               // Permission granted
                                                                               NSLog(@"new permissions %@", [FBSession.activeSession permissions]);
                                                                               // We can request the user information
                                                                               [self makeRequestForUserEvents];
                                                                           } else {
                                                                               // An error occurred, we need to handle the error
                                                                               // Check out our error handling guide: https://developers.facebook.com/docs/ios/errors/
                                                                               NSLog(@"error %@", error.description);
                                                                           }
                                                                       }];
                                  } else {
                                      // Permissions are present
                                      // We can request the user information
                                      [self makeRequestForUserEvents];
                                  }
                                  
                              } else {
                                  // An error occurred, we need to handle the error
                                  // Check out our error handling guide: https://developers.facebook.com/docs/ios/errors/
                                  NSLog(@"error %@", error.description);
                              }
                          }];
    
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)makeRequestForUserEvents
{
    [FBRequestConnection startWithGraphPath:@"me?fields=cover.source"
                          completionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
                              if (!error) {
                                  // Success! Include your code to handle the results here
                                  NSLog([NSString stringWithFormat:@"user events: %@", result]);
                                  
                                  //NSDictionary *params = [self parseURLParams:result];
                                  //NSLog([NSString stringWithFormat:@"params: %@", params]);
                            //      _coverurl = [NSURL URLWithString:result[@"cover"][@"source"]];
                                  NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:result[@"cover"][@"source"]]];
                                  AFHTTPRequestOperation *requestOperation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
                                  requestOperation.responseSerializer = [AFImageResponseSerializer serializer];
                                  [requestOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
                                      NSLog(@"Response: %@", responseObject);
                                     _response = responseObject;
                                      [self.tableview reloadRowsAtIndexPaths:@[[NSIndexPath indexPathForItem:0 inSection:0]] withRowAnimation:UITableViewRowAnimationNone];
                                  } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                      NSLog(@"Image error: %@", error);
                                  }];
                                  [requestOperation start];
                                  
                                  
                                  
                              } else {
                                  // An error occurred, we need to handle the error
                                  // Check out our error handling guide: https://developers.facebook.com/docs/ios/errors/
                                  NSLog([NSString stringWithFormat:@"error %@", error.description]);
                              }
                          }];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
       return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *Cellidentifier = @"Cell";
    
    myCell *Cell = [tableView dequeueReusableCellWithIdentifier:Cellidentifier];
    if(!Cell){
        Cell = [[myCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Cellidentifier];
        Cell.coverphoto.image = _response;
    }
   
    return Cell;

}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
