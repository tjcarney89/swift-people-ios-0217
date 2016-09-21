# Uncomment this line to define a global platform for your project
# platform :ios, '8.0'
# Uncomment this line if you're using Swift
use_frameworks!

def testing_pods
  pod 'Nimble', git: 'https://github.com/Quick/Nimble.git'
  pod 'Quick', git: 'https://github.com/Quick/Quick.git', branch: 'swift-3.0'
end

target 'swift-people' do

end

target 'swift-peopleTests' do
  testing_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
