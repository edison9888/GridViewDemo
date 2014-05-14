//
//  JHDemoViewController.m
//  GridViewDemo
//
//  Created by 流星 on 14-5-14.
//  Copyright (c) 2014年 流星. All rights reserved.
//

#import "JHDemoViewController.h"

@interface JHDemoViewController ()
{
    NSMutableArray *mArray;
}
@end

@implementation JHDemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"添加5条数据" style:UIBarButtonItemStyleDone target:self action:@selector(reload)];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    mArray = [[NSMutableArray alloc]init];
    for(int i=0;i<5;i++){
        [mArray addObject:@"1.jpg"];
    }

    gridTableView = [[JHGridTableView alloc]initWithFrame:CGRectMake(0, 0, 320, 400)];
    gridTableView.delegate = self;
    gridTableView.datasource = self;
    [self.view addSubview:gridTableView];
    
    // Do any additional setup after loading the view.
}
- (void)reload{
    
    for(int i=0;i<5;i++){
        [mArray addObject:@"1.jpg"];
    }
    
    [gridTableView reloadData];
}
#pragma mark - JHGridTableViewControllerDatasource

- (NSInteger)numberOfGrids{
    
    return mArray.count;
}

- (UIImage *)imageAtIndex:(NSInteger)index{
    
    if(index >= mArray.count)
        return nil;
    else
        return [UIImage imageNamed:[mArray objectAtIndex:index]];
    
}

#pragma mark - JHGridTableViewControllerDelegate
- (void)gridTableView:(JHGridTableView *)gridTableView didSelectGridView:(JHGridView *)gridView{
    
    NSLog(@"点击的GridView:%@",gridView);
    NSLog(@"点击的Index:%d",gridView.index);
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
