version = "0.0.1"

Pod::Spec.new do |s|
  s.name         = "UIColor+CSSColors"
  s.version      = version
  s.summary      = "Extend UIColor with the CSS colors."
  s.description  = <<-DESC
                   A longer description of UIColor+CSSColors in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/mokagio/UIColor+CSSColors"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Giovanni Lodi" => "giovanni.lodi42@gmail.com" }
  s.social_media_url   = "http://twitter.com/mokagio"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/mokagio/UIColor+CSSColors.git", :tag => version }
  s.source_files  = "UIColor+CSSColors.{h,m}"
  s.requires_arc = true
end
