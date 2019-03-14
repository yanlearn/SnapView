//
//  UIView+SnapImage.m
//  testSnap
//
//  Created by xy on 2019/3/14.
//  Copyright © 2019年 xy. All rights reserved.
//

#import "UIView+SnapImage.h"
#import <QuartzCore/QuartzCore.h>
@implementation UIView (SnapImage)

- (UIImage *)getSnapImage {
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, [UIScreen mainScreen].scale);
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *returnImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return returnImage;
}
@end
