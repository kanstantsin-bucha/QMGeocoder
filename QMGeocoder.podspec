#
# Be sure to run `pod lib lint QMGeocoder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QMGeocoder'
  s.version          = '1.0.2'
  s.summary          = 'A geocoder instance that use apple or google geocoding services'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A geocoder instance that use apple or google geocoding services. It represent results in convinient way, using QMLocationInfo to do it. QMLocationInfo could come across other frameworks that I pushed.
                       DESC

  s.homepage         = 'https://github.com/truebucha/QMGeocoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'truebucha' => 'truebucha@gmail.com'}
  s.source           = { :git => 'https://github.com/truebucha/QMGeocoder.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/truebucha'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'QMGeocoder/Classes/**/*'
  s.public_header_files = 'QMGeocoder/Classes/*.h'

  s.frameworks = 'Foundation'
  s.dependency 'LocationInfo', '~> 1.0'
  s.dependency 'LocationInfo/LMGeocoder', '~> 1.0'
  s.dependency 'LocationInfo/AppleGeocoder', '~> 1.0'
  s.dependency 'LMGeocoderUniversal', '~> 1.2'

end
