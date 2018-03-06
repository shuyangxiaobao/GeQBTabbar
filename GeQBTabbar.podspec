Pod::Spec.new do |s|
s.name         = "GeQBTabbar" # 项目名称
s.version      = "1.0.5"        # 版本号 与 你仓库的 标签号 对应
s.license      = "MIT"          # 开源证书
s.summary      = "A delightful TextField of PhoneNumber" # 项目简介

s.homepage     = "https://github.com/shuyangxiaobao/GeQBTabbar" # 你的主页
s.source       = { :git => "https://github.com/shuyangxiaobao/GeQBTabbar.git", :tag => "#{s.version}" }#你的仓库地址，不能用SSH地址
s.source_files = "GeQBTabbar/GeQBTabbar/**/*" # 你代码的位置， GeQBTabbar/*.{h,m} 表示 GeQBTabbar 文件夹下所有的.h和.m文件
s.requires_arc = true # 是否启用ARC
s.platform     = :ios, "7.0" #平台及支持的最低版本
s.frameworks   = "UIKit", "Foundation" #支持的框架
# s.dependency   = "AFNetworking" # 依赖库

s.subspec 'HTTP' do |f|
f.source_files = 'GeQBTabbar/SETabBar.{h,m}' , 'GeQBTabbar/SETabBarItem.{h,m}'
end

# User
s.author             = { "geqiangbao" => "825065886@qq.com" } # 作者信息
end

