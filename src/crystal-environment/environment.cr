module Crystal::Environment
  extend self

  def to_s(io)
    io << {{ @type.name.stringify }}
  end

  {% for env in %i(development test production) %}
    def {{ env.id }}?
      name == {{ env.id.stringify }}
    end
  {% end %}

  def name
    ENV["CRYSTAL_ENV"]? || "development"
  end

  def name=(env : String?)
    ENV["CRYSTAL_ENV"] = env
  end
end
