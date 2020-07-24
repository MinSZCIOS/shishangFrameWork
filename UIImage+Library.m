//
//  UIImage+Library.m
//  mytestFrameWork
//
//  Created by 史志成 on 2020/7/24.
//

#import "UIImage+Library.h"
#import "NSBundle+Library.h"

@implementation UIImage (Library)
//从bundle中获取图片
+ (UIImage *)bundleImageNamed:(NSString *)name
{
    return [self imageNamed:name inBundle:[NSBundle myLibraryBundle]];
}

+ (UIImage*)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle
{
  #if __IPHONE_OS_VERSION_MIN_REQUIRED >= __IPHONE_8_0
    return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
  
  #elif __IPHONE_OS_VERSION_MAX_ALLOWED < __IPHONE_8_0
    return  [UIImage imageWithContentsOfFile:[bundle pathForResource:name ofType:nil]];
    
  #else
    if ([UIImage respondsToSelector:@selector(imageNamed:inBundle:compatibleWithTraitCollection:)]) {
          
          return [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
         }
       else
       {
           return [UIImage imageWithContentsOfFile:[bundle pathForResource:name ofType:nil]];
       }
  #endif
    
}

@end
