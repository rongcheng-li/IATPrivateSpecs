# IATPrivateSpecs

iApp24 iOS SDK를 위한 Private CocoaPods Spec Repository

## 사용 방법

`Podfile` 상단에 아래 source를 추가하세요:

```ruby
source 'https://github.com/rongcheng-li/IATPrivateSpecs.git'
source 'https://cdn.cocoapods.org/'
```

## 포함된 Pod

| Pod | 최신 버전 | 설명 |
|-----|-----------|------|
| IATCoreKit | 1.7.0 | IAP App 공통 기능 SDK |

## 새 버전 배포 방법

```bash
# 1. IATCoreKit 레포에서 새 태그 생성
git tag x.x.x
git push origin x.x.x

# 2. 이 specs 레포에 podspec 추가
mkdir -p Specs/IATCoreKit/x.x.x
cp /path/to/IATCoreKit.podspec Specs/IATCoreKit/x.x.x/
git add .
git commit -m "Add IATCoreKit x.x.x"
git push origin master

# 3. 로컬 spec repo 업데이트
pod repo update IATPrivateSpecs
```
