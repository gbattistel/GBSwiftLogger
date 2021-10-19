Pod::Spec.new do |spec|
  spec.name = 'GBSwiftLogger'
  spec.version = '1.1.1'
  spec.summary = 'An awesome Swift logger with verbosity selection'
 
  spec.description = <<-DESC
This Logger with help you to debug your Swift app / framework easier. You can select which level of verbosity you want to be printed, also you are able to fully disable logs or enable all the available levels. 
		       DESC
 
  spec.homepage = 'https://github.com/gbattistel/GBSwiftLogger'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'Guillermo Battistel' => 'guillermo.battistel@gmail.com' }
  spec.source = { :git => 'https://github.com/gbattistel/GBSwiftLogger.git', :tag => spec.version.to_s }
 
  spec.swift_version = "5.0"
  spec.ios.deployment_target = '10.0'
  spec.source_files  = "GBSwiftLogger", "GBSwiftLogger/**/*.{h,m,swift}"
  spec.exclude_files = "GBSwiftLogger/Exclude"
 
end
