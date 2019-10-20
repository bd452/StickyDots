#
# Be sure to run `pod lib lint StickyDots.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'StickyDots'
  s.version          = '1.0.0'
  s.summary          = 'A page indicator with a little bit of style'
  
  s.swift_versions   = '5.1'

  s.description      = <<-DESC
StickyDots is a page indicator that looks like the vanilla iOS page indicator, but adds a cool animation when you scroll. Attach it to a UIScrollView of your choice and it will automatically configure itself to display the correct information.
                       DESC

  s.homepage         = 'https://github.com/bd452/StickyDots'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bd452' => 'bryce.dougherty@gmail.com' }
  s.source           = { :git => 'https://github.com/bd452/StickyDots.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'StickyDots/*.swift'
end
