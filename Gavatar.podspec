Pod::Spec.new do |s|
  s.name             = 'Gavatar'
  s.version          = '0.1.0'
  s.summary          = 'Generate Avatar for your project as UIImage in iOS'
 
  s.description      = <<-DESC
Gavatar is avatar generator for your projects with Numbers , Letters and SuperHeroes . Yay , SuperHeroes!!!
                       DESC
 
  s.homepage         = 'https://github.com/eliakorkmaz/Gavatar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Emrah Korkmaz' => 'emrahkrkmz1@gmail.com' }
  s.source           = { :git => 'https://github.com/eliakorkmaz/Gavatar.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Gavatar/*'
 
end