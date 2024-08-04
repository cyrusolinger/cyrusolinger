Gem::Specification.new do |spec|
    spec.name          = "terminal-theme"
    spec.version       = "0.1.0"
    spec.authors       = ["Cyrus Olinger"]
    spec.email         = ["cyrusolinger@gmail.com"]
  
    spec.summary       = %q{A terminal-themed Jekyll blog theme with a blocky aesthetic and black and green color scheme.}
    spec.description   = %q{Terminal-Theme is a custom Jekyll theme designed to give your blog a unique terminal-like feel. It features a blocky font aesthetic, a black and green color scheme, and a simple, minimalistic layout. Ideal for tech blogs, personal websites, and developers who want a vintage computing vibe.}
    spec.homepage      = "http://example.com"
    spec.license       = "MIT"
  
    spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
      Dir['**/*'].
        reject { |f| f.include?('/_site/') || f.end_with?('.gem') } # Exclude /_site/ directory and .gem files
    end
  
    spec.require_paths = ["lib"]
  end
  