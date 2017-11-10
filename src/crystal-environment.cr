require "./crystal-environment/*"

module Crystal
  def self.env : Crystal::Environment
    Crystal::Environment
  end
end
