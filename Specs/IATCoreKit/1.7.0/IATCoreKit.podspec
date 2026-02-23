Pod::Spec.new do |s|
  s.name             = 'IATCoreKit'
  s.version          = '1.7.0'
  s.summary          = 'IAP App 공통 기능 SDK'
  s.description      = <<-DESC
    IAP App 공통 라이브러리.
    앱 설정, iCloud 동기화, CoreData 영속성, 키체인 보안 저장소,
    로컬 스토리지, 디바이스 유틸리티, 다국어 지원 등 제공.
  DESC

  s.homepage         = 'https://github.com/iapp24'
  s.license          = { :type => 'MIT', :text => 'Copyright 2015 Yong Sung Lee. All rights reserved.' }
  s.author           = { 'Yong Sung Lee' => '' }

  s.source           = { :git => 'https://github.com/rongcheng-li/IATCoreKit.git', :tag => s.version.to_s }

  s.platform         = :ios
  s.ios.deployment_target = '12.0'

  # XCFramework 바이너리 (device + simulator 분리 지원)
  s.vendored_frameworks = 'SDK/IATCoreKit.xcframework'

  # 리소스 번들 (다국어 Localizable.strings 포함)
  s.resources = 'SDK/IATCoreKitResources.bundle'

  # 필요한 시스템 프레임워크
  s.frameworks = 'Foundation', 'UIKit', 'CoreData', 'Security', 'StoreKit', 'SystemConfiguration', 'CloudKit'

  # 링커 플래그: Objective-C 카테고리 로드 보장
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC'
  }
end
