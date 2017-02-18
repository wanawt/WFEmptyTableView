//
//  WFEmptyTableView.h
//  WFEmptyTableView
//
//  Created by wanawt on 2016/11/11.
//  Copyright © 2016年 wanawt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Const.h"

@interface WFEmptyTableView : UITableView

@property (nonatomic, assign) BOOL showEmptyTipView; // 是否显示背景提示文字
@property (nonatomic, assign) NSInteger vOffset;
@property (nonatomic, copy) NSString *tipString;     // 提示文字
@property (nonatomic, copy) NSString *tipImageName;  // 提示图片
@property (nonatomic, retain) UIFont *customFont;       // 字体大小

@end
