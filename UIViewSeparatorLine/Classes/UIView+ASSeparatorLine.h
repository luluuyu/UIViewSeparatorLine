//
//  UIView+Extension.h

//
//  Created by AS on 14-10-7.
//  Copyright (c) 2014年 AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ASSeparatorLine)

/** 上边线 */
- (void)as_showTopSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color;

/** 上边线 */
- (void)as_showTopSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color leftMargin:(float)left rightMargin:(float)right;

/** 中间竖线 */
- (void)as_showMiddleVerticalSeparator:(BOOL)show width:(CGFloat)width color:(UIColor *)color topMargin:(float)top bottomMargin:(float)bottom centerX:(float)centerX;

/** 下边线 */
- (void)as_showBottomSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color;

/** 下边线 */
- (void)as_showBottomSeparator:(BOOL)show height:(CGFloat)height color:(UIColor *)color leftMargin:(float)left rightMargin:(float)right bottom:(float)bottom;

/** 右边线 */
- (void)as_showRightSeparator:(BOOL)show width:(CGFloat)width color:(UIColor *)color topMargin:(float)top bottomMargin:(float)bottom;

@end
