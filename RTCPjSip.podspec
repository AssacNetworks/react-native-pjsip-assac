require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'RTCPjSip'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = package['homepage']
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/AssacNetworks/react-native-pjsip-assac.git', :tag => s.version }

  s.requires_arc        = true
  s.platform            = :ios, '9.0'
  
  s.dependency 'React'
  s.dependency 'Vialer-pjsip-iOS'
  s.preserve_paths      = 'package.json', 'index.js'
  s.source_files        = 'ios/RTCPjSip/*.{h,m}'

  s.prefix_header_contents = "#define PJ_AUTOCONF"
end
