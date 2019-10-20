Pod::Spec.new do |s|
  s.name             = 'StickyDots'
  s.version          = '1.0.0'

  s.summary          = 'A page indicator with a little bit of style'
  
  s.swift_versions      = ["4.0", "4.2", "5.0", "5.1"]
  s.framework           = "UIKit"
  s.platform            = :ios, "10.0"
  s.description      = <<-DESC
StickyDots is a page indicator that looks like the vanilla iOS page indicator, but adds a cool animation when you scroll. Attach it to a UIScrollView of your choice and it will automatically configure itself to display the correct information.
                       DESC

  s.homepage         = 'https://github.com/bd452/StickyDots'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bryce Dougherty' => 'bryce.dougherty@gmail.com' }
  s.source           = { :git => 'https://github.com/bd452/StickyDots.git', :tag => s.version.to_s }


  s.source_files = 'StickyDots/*.swift'
end
