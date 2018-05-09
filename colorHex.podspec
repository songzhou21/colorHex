#
# Be sure to run `pod lib lint colorHex.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'colorHex'
  s.version          = '0.1.0'
  s.summary          = 'color from hex value'
  
  s.description      = <<-DESC
  color from hex value
                       DESC

  s.homepage         = 'https://github.com/songzhou21/colorHex'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'songzhou21' => 'zhousong1993@gmail.com' }
  s.source           = { :git => 'https://github.com/songzhou21/colorHex.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'colorHex/Classes/**/*'
end
