# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Toys' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'Moya/RxSwift', '10.0.1'
  pod 'RxSwift', '4.0.0'
  pod 'RxCocoa', '4.0.0'
  pod 'DefaultsKit'
  pod 'SnapKit'
  pod 'MBProgressHUD'
  pod 'Kingfisher', '4.5.0'
  pod 'IQKeyboardManagerSwift'
  pod 'MJRefresh'
  pod 'mobAPI'
  pod 'FSPagerView'
  pod 'Popover'
  pod 'OpenShare'	
  pod 'WechatOpenSDK'	
  pod 'FDFullscreenPopGesture'
  pod 'QMUIKit'
  pod 'SwiftLint'
  pod 'Reveal-SDK', :configurations => ['Debug']

  # Pods for Toys

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    myTargets = ['FSPagerView', 'Popover']
    if myTargets.include? target.name
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.2'
      end
      else
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.0'
      end
    end
  end
end
