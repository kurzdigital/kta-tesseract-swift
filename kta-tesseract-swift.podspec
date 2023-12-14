Pod::Spec.new do |spec|
  spec.name          = "kta-tesseract-swift"
  spec.version       = "0.0.7"
  spec.summary       = "Tesseract for usage in Swift projects, delivered as xcframework"

  spec.homepage      = "https://www.kurzdigital.com"
  spec.license       = { :type => "MIT", :file => "LICENSE.md" }
  spec.author        = { "KURZ Digital Solutions" => "ios@kurzdigital.com" }
  spec.source        = { :git => "https://github.com/kurzdigital/kta-tesseract-swift.git", :tag => "#{spec.version}" }
  
  spec.platform      = :ios
  spec.source_files  = "Sources/*.{swift}"
  spec.swift_version = "5.0"
  spec.ios.deployment_target = "13.0"
  spec.ios.vendored_frameworks = 'Library/libtesseract.xcframework'
  spec.static_framework = true
  spec.xcconfig      = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
                         'OTHER_LDFLAGS' => '-lc++ -lz',
                         'CLANG_CXX_LIBRARY' => 'compiler-default'
                       }
end
