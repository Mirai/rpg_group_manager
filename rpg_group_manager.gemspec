$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rpg_group_manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rpg_group_manager"
  s.version     = RpgGroupManager::VERSION
  s.authors     = ["Robert Miner"]
  s.email       = ["RobertRMiner@gmail.com"]
  s.homepage    = "https://github.com/Mirai/rpg_group_manager"
  s.summary     = "Create RPG campaigns and manage players."
  s.description = "Create RPG campaigns, invite players to play in campaign, and manage players. Intended to plug into Rails apps with character generation."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "devise"

  s.add_development_dependency "pg"
end
