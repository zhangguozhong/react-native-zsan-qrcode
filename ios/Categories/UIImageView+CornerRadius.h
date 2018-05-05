//
//  UIImageView+CornerRadius.h
//  QRCode
//
//  Created by 张国忠 on 2018/5/5.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (CornerRadius)

- (instancetype)initWithCornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;

- (void)zy_cornerRadiusAdvance:(CGFloat)cornerRadius rectCornerType:(UIRectCorner)rectCornerType;

- (instancetype)initWithRoundingRectImageView;

- (void)zy_cornerRadiusRoundingRect;

- (void)zy_attachBorderWidth:(CGFloat)width color:(UIColor *)color;

@end
