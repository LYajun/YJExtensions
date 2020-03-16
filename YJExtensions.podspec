Pod::Spec.new do |s|

  s.name         = "YJExtensions"
  s.version      = "1.2.5"
  s.summary      = "分类"


  s.homepage     = "https://github.com/LYajun/YJExtensions"
 

  s.license      = "MIT"
 
  s.author             = { "刘亚军" => "liuyajun1999@icloud.com" }
 

  s.platform     = :ios, "8.0"

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/LYajun/YJExtensions.git", :tag => s.version }


  s.source_files  = "YJExtensions/YJExtensions.h"

   s.subspec "UIKit" do |ss|
    ss.source_files =  "YJExtensions/UIKit/*.{h,m}"
    ss.dependency "YJExtensions/Foundation"
   
  end

  s.subspec 'YJEHpple' do |hpple|
    hpple.source_files = 'YJExtensions/YJEHpple/**/*'
    hpple.libraries  = 'xml2'
    hpple.xcconfig  =  {'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  end

  s.subspec "Foundation" do |ss|
    ss.source_files =  "YJExtensions/Foundation/*.{h,m}"

    ss.dependency "YJExtensions/YJEHpple"
  end

 


  s.requires_arc = true

end
