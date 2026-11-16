# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_objectdetector"
  spec.version       = "1.2.6"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Object Detector API - Ruby Client"
  spec.description   = "Object Detector finds the objects in an image, from people, cars and traffic lights to dogs, laptops and cups, and returns each one's label, a numeric confidence and its bounding box in pixels and as fractions of the image, plus a count per label. Filter by minimum confidence or by the labels you care about."
  spec.homepage      = "https://apiverve.com/marketplace/objectdetector?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/objectdetector-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/objectdetector"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
