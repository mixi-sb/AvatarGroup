# AvatarGroup

[![Build Status](https://app.bitrise.io/app/5bc2d92c7384df62/status.svg?token=P8J63EKTrlTUBzAw_lQneg)](https://app.bitrise.io/app/5bc2d92c7384df62)
[![Version](https://img.shields.io/cocoapods/v/AvatarGroup.svg?style=flat)](https://cocoapods.org/pods/AvatarGroup)
[![License](https://img.shields.io/cocoapods/l/AvatarGroup.svg?style=flat)](https://cocoapods.org/pods/AvatarGroup)
[![Platform](https://img.shields.io/cocoapods/p/AvatarGroup.svg?style=flat)](https://cocoapods.org/pods/AvatarGroup)

AvatarGroup is a avatars' group view library which can arrange the circle avatars in a stack view.

![Demo](https://raw.githubusercontent.com/xflagstudio/AvatarGroup/master/screenshots/demo.png)

## Documentation

AvatarGroup is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AvatarGroup'
```

Add and remove the avatar images with the following methods:

```Swift
func add(image: UIIamge?)
func remove(at index: Int)
```

#### Kingfisher Extension

AvatarGroup supports to load image url with Kingfisher.

```ruby
pod 'AvatarGroup/Kingfisher'
```

Add and remove the avatar urls with the following methods.

```Swift
func add(url: URL?) 
func add(urls: [URL?])
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## License

AvatarGroup is available under the MIT license. See the LICENSE file for more info.
