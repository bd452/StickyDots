<h1 align="center">StickyDots</h1>
<p align="center">
A page indicator with a little bit of style
<br><br>
<img src="https://github.com/bd452/StickyDots/raw/master/Resources/example.gif">
</p>

## Usage:

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

------

This project is licensed under the MIT license
