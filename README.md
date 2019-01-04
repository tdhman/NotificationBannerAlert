# NotificationBannerAlert

[![CI Status](https://img.shields.io/travis/tdhman/NotificationBannerAlert.svg?style=flat)](https://travis-ci.org/tdhman/NotificationBannerAlert)
[![Version](https://img.shields.io/cocoapods/v/NotificationBannerAlert.svg?style=flat)](https://cocoapods.org/pods/NotificationBannerAlert)
[![License](https://img.shields.io/cocoapods/l/NotificationBannerAlert.svg?style=flat)](https://cocoapods.org/pods/NotificationBannerAlert)
[![Platform](https://img.shields.io/cocoapods/p/NotificationBannerAlert.svg?style=flat)](https://cocoapods.org/pods/NotificationBannerAlert)

`NotificationBannerAlert` is a library that allows to easily create banner alert that appear on top the status bar or navigation bar. It was originally based on [MPC_Notification](https://github.com/fareast555/MPC_Notification).

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 10.0+
- ARC

## Installation

NotificationBannerAlert is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NotificationBannerAlert'
```

### Usage

To create a custom notification banner alert

```
MPC_Notification *alert = [[MPC_Notification alloc]initWithTitle:@"Title" message:@"Message" alertColor:[UIColor] alertImage:[UIImage] displayTime:2.0];
alert.delegate = self // set delegate
[alert display];
```

Or create banner alert using default configuration with type: `default`, `success`, `danger`, `warning`.

```
initDefaultAlertWithTitle:(NSString *)alertTitle
                      message:(NSString *)alertMessage
                  displayTime:(CGFloat) displayTime;

initSuccessAlertWithTitle:(NSString *)alertTitle
                      message:(NSString *)alertMessage
                  displayTime:(CGFloat) displayTime;

initDangerAlertWithTitle:(NSString *)alertTitle
                      message:(NSString *)alertMessage
                  displayTime:(CGFloat) displayTime;

initWarningAlertWithTitle:(NSString *)alertTitle
                      message:(NSString *)alertMessage
                  displayTime:(CGFloat) displayTime;
```

## License

`NotificationBannerAlert` is available under the MIT license. See the LICENSE file for more info.
