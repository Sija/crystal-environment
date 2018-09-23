# ```
# require "crystal-environment"
#
# Crystal.env.name         # => "development"
# Crystal.env.development? # => true
# Crystal.env.production?  # => false
# ```
module Crystal::Environment
  # Environment variable name used to set the current environment `#name`.
  KEY = "CRYSTAL_ENV"

  # Default `Set` of environments.
  VALUES = Set{"development", "test", "production"}

  {% begin %}
  # Default value used when `ENV[{{ KEY }}]?` is `nil`.
  DEFAULT = "development"
  {% end %}

  extend self

  # Appends given *keys* to the list of known environments.
  # For every key, a query method will be created:
  #
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
      {% VALUES << env.id.stringify %}
    {% end %}
  end

  macro finished
    {% for env in VALUES %}
      # Returns `true` if `#name` equals `{{ env }}`, `false` otherwise.
      def {{ env.id }}?
        name == {{ env.id.stringify }}
      end
    {% end %}
  end

  {% begin %}
  # Returns value of `ENV[{{ KEY }}]?` if any, `{{ DEFAULT }}` otherwise.
  def name : String
    ENV[KEY]? || DEFAULT
  end
  {% end %}

  {% begin %}
  # Sets `ENV[{{ KEY }}]?` to the given *name* or unsets it, when passed `nil`.
  def name=(name : String | Symbol?) : String?
    ENV[KEY] = name.try(&.to_s)
  end
  {% end %}

  # :nodoc:
  def to_s(io)
    io << {{ @type.name.stringify }}
    io << '(' << name << ')'
  end
end
