//
//  NSTimer+WeakTarget.h
//  Tools
//
//  Created by lianjie on 2019/3/5.
//  Copyright © 2019年 lianjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (WeakTarget)
+(NSTimer *)lw_addTimer:(NSTimeInterval)time selector:(SEL)sel target:(id)tar userInfo:(nullable id)info repeat:(BOOL)rep;
@end
