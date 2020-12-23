
Pod::Spec.new do |spec|

  spec.name         = "TestDemoSDK"
  spec.version      = "0.0.1"
  spec.summary      = "test TestDemoSDK 1217"

  spec.description  = <<-DESC
  此版本SDK说明文字，自己根据实际书写
                   DESC

  spec.homepage     = "https://github.com/marsLiuFei/TestDemoSDK"
 
  spec.license      = "MIT"
  
  spec.author             = { "GaiShiDaYingXiong" => "mars_liu_dev@163.com" }
  
  spec.ios.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/marsLiuFei/TestDemoSDK.git", :tag => "#{spec.version}" }

  #spec.resource  = 'TestDemoSDK/Resource.bundle'
  spec.ios.vendored_frameworks = 'TestDemoSDK/TestDemoSDK.framework'
   spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
   
  #  spec.source_files = 'TestDemoSDK/*'
  spec.dependency 'Masonry'

   spec.requires_arc = true
end
