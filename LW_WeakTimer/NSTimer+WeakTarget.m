//
//  NSTimer+WeakTarget.m
//  Tools
//
//  Created by lianjie on 2019/3/5.
//  Copyright © 2019年 lianjie. All rights reserved.
//

#import "NSTimer+WeakTarget.h"
@interface LW_proxy:NSProxy
+(instancetype)lw_proxyWithTarget:(id)target;
@property (nonatomic ,weak)id target;
@end
@implementation LW_proxy
+(instancetype)lw_proxyWithTarget:(id)target
{
    LW_proxy *proxy = [LW_proxy alloc];
    proxy.target=target;
    return proxy;
}
/**
 runtime【消息机制完整转发】
 */
///返回签名
-(NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}
-(void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:self.target];
}
@end
@implementation NSTimer (WeakTarget)
+(NSTimer *)lw_addTimer:(NSTimeInterval)time selector:(SEL)sel target:(id)tar userInfo:(nullable id)info repeat:(BOOL)rep
{
    return [self timerWithTimeInterval:time target:[LW_proxy lw_proxyWithTarget:tar] selector:sel userInfo:info repeats:rep];
}
@end
