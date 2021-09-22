#
# Be sure to run `pod lib lint KlevinAdSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'AnyThinkBaiduSDK'
    s.version          = '4.8.1'
    s.summary          = 'AnyThinkBaiduSDK'

    s.description      = <<-DESC
    AnyThinkBaiduSDKAnyThinkBaiduSDKAnyThinkBaiduSDKAnyThinkBaiduSDK
                       DESC

    s.homepage         = 'https://github.com/toponteam/AnyThinkBaiduSDK'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Top On' => 'ios' }
    s.source           = { :git => 'https://github.com/toponteam/AnyThinkBaiduSDK.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'
    
    s.requires_arc = true

    s.vendored_frameworks = 'Baidu/BaiduMobAdSDK.framework'
    s.resource = 'Baidu/baidumobadsdk.bundle'


    s.weak_frameworks = 'AdSupport', 'AppTrackingTransparency', 'WebKit'
    s.frameworks = 'StoreKit', 'SystemConfiguration', 'CoreTelephony', 'AVKit', 'AVFoundation', 'CoreMedia'

    s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = {
       'VALID_ARCHS' => '$(ARCHS_STANDARD_64_BIT) armv7',
       'ENABLE_BITCODE' => 'NO',
    }
end
