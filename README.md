<h1 align="center">StickyDots</h1>
<p align="center">
A page indicator with a little bit of style
<br><br>
<img src="https://github.com/bd452/StickyDots/raw/master/Resources/example.gif">
</p>


[![Version](https://img.shields.io/cocoapods/v/StickyDots.svg?style=flat)](https://cocoapods.org/pods/StickyDots)
[![License](https://img.shields.io/cocoapods/l/StickyDots.svg?style=flat)](https://cocoapods.org/pods/StickyDots)
[![Platform](https://img.shields.io/cocoapods/p/StickyDots.svg?style=flat)](https://cocoapods.org/pods/StickyDots)

## Usage

From swift: 
```swift
import StickyDots
```

Then, create an image of StickyDotsView, and either 

A. attach it to a scrollview
```swift
let dotsView = StickyDotsView(frame: CGRect(x: 0, y: 0, width: 0, height: 10), attachedTo: scrollView)
```
or

B. manually assign the width of your view and the number of pages, and call the `updatePageIndicator(offset:CGFloat)` method

And that's it!

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

StickyDots is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'StickyDots'
```

## License

StickyDots is available under the MIT license. See the LICENSE file for more info.
