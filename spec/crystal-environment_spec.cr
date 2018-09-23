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

  describe "#name" do
    it "returns \"#{Crystal::Environment::DEFAULT}\" as default when #{Crystal::Environment::KEY} variable is not set" do
      with_env(nil) do
        Crystal::Environment.name.should eq Crystal::Environment::DEFAULT
      end
    end

    it "returns value of #{Crystal::Environment::KEY} variable" do
      with_env("test") do
        Crystal::Environment.name.should eq "test"
      end
    end

    it "sets value of #{Crystal::Environment::KEY} variable when assigned" do
      old_env = ENV[Crystal::Environment::KEY]?
      begin
        Crystal::Environment.name = "test"
        ENV[Crystal::Environment::KEY]?.should eq "test"
      ensure
        Crystal::Environment.name = old_env
        ENV[Crystal::Environment::KEY]?.should eq old_env
      end
    end
  end

  it "returns true for given #{Crystal::Environment::KEY} when queried" do
    with_env("test") do
      Crystal::Environment.development?.should be_false
      Crystal::Environment.test?.should be_true
    end
  end

  it "defines 3 most popular query methods (development, test, production)" do
    typeof(Crystal::Environment.development?).should be_a Bool.class
    typeof(Crystal::Environment.test?).should be_a Bool.class
    typeof(Crystal::Environment.production?).should be_a Bool.class
  end

  describe "#setup" do
    Crystal::Environment.setup %i(foo bar)

    it "defines custom environment query methods" do
      typeof(Crystal::Environment.foo?).should be_a Bool.class
      typeof(Crystal::Environment.bar?).should be_a Bool.class
      with_env("foo") do
        Crystal::Environment.foo?.should be_true
      end
      Crystal::Environment.bar?.should be_false
    end

    it "keeps default environments" do
      typeof(Crystal::Environment.development?).should be_a Bool.class
      typeof(Crystal::Environment.test?).should be_a Bool.class
      typeof(Crystal::Environment.production?).should be_a Bool.class
    end
  end
end
