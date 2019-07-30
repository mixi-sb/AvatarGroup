<p align="center">
<img src="https://raw.githubusercontent.com/xflagstudio/AvatarGroup/master/Example/AvatarGroup/Images.xcassets/AppIcon.appiconset/icon.png" alt="RxController" title="RxController" width="300"/>
</p>
<h1 align="center">AvatarGroup</h1>
<p align="center">
<a href="https://app.bitrise.io/app/5bc2d92c7384df62"><img src="https://app.bitrise.io/app/5bc2d92c7384df62/status.svg?token=P8J63EKTrlTUBzAw_lQneg"></a>
<a href="https://https://cocoapods.org/pods/AvatarGroup"><img src="https://img.shields.io/cocoapods/v/AvatarGroup.svg?style=flat"></a>
<a href="https://https://cocoapods.org/pods/AvatarGroup"><img src="https://img.shields.io/cocoapods/l/AvatarGroup.svg?style=flat"></a>
<a href="https://https://cocoapods.org/pods/AvatarGroup"><img src="https://img.shields.io/cocoapods/p/AvatarGroup.svg?style=flat"></a>
</p>

AvatarGroup is a avatars' group view library which can arrange the circle avatars in a stack view.

![Demo](https://raw.githubusercontent.com/xflagstudio/AvatarGroup/master/screenshots/demo.png)

## Documentation

AvatarGroup is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AvatarGroup'
```

The following properties are supported in `AvatarGroupView`:

- spacing (`CGFloat`): the space between to avatars.
- reverse (`Bool`): reverse the AvatarGroupView.
- alignment (`AvatarGroup.Alignment`)
- borderColor (`UIColor`)
- borderWidth (`CGFloat`)

Update avatar images with the following method:

```Swift
func setAvatars(images: [UIIamge?])
```

#### Kingfisher Extension

AvatarGroup supports to load image url with Kingfisher.

```ruby
pod 'AvatarGroup/Kingfisher'
```

Update avatar urls with the following methods.

```Swift
func setAvatars(urls: [URL?])
```

#### RxSwift and Kingfisher Extension

AvatarGroup supports to load image url with both RxSwift and Kingfisher.

```ruby
pod 'AvatarGroup/RxKingfisher'
```

Bind an observable object to the binder `urls` of the reactive extension.

```Swift
viewModel.avatarUrls.bind(to: avatarGroupView.rx.urls).disposed(by: disposeBag)
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## License

AvatarGroup is available under the MIT license. See the LICENSE file for more info.
