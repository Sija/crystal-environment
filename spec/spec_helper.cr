require "spec"
require "../src/crystal-environment"

def with_env(env : String?) : Void
  previous_env = ENV[Crystal::Environment::KEY]?
  begin
    ENV[Crystal::Environment::KEY] = env
    yield
  ensure
    ENV[Crystal::Environment::KEY] = previous_env
  end
end
