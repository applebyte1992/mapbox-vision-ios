Pod::Spec.new do |s|

  s.name         = "MapboxVisionSafety"
  s.version      = "0.13.2"

  s.summary      = "Safety features on top of Vision"
  s.description  = <<-DESC
                   Safety features on top of Vision
                   DESC

  s.homepage          = 'https://www.mapbox.com/vision/'
  s.documentation_url = 'https://docs.mapbox.com/ios/vision/'
  s.license           = { :type => "CUSTOM", :file => "Docs/LICENSE.md" }
  s.author            = { 'Mapbox' => 'mobile@mapbox.com' }
  s.social_media_url  = 'https://twitter.com/mapbox'
  s.documentation_url = 'https://www.mapbox.com/vision/'

  s.platform              = :ios
  s.ios.deployment_target = '11.2'

  s.source        = { :git => "https://github.com/mapbox/mapbox-vision-ios.git", :tag => "v#{s.version}" }

  s.source_files  = "MapboxVisionSafety/**/*.{swift,h,metal}"

  s.requires_arc = true

  s.swift_version = '4.2'

  s.dependency "MapboxVisionNativeAll/Safety", "0.13.1"
  s.dependency "MapboxVision", "#{s.version}"

end
