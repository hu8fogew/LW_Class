Pod::Spec.new do |s|
s.name         = 'LW_WeakTimer'
s.version      = '0.1.2'
s.summary      = 'LW_WeakTimer'
s.description  = '利用runtime消息转发机制和NSProxy封装timer，避免内存泄漏。'
s.homepage     = 'https://github.com/hu8fogew/LW_Class'
s.license      = 'MIT'
s.authors      = {'LW' => '18209295072@163.com'}
s.platform     = :ios, '9.0'
s.source       = {:git => 'https://github.com/hu8fogew/LW_Class.git', :tag => s.version}
s.source_files = 'LW_WeakTimer/**/*.{h,m}'
s.requires_arc = true
end

