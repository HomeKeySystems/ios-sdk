#Learn more or give us feedback
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "Quikkly"
  s.version      = "3.4.7"
  s.summary      = "The Quikkly Smart Scannable SDK for iOS"
  s.license      = {
    :type => "Commercial",
    :file => "LICENSE"
  }
  s.authors      = {
    :"Quikkly Ltd" => "info@quikklycodes.com"
  }
  s.homepage     = "https://quikklycodes.com"
  s.platform     = :ios, "9.0"

  s.source       = {
    :git => "https://github.com/HomeKeySystems/react-native-quikkly.git",
    :tag => "v#{s.version}"
  }
  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc  = true
  s.vendored_frameworks = "Quikkly.framework"
  s.swift_version = "5.0"
end

