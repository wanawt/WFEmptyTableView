//
//  ViewController.h
//  WFEmptyTableView
//
//  Created by wanawt on 2016/11/11.
//  Copyright © 2016年 wanawt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFEmptyTableView.h"
#import "UITableView+WFEmpty.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

//@property (nonatomic) WFEmptyTableView *tableView;
@property (nonatomic) UITableView *tableView;
@property (nonatomic) NSMutableArray *dataArray;

@end

