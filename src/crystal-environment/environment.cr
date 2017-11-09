module Crystal::Environment
  ENV_KEY     = "CRYSTAL_ENV"
  ENV_DEFAULT = "development"

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
    ENV[ENV_KEY]? || ENV_DEFAULT
  end

  def name=(env : String?)
    ENV[ENV_KEY] = env
  end
end
