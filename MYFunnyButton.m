//
//  MYFunnyButton.m
//  mytestFrameWork
//
//  Created by 史志成 on 2020/7/24.
//

#import "MYFunnyButton.h"
#import "UIImage+Library.h"

@implementation MYFunnyButton
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setImage:[UIImage bundleImageNamed:@"test1.jpg"] forState:UIControlStateNormal];
       
        self.enabled = YES;
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
