require "./spec_helper"

describe Crystal.env do
  it "makes an alias to Crystal::Environment" do
    Crystal.env.should be_a Crystal::Environment
  end
end

describe Crystal::Environment do
  it "returns name of the module in #inspect and #to_s" do
    Crystal::Environment.inspect.should match /^Crystal::Environment/
    Crystal::Environment.to_s.should match /^Crystal::Environment/
  end

  it "returns name of the current environment in #inspect and #to_s" do
    with_env("test") do
      Crystal::Environment.inspect.should contain "test"
      Crystal::Environment.to_s.should contain "test"
    end
  end

  it "returns value of #{Crystal::Environment::KEY} variable as #name" do
    with_env("test") do
      Crystal::Environment.name.should eq "test"
    end
  end

  it "sets given #name as value of #{Crystal::Environment::KEY} variable" do
    old_env = ENV[Crystal::Environment::KEY]?
    begin
      Crystal::Environment.name = "test"
      ENV[Crystal::Environment::KEY]?.should eq "test"
    ensure
      Crystal::Environment.name = old_env
      ENV[Crystal::Environment::KEY]?.should eq old_env
    end
  end

  it "returns true for given #{Crystal::Environment::KEY} when queried" do
    with_env("test") do
      Crystal::Environment.development?.should be_false
      Crystal::Environment.test?.should be_true
    end
  end

  it "defines 3 most popular query methods (development, test, production)" do
    Crystal::Environment.development?.should be_true
    Crystal::Environment.test?.should be_false
    Crystal::Environment.production?.should be_false
  end

  it "defines custom environment query methods" do
    Crystal::Environment.setup %w(foo bar)
    with_env("foo") do
      Crystal::Environment.foo?.should be_true
    end
    Crystal::Environment.bar?.should be_false
  end
end
