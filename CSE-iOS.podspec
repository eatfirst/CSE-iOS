Pod::Spec.new do |s|
  s.name         = "Adyen-CSE-iOS"
  s.version      = "1.0.1"
  s.summary      = "Customised client-side encryption on iOS includes SEPA and Credit Card"
  s.homepage     = "https://github.com/eatfirst/CSE-iOS"
  s.license      = 'MIT'
  s.author       = { "Adyen" => "support@adyen.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/eatfirst/CSE-iOS.git"}
  s.source_files = "ADYEncryption/*.{h,m}"
  s.frameworks	 = 'Security'
end
