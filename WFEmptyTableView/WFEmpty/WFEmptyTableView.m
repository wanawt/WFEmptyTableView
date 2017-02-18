//
//  WFEmptyTableView.m
//  WFEmptyTableView
//
//  Created by wanawt on 2016/11/11.
//  Copyright © 2016年 wanawt. All rights reserved.
//

#import "WFEmptyTableView.h"

@implementation WFEmptyTableView {
    UIView *_customBackView;
    UIImageView *_tipImageView;
    UILabel *_label;
    CGRect _imageFrame;
    CGRect _labelFrame;
    double _scale;
}

- (WFEmptyTableView *)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    _customBackView = [[UIView alloc] initWithFrame:self.frame];
    
    _tipImageView = [[UIImageView alloc] initWithFrame:CGRectMake((kScreenWidth-200/2)/2, self.frame.size.height/3, 200/2, 200/2)];
    [_customBackView addSubview:_tipImageView];
    _imageFrame = _tipImageView.frame;
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_tipImageView.frame), kScreenWidth, 60)];
    
    _label.backgroundColor = [UIColor clearColor];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.textColor = [UIColor lightGrayColor];
    _label.font = [UIFont systemFontOfSize:16];
    _label.lineBreakMode = NSLineBreakByCharWrapping;
    _label.numberOfLines = 0;
    [_customBackView addSubview:_label];
    _labelFrame = _label.frame;
    
}

- (void)setShowEmptyTipView:(BOOL)showEmptyTipView {
    _showEmptyTipView = showEmptyTipView;
    if (showEmptyTipView) {
        [self addSubview:_customBackView];
    } else {
        [_customBackView removeFromSuperview];
    }
}

- (void)setTipString:(NSString *)tipString {
    _tipString = tipString;
    
    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:tipString];
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:15];
    [paragraphStyle1 setAlignment:NSTextAlignmentCenter];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [tipString length])];
    [_label setAttributedText:attributedString1];
    
    _label.frame = CGRectMake(CGRectGetMinX(_label.frame), CGRectGetMaxY(_tipImageView.frame), CGRectGetWidth(_label.frame), CGRectGetHeight(_label.frame));
}

- (void)setTipImageName:(NSString *)tipImageName {
    UIImage *image = [UIImage imageNamed:tipImageName];
    _tipImageView.image = image;
    
    _tipImageView.frame = CGRectMake(0, CGRectGetMinY(_tipImageView.frame), image.size.width, image.size.height);
    _tipImageView.center = CGPointMake(kScreenWidth / 2.0, _tipImageView.center.y);
    
    _label.frame = CGRectMake(CGRectGetMinX(_label.frame), CGRectGetMaxY(_tipImageView.frame), CGRectGetWidth(_label.frame), CGRectGetHeight(_label.frame));
}

- (void)setVOffset:(NSInteger)vOffset {
    _label.frame = CGRectMake(CGRectGetMinX(_label.frame), CGRectGetMinY(_label.frame)+vOffset, CGRectGetWidth(_label.frame), CGRectGetHeight(_label.frame));
    _tipImageView.frame = CGRectMake(CGRectGetMinX(_tipImageView.frame), CGRectGetMinY(_tipImageView.frame)+vOffset, CGRectGetWidth(_tipImageView.frame), CGRectGetHeight(_tipImageView.frame));
}

@end
