//
//  UITableView+WFEmpty.h
//  WFEmptyTableView
//
//  Created by wanawt on 2016/11/11.
//  Copyright © 2016年 wanawt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (WFEmpty)

@property (nonatomic, strong, readonly) UIView *emptyView;

-(void)addEmptyViewWithImageName:(NSString*)imageName title:(NSString*)title;

@end
