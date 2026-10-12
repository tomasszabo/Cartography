Pod::Spec.new do |s|

  s.name         = "Cartography"
  s.version      = "4.0.0"
  s.summary      = "Declarative Auto Layout in Swift"

  s.description  = <<-DESC
                   Set up your Auto Layout constraints declaratively and without any stringly typing!
                   DESC

  s.homepage     = "https://github.com/robb/Cartography"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Robert Böhnke" => "robb@robb.is" }

  s.swift_version = "6.0"
  s.pod_target_xcconfig = { 'SWIFT_DEFAULT_ACTOR_ISOLATION' => 'MainActor',
                           'SWIFT_STRICT_CONCURRENCY' => 'complete' }

  s.ios.deployment_target = "15.0"
  s.osx.deployment_target = "12.0"
  s.tvos.deployment_target = "15.0"

  s.source = { :git => "https://github.com/tomasszabo/Cartography.git", :branch => "master" }
  s.source_files = "Cartography/*.swift"
end
