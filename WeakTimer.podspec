Pod::Spec.new do |s|
s.name         = 'WeakTimer'
s.version      = '0.0.1'
s.summary      = '利用runtime消息转发机制和NSProxy封装timer，避免内存泄漏。'
s.homepage     = 'https://github.com/hu8fogew/LW_Class'
s.license      = 'MIT'
s.authors      = {'LW' => '854778053@qq.com'}
s.platform     = :ios, '9.0'
s.source       = {:git => 'https://github.com/hu8fogew/LW_Class.git', :tag => s.version}
s.source_files = 'WeakTimer/**/*.{h,m}'
s.requires_arc = true
end
