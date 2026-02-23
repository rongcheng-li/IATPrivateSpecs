Pod::Spec.new do |s|
  s.name             = 'IATCoreKit'
  s.version          = '1.7.1'
  s.summary          = 'IAP App 공통 기능 SDK'
  s.description      = <<-DESC
    IAP App 공통 라이브러리.
    앱 설정, iCloud 동기화, CoreData 영속성, 키체인 보안 저장소,
    로컬 스토리지, 디바이스 유틸리티, 다국어 지원 등 제공.
  DESC

  s.homepage         = 'https://github.com/rongcheng-li/IATCoreKit'
  s.license          = { :type => 'MIT', :text => 'Copyright 2015 Yong Sung Lee. All rights reserved.' }
  s.author           = { 'Yong Sung Lee' => 'developer@iapp24.com' }
  s.source           = { :git => 'https://github.com/rongcheng-li/IATCoreKit.git', :tag => s.version.to_s }

  s.platform              = :ios
  s.ios.deployment_target = '12.0'

  s.vendored_frameworks = 'SDK/IATCoreKit.xcframework'
  s.resources = 'SDK/IATCoreKitResources.bundle'

  s.frameworks = 'Foundation', 'UIKit', 'CoreData', 'Security', 'StoreKit', 'SystemConfiguration', 'CloudKit'

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC'
  }
end
