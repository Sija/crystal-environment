require "spec"
require "../src/crystal-environment"

def with_env(env)
  old_env = ENV[Crystal::Environment::KEY]?
  begin
    ENV[Crystal::Environment::KEY] = env
    yield
  ensure
    ENV[Crystal::Environment::KEY] = old_env
  end
end
