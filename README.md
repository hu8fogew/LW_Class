# LW_Class
利用NSProxy实现weakTarget，利用完整消息转发机制
【谨记】（未必实现以下方法否则会报：NSProxy:doesNotRecognizeSelector:XXX）
-(void)dealloc
{
    [_timer invalidate];
    _timer = nil;
}
