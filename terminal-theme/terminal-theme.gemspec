Gem::Specification.new do |spec|
    spec.name          = "terminal-theme"
    spec.version       = "0.1.0"
    spec.authors       = ["Your Name"]
    spec.email         = ["your.email@example.com"]
  
    spec.summary       = %q{A terminal-inspired theme for Jekyll}
    spec.description   = %q{A simple Jekyll theme with a terminal-like appearance, featuring a blocky, black and green aesthetic.}
    spec.homepage      = "http://example.com"
    spec.license       = "MIT"
  
    spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
      `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{^(test|spec|features)/}) || f.match(%r{\.gem$})
      end
    end
    spec.bindir        = "bin"
    spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]
  
    spec.add_runtime_dependency "jekyll", "~> 4.3.3"
  end
  