//
//  ViewController.m
//  testSnap
//
//  Created by xy on 2019/3/14.
//  Copyright © 2019年 xy. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "UIView+SnapImage.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *useView;
@property (weak, nonatomic) IBOutlet UIImageView *useImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *useImage = [self.useView getSnapImage];
    self.useImageView.image = useImage;
    
}



@end
