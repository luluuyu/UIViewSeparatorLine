//
//  UIView+Extension.m
//
//  Created by AS on 14-10-7.
//  Copyright (c) 2014年 AS. All rights reserved.
//

#import "UIView+ASSeparatorLine.h"
#import <objc/runtime.h>
#import <objc/objc.h>
#import <Masonry/Masonry.h>

@implementation UIView (ASSeparatorLine)

static char ASTopSeparatorLineKey;
static char ASBottomSeparatorLineKey;
static char ASRightSeparatorLineKey;


- (void)as_showTopSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color {
    [self as_showTopSeparator:show height:height color:color leftMargin:0 rightMargin:0];
}

- (void)as_showTopSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color leftMargin:(float)left rightMargin:(float)right {
    UIView *topSpearator = objc_getAssociatedObject(self, &ASTopSeparatorLineKey);
    if (topSpearator == nil) {
        topSpearator = [[UIView alloc] init];
    }
    topSpearator.backgroundColor = color;
    objc_setAssociatedObject(self, &ASTopSeparatorLineKey, topSpearator, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addSubview:topSpearator];
    [topSpearator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo (0.0f);
        make.left.mas_equalTo (left);
        make.right.mas_equalTo (right);
        make.height.mas_equalTo(height);
    }];
}

- (void)as_showMiddleVerticalSeparator:(BOOL)show width:(CGFloat)width color:(UIColor *)color topMargin:(float)top bottomMargin:(float)bottom centerX:(float)centerX {
    UIView *spearator = objc_getAssociatedObject(self, &ASTopSeparatorLineKey);
    if (spearator == nil) {
        spearator = [[UIView alloc] init];
    }
    spearator.backgroundColor = color;
    objc_setAssociatedObject(self, &ASTopSeparatorLineKey, spearator, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self addSubview:spearator];
    [spearator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo (0.0f);
        make.centerY.mas_equalTo (0.0f);
        make.width.mas_equalTo (width);
        make.top.mas_equalTo(top);
        make.bottom.mas_equalTo(bottom);
    }];
}

- (void)as_showBottomSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color leftMargin:(float)left rightMargin:(float)right bottom:(float)bottom {
    UIView *bottomSpearator = objc_getAssociatedObject(self, &ASBottomSeparatorLineKey);
    if (bottomSpearator == nil) {
        bottomSpearator = [[UIView alloc] init];
    }
    [self addSubview:bottomSpearator];
    bottomSpearator.backgroundColor = color;
    objc_setAssociatedObject(self, &ASBottomSeparatorLineKey, bottomSpearator, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [bottomSpearator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo (bottom);
        make.left.mas_equalTo (left);
        make.right.mas_equalTo (right);
        make.height.mas_equalTo(1/[UIScreen mainScreen].scale);
    }];
}

- (void)as_showBottomSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color {
    [self as_showBottomSeparator:show height:height color:color leftMargin:0  rightMargin:0 bottom:0];
}

- (void)as_showRightSeparator:(BOOL)show width:(CGFloat)width color:(UIColor *)color topMargin:(float)top bottomMargin:(float)bottom {
    UIView *bottomSpearator = objc_getAssociatedObject(self, &ASRightSeparatorLineKey);
    if (bottomSpearator == nil) {
        bottomSpearator = [[UIView alloc] init];
    }
    [self addSubview:bottomSpearator];
    bottomSpearator.hidden = !show;
    bottomSpearator.backgroundColor = color;
    objc_setAssociatedObject(self, &ASRightSeparatorLineKey, bottomSpearator, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [bottomSpearator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo (bottom);
        make.top.mas_equalTo (top);
        make.right.mas_equalTo (-width);
        make.width.mas_equalTo(width);
    }];
}

@end



