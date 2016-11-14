Pod::Spec.new do |s|
  s.name         = "CSE-iOS"
  s.version      = "1.0.5"
  s.summary      = "Customised client-side encryption on iOS includes SEPA and Credit Card"
  s.homepage     = "https://github.com/eatfirst/CSE-iOS"
  s.license      = 'MIT'
  s.platform     = :ios
  s.author       = { "Karthikeya" => "karthikeya.udupa@eatfirst.com" }
  s.source       = { :git => "https://github.com/eatfirst/CSE-iOS.git", :tag => s.version}
  s.source_files = 'ADYEncryption/*.{h,m}', 'ADYEncryption/Helpers/*.{h,m}'
  s.frameworks	 = 'Security'
end
