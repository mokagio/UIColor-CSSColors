UIColor+CSSColors
==================

`UIColor+CSSColors` is a category that extends `UIColor` with methods to get the [CSS/SVG colors](http://www.w3.org/TR/css3-color/#svg-color). That's it.

<img src="https://github.com/mokagio/UIColor-CSSColors/blob/master/screenshot.png" />

## Installation with CocoaPods

```ruby
platform :ios

pod 'UIColor+CSSColors'
```

## Usage

Get the color you want from the `UIColor` class method following this naming pattern: `css<# color_name #>Color`. To see all the available colors check the [w3 spec](http://www.w3.org/TR/css3-color/#svg-color).

```objc
someViewYouWantToColor.backgroundColor = [UIColor flatPalegreenColor];
```

## License

`UIColor+CSSColors` is released under the [MIT license](https://github.com/mokagio/UIColor-CSSColors/blob/master/LICENSE).

---

Hacked together with passion by [@mokagio](https://twitter.com/mokagio)



