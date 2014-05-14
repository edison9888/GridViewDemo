//
//  JHDemoViewController.h
//  GridViewDemo
//
//  Created by 流星 on 14-5-14.
//  Copyright (c) 2014年 流星. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHGridTableView.h"
@interface JHDemoViewController : UIViewController<JHGridTableViewDatasource,JHGridTableViewDelegate>
{
    JHGridTableView *gridTableView;
}
@end
