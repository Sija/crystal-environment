require "./spec_helper"

describe "Crystal.env" do
  it "makes an alias to Crystal::Environment" do
    Crystal.env.should be_a Crystal::Environment
  end
end

describe "Crystal::Environment" do
  it "returns \"development\" as default #name when CRYSTAL_ENV variable is not set" do
    with_env(nil) do
      Crystal::Environment.name.should eq "development"
    end
  end

  it "returns value of CRYSTAL_ENV variable as #name" do
    with_env("test") do
      Crystal::Environment.name.should eq "test"
    end
  end

  it "sets given #name as value of CRYSTAL_ENV variable" do
    old_env = ENV["CRYSTAL_ENV"]?
    begin
      Crystal::Environment.name = "test"
      ENV["CRYSTAL_ENV"]?.should eq "test"
    ensure
      Crystal::Environment.name = old_env
      ENV["CRYSTAL_ENV"]?.should eq old_env
    end
  end

  it "returns true for given CRYSTAL_ENV when queried" do
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
end
