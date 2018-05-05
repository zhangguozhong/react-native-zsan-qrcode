//
//  RCTQRCodeView.m
//  QRCode
//
//  Created by 张国忠 on 2018/5/5.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#if __has_include(<React/RCTConvert.h>)
#import <React/RCTConvert.h>
#else
#import "RCTConvert.h"
#endif

#import "RCTQRCodeView.h"
#import "RCTZXing.h"
#import "UIImageView+CornerRadius.h"

@implementation RCTQRCodeView {
    UIImageView *_image;
    UIImageView *_logoImg;
}

-(void)setText:(NSString *)text
{
    _text = text;
    [self removeImage];
}
-(void)setSize:(int)size
{
    _size = size;
    [self removeImage];
}
-(void) setForecolor:(NSNumber *)forecolor
{
    _forecolor=forecolor;
    [self removeImage];
}
-(void) setBackcolor:(NSNumber *)backcolor
{
    _backcolor=backcolor;
    [self removeImage];
}
-(void) setLogo:(NSString *)logo
{
    _logo = logo;
    [self removeImage];
}
-(void) removeImage
{
    if (_image) {
        [_image removeFromSuperview];
    }
    if(_logoImg){
        [_logoImg removeFromSuperview];
    }
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    UIImage *image = [RCTZXing createQRWithString:_text QRSize:CGSizeMake(_size, _size) QRColor:[RCTConvert UIColor:_forecolor] bkColor:[RCTConvert UIColor:_backcolor]];
    _image = [[UIImageView alloc] init];
    [_image setImage:image];
    _image.frame = self.bounds;
    [self insertSubview:_image atIndex:0];
    if(_logo){
        CGSize logoSize=CGSizeMake(30, 30);
        UIImage *logoImg=[[UIImage alloc]initWithContentsOfFile:_logo];
        _logoImg = [self roundCornerWithImage:logoImg size:logoSize];
        _logoImg.bounds = CGRectMake(0, 0, logoSize.width, logoSize.height);
        _logoImg.center = CGPointMake(_size/2,_size/2);
        [self insertSubview:_logoImg atIndex:1];
    }
    
}
- (UIImageView*)roundCornerWithImage:(UIImage*)logoImg size:(CGSize)size
{
    //logo圆角
    UIImageView *backImage = [[UIImageView alloc] initWithCornerRadiusAdvance:6.0f rectCornerType:UIRectCornerAllCorners];
    backImage.frame = CGRectMake(0, 0, size.width, size.height);
    backImage.backgroundColor = [UIColor whiteColor];
    
    UIImageView *logImage = [[UIImageView alloc] initWithCornerRadiusAdvance:6.0f rectCornerType:UIRectCornerAllCorners];
    logImage.image =logoImg;
    CGFloat diff  =2;
    logImage.frame = CGRectMake(diff, diff, size.width - 2 * diff, size.height - 2 * diff);
    
    [backImage addSubview:logImage];
    
    return backImage;
}

@end
