$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "gqlngn/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "gqlngn"
  spec.version     = Gqlngn::VERSION
  spec.authors     = ["nkwio"]
  spec.email       = ["neil@neilkwalker.io"]
  spec.summary     = "Summary of Gqlngn."
  spec.description = "Description of Gqlngn."
  spec.license     = "All Rights Reserved 2020 Neil Walker"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.3"
  spec.add_dependency "slim"
  spec.add_dependency "graphql"

  spec.add_development_dependency "pg"
  spec.add_development_dependency "graphiql-rails"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "faker"
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "listen"

end
