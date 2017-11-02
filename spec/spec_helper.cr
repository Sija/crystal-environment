require "spec"
require "../src/crystal-environment"

def with_env(env)
  old_env = ENV["CRYSTAL_ENV"]?
  begin
    ENV["CRYSTAL_ENV"] = env
    yield
  ensure
    ENV["CRYSTAL_ENV"] = old_env
  end
end
