//
//  UIImage+Library.h
//  mytestFrameWork
//
//  Created by 史志成 on 2020/7/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//图片调用的分类
@interface UIImage (Library)
//从bundle中获取图片
+ (UIImage *)bundleImageNamed:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
