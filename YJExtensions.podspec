Pod::Spec.new do |s|

  s.name         = "YJExtensions"
  s.version      = "1.0.1"
  s.summary      = "分类"


  s.homepage     = "https://github.com/LYajun/YJExtensions"
 

  s.license      = "MIT"
 
  s.author             = { "刘亚军" => "liuyajun1999@icloud.com" }
 

  s.platform     = :ios, "8.0"

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/LYajun/YJExtensions.git", :tag => s.version }


  s.source_files  = "YJExtensions/YJExtensions.h","YJExtensions/Foundation/*.{h,m}","YJExtensions/UIKit/*.{h,m}"



  s.requires_arc = true
  s.dependency "TFHpple"

end
