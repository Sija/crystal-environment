module Crystal::Environment
  ENV_KEY     = "CRYSTAL_ENV"
  ENV_VALUES  = Set{"development", "test", "production"}
  ENV_DEFAULT = "development"

  extend self

  def to_s(io)
    io << {{ @type.name.stringify }}
  end

  # Adds given *keys* to the list of known environments.
  #
  # ```
  # Crystal::Environment.foo? # => undefined method 'foo?' for Crystal::Environment:Module
  # Crystal::Environment.bar? # => undefined method 'bar?' for Crystal::Environment:Module
  #
  # Crystal::Environment.setup %w(foo bar)
  #
  # Crystal::Environment.foo? # => false
  # Crystal::Environment.bar? # => false
  # ```
  #
  # NOTE: Calling this macro is additive, meaning it will only append *keys*.
  macro setup(keys)
    {% for env in keys %}
      {% ENV_VALUES << env.id.stringify %}
    {% end %}
  end

  macro finished
    {% for env in ENV_VALUES %}
      def {{ env.id }}?
        name == {{ env.id.stringify }}
      end
    {% end %}
  end

  def name
    ENV[ENV_KEY]? || ENV_DEFAULT
  end

  def name=(env : String?)
    ENV[ENV_KEY] = env
  end
end
