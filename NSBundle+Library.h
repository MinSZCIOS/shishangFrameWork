//
//  NSBundle+Library.h
//  mytestFrameWork
//
//  Created by 史志成 on 2020/7/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//查找bundle的分类
@interface NSBundle (Library)
//查询当前bundle
+ (NSBundle*)myLibraryBundle;

@end

NS_ASSUME_NONNULL_END
