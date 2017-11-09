require "spec"
require "../src/crystal-environment"

def with_env(env)
  old_env = ENV[Crystal::Environment::ENV_KEY]?
  begin
    ENV[Crystal::Environment::ENV_KEY] = env
    yield
  ensure
    ENV[Crystal::Environment::ENV_KEY] = old_env
  end
end
