Pod::Spec.new do |s|

  s.name         = "EasyLayout"
  s.version      = "0.1.0"
  s.summary      = "A simple, lightweight framework for AutoLayout."
  s.description  = "EasyLayout is a simple, lightweight Swift & Objective-C framework for incorporating AutoLayout. The core syntax is inspired by other frameworks, while incorporating utility functions and decorators that help to take care of AutoLayout's arduous nuances. Ultimately, this results in a streamlined, declarative, and type-safe way to use AutoLayout."

  s.homepage     = "http://baddaboo.github.io/"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Blake Tsuzaki" => "blake589t@gmail.com" }

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"

  s.source       = { :git => "https://github.com/Baddaboo/EasyLayout.git", :tag => "#{s.version}" }

  s.source_files  = "Framework/**/*.{h,m,swift}"
  s.exclude_files = "Example"
  s.ios.framework  = 'UIKit'
  s.osx.framework  = 'AppKit'
end
