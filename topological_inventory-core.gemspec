$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "topological_inventory/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "topological_inventory-core"
  s.version     = TopologicalInventory::Core::VERSION
  s.authors     = ["Adam Grare"]
  s.email       = ["agrare@redhat.com"]
  s.homepage    = "https://github.com/ManageIQ/topological_inventory-core"
  s.summary     = "Core Models and Schema for the Topological Inventory Service."
  s.description = "Core Models and Schema for the Topological Inventory Service.."
  s.license     = "Apache-2.0"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.racecar1", "< 5.2"
  s.add_dependency "pg", "> 0"
  s.add_dependency "manageiq-messaging", "~> 0.1.0"
end
