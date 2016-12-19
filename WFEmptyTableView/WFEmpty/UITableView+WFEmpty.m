//
//  UITableView+WFEmpty.m
//  WFEmptyTableView
//
//  Created by wanawt on 2016/11/11.
//  Copyright © 2016年 wanawt. All rights reserved.
//

#import "UITableView+WFEmpty.h"
#import <objc/runtime.h>

static char UITableViewEmptyView;

@implementation UITableView (WFEmpty)

@dynamic emptyView;

- (UIView *)emptyView
{
    return objc_getAssociatedObject(self, &UITableViewEmptyView);
}

- (void)setEmptyView:(UIView *)emptyView
{
    [self willChangeValueForKey:@"HJEmptyView"];
    objc_setAssociatedObject(self, &UITableViewEmptyView,
                             emptyView,
                             OBJC_ASSOCIATION_ASSIGN);
    [self didChangeValueForKey:@"HJEmptyView"];
}


-(void)addEmptyViewWithImageName:(NSString*)imageName title:(NSString*)title
{
    if (!self.emptyView)
    {
        CGRect frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        UIImage* image = [UIImage imageNamed:imageName];
        NSString* text = title;
        
        UIView* noMessageView = [[UIView alloc] initWithFrame:frame];
        noMessageView.backgroundColor = [UIColor clearColor];
        
        UIImageView *carImageView = [[UIImageView alloc] initWithFrame:CGRectMake((frame.size.width-image.size.width)/2, 60, image.size.width, image.size.height)];
        [carImageView setImage:image];
        [noMessageView addSubview:carImageView];
        
        UILabel *noInfoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, frame.size.width, 20)];
        noInfoLabel.textAlignment = NSTextAlignmentCenter;
        noInfoLabel.textColor = [UIColor lightGrayColor];
        noInfoLabel.text = text;
        noInfoLabel.backgroundColor = [UIColor clearColor];
        noInfoLabel.font = [UIFont systemFontOfSize:20];
        [noMessageView addSubview:noInfoLabel];
        
        [self addSubview:noMessageView];
        
        self.emptyView = noMessageView;
    }
    
}

@end
