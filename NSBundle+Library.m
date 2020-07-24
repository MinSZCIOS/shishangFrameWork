//
//  NSBundle+Library.m
//  mytestFrameWork
//
//  Created by 史志成 on 2020/7/24.
//

#import "NSBundle+Library.h"
#import "MYFunnyButton.h"

@implementation NSBundle (Library)
//查询当前bundle
+ (NSBundle*)myLibraryBundle
{
    return [self bundleWithURL:[self myLibraryBundleURL]];
}

+ (NSURL*)myLibraryBundleURL
{
    NSBundle* bundle = [NSBundle bundleForClass:[MYFunnyButton class]];
    return [bundle URLForResource:@"mytestFrameWork" withExtension:@"bundle"];
}
@end
