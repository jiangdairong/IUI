//
//  ViewController.m
//  hw2
//
//  Created by dairong on 2014/3/7.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "ViewController.h"
#import "myCell.h"
#import "secondCell.h"
#import "DetailViewController.h"
#import "DetailtwoViewController.h"
#import "CollectionViewCell.h"
#import "CollectionView.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *array;
}
@synthesize mytableview;
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mytableview.delegate=self;
    self.mytableview.dataSource=self;
    
    _TitleLabel = @[@"排行榜",@"排行榜",@"排行榜",@"排行榜",@"推薦書籍"];
    
    _SubtitleLabel = @[@"暢銷榜",@"新書榜",@"週榜",@"月榜"];
    
    _image = @[@"rank.png",@"rank.png",@"rank.png",@"rank.png"];
   
    array = [[NSArray alloc]initWithObjects:@"b3.jpeg",@"e2.jpeg",@"e3.jpeg", nil];
   
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section)
    {
        case 0:
            return [_TitleLabel count]-1;
            break;
        case 1:
            return 1;
            break;
        default:
            break;
    }
    
    return 0;
    //return [_TitleLabel count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0){
        static NSString *Cellidentifier = @"Cell";

        myCell *Cell = [tableView dequeueReusableCellWithIdentifier:Cellidentifier];
        if(!Cell){
            Cell = [[myCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Cellidentifier];
        }
        int row = [indexPath row];
        Cell.TitleLabel.text = _TitleLabel [row];
        Cell.SubtitleLabel.text = _SubtitleLabel [row];
        Cell.imageView.image = [UIImage imageNamed:_image[row]];
        return Cell;
    }
    else{
        static NSString *Cellidentifier1 = @"cell";
        
        secondCell *cell = [tableView dequeueReusableCellWithIdentifier:Cellidentifier1];
        if(!cell){
            cell = [[secondCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Cellidentifier1];
        }
        int row = [indexPath row]+4;
        cell.TitleLabel.text = _TitleLabel [row];
        return cell;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"ShowDetails"]) {
        DetailViewController *detailviewcontroller = [segue destinationViewController];
        NSIndexPath *myindexPath = [self.mytableview indexPathForSelectedRow];
        int row = [myindexPath row];
        detailviewcontroller.DetailModal = @[_SubtitleLabel[row]];
    }
    
    else if ([segue.identifier isEqualToString:@"ShowDetails_1"]) {
        DetailtwoViewController *detailviewcontroller = [segue destinationViewController];
        NSIndexPath *myindexPath = [self.mytableview indexPathForSelectedRow];
        int row = [myindexPath row]+4;
        detailviewcontroller.DetailModal = @[_TitleLabel[row]];
    }

    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger n;
    switch (indexPath.section){
        case 0:
            n = 144;
            break;
        case 1:
            n = 250;
            break;

    }
    return n;
}

#pragma mark Collection View Methods
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [array count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellidentifier = @"Collect";
    CollectionViewCell *Collect = [collectionView dequeueReusableCellWithReuseIdentifier:cellidentifier forIndexPath:indexPath];

     Collect.image.image = [UIImage imageNamed:[array objectAtIndex:indexPath.item]];

    return Collect;
}

@end
