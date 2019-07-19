#
# Be sure to run `pod lib lint AvatarGroup.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AvatarGroup'
  s.version          = '0.2'
  s.summary          = 'An avatars\' group view for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AvatarGroup is a avatars' group view library which can arrange the circle avatars in a stack view.
                       DESC

  s.homepage         = 'https://github.com/xflagstudio/AvatarGroup'
  s.screenshots     = 'https://raw.githubusercontent.com/xflagstudio/AvatarGroup/master/screenshots/demo.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lm2343635' => 'lm2343635@126.com' }
  s.source           = { :git => 'https://github.com/xflagstudio/AvatarGroup.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.default_subspec = 'Core'
  s.dependency 'SnapKit', '~> 5'
  
  s.subspec 'Core' do |core|
    core.source_files = 'AvatarGroup/Classes/Core/**/*'
  end
  
  s.subspec 'Kingfisher' do |kingfisher|
    kingfisher.dependency 'AvatarGroup/Core'
    kingfisher.dependency 'Kingfisher', '~> 5'
    kingfisher.source_files = 'AvatarGroup/Classes/Kingfisher/**/*'
  end
  
  s.subspec 'RxKingfisher' do |rxkingfisher|
    rxkingfisher.dependency 'AvatarGroup/Kingfisher'
    rxkingfisher.dependency 'RxCocoa', '~> 5'
    rxkingfisher.source_files = 'AvatarGroup/Classes/RxKingfisher/**/*'
  end
end
