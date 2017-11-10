# ```
# require "crystal-environment"
#
# Crystal.env.name         # => "development"
# Crystal.env.development? # => true
# Crystal.env.production?  # => false
# ```
module Crystal::Environment
  # Environment variable name used to set the current environment `#name`.
  ENV_KEY = "CRYSTAL_ENV"

  # Default `Set` of environments.
  ENV_VALUES = Set{"development", "test", "production"}

  {% begin %}
  # Default value used when `ENV[{{ ENV_KEY }}]?` is `nil`.
  ENV_DEFAULT = "development"
  {% end %}

  extend self

  # :nodoc:
  def to_s(io)
    io << {{ @type.name.stringify }}
  end

  # Appends given *keys* to the list of known environments.
  #
  # For every key, a query method will be created:
  # ```
  # Crystal::Environment.setup %w(foo bar)
  #
  # typeof(Crystal.env.foo?) # => Bool
  # typeof(Crystal.env.bar?) # => Bool
  # ```
  #
  # NOTE: `development`, `test` and `production` will always be defined.
  macro setup(keys)
    {% for env in keys %}
      {% ENV_VALUES << env.id.stringify %}
    {% end %}
  end

  macro finished
    {% for env in ENV_VALUES %}
      # Returns `true` if `#name` equals `{{ env }}`, `false` otherwise.
      def {{ env.id }}?
        name == {{ env.id.stringify }}
      end
    {% end %}
  end

  {% begin %}
  # Returns value of `ENV[{{ ENV_KEY }}]?` if any, `{{ ENV_DEFAULT }}` otherwise.
  def name : String
    ENV[ENV_KEY]? || ENV_DEFAULT
  end
  {% end %}

  {% begin %}
  # Sets `ENV[{{ ENV_KEY }}]?` to the given *env* or unsets it, when passed `nil`.
  def name=(env : String?) : String?
    ENV[ENV_KEY] = env
  end
  {% end %}
end
