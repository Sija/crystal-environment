crystal_doc_search_index_callback({"repository_name":"github.com/Sija/crystal-environment","body":"# crystal-environment [![Build Status](https://travis-ci.org/Sija/crystal-environment.svg?branch=master)](https://travis-ci.org/Sija/crystal-environment) [![Releases](https://img.shields.io/github/release/Sija/crystal-environment.svg)](https://github.com/Sija/crystal-environment/releases) [![License](https://img.shields.io/github/license/Sija/crystal-environment.svg)](https://github.com/Sija/crystal-environment/blob/master/LICENSE)\n\nAdds `Crystal::Environment` module for querying `CRYSTAL_ENV` variable in a\ncompile-time safe manner.\n\n## Installation\n\nAdd this to your application's `shard.yml`:\n\n```yaml\ndependencies:\n  crystal-environment:\n    github: Sija/crystal-environment\n```\n\n## Usage\n\n```crystal\nrequire \"crystal-environment\"\n\nCrystal.env.name         # => \"development\"\nCrystal.env.development? # => true\nCrystal.env.production?  # => false\n\n# Defining custom environments\n\nCrystal.env.staging? # Throws compile-time error\nCrystal::Environment.setup %i(staging)\nCrystal.env.staging? # => true\n```\n\n## Contributing\n\n1. [Fork it](https://github.com/Sija/crystal-environment/fork)\n2. Create your feature branch (`git checkout -b my-new-feature`)\n3. Commit your changes (`git commit -am 'Add some feature'`)\n4. Push to the branch (`git push origin my-new-feature`)\n5. Create a new [Pull Request](https://github.com/Sija/crystal-environment/pulls)\n\n## Contributors\n\n- [@Sija](https://github.com/Sija) Sijawusz Pur Rahnama - creator, maintainer\n","program":{"html_id":"github.com/Sija/crystal-environment/toplevel","path":"toplevel.html","kind":"module","full_name":"Top Level Namespace","name":"Top Level Namespace","abstract":false,"superclass":null,"ancestors":[],"locations":[],"repository_name":"github.com/Sija/crystal-environment","program":true,"enum":false,"alias":false,"aliased":"","const":false,"constants":[],"included_modules":[],"extended_modules":[],"subclasses":[],"including_types":[],"namespace":null,"doc":null,"summary":null,"class_methods":[],"constructors":[],"instance_methods":[],"macros":[],"types":[{"html_id":"github.com/Sija/crystal-environment/Crystal","path":"Crystal.html","kind":"module","full_name":"Crystal","name":"Crystal","abstract":false,"superclass":null,"ancestors":[],"locations":[{"filename":"crystal-environment.cr","line_number":3,"url":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment.cr"}],"repository_name":"github.com/Sija/crystal-environment","program":false,"enum":false,"alias":false,"aliased":"","const":false,"constants":[],"included_modules":[],"extended_modules":[],"subclasses":[],"including_types":[],"namespace":null,"doc":null,"summary":null,"class_methods":[{"id":"env:Crystal::Environment-class-method","html_id":"env:Crystal::Environment-class-method","name":"env","doc":null,"summary":null,"abstract":false,"args":[],"args_string":" : Crystal::Environment","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment.cr#L4","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment.cr#L4","def":{"name":"env","args":[],"double_splat":null,"splat_index":null,"yields":null,"block_arg":null,"return_type":"Crystal::Environment","visibility":"Public","body":"Crystal::Environment"}}],"constructors":[],"instance_methods":[],"macros":[],"types":[{"html_id":"github.com/Sija/crystal-environment/Crystal/Environment","path":"Crystal/Environment.html","kind":"module","full_name":"Crystal::Environment","name":"Environment","abstract":false,"superclass":null,"ancestors":[],"locations":[{"filename":"crystal-environment/environment.cr","line_number":8,"url":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr"},{"filename":"crystal-environment/version.cr","line_number":1,"url":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/version.cr"}],"repository_name":"github.com/Sija/crystal-environment","program":false,"enum":false,"alias":false,"aliased":"","const":false,"constants":[{"id":"DEFAULT","name":"DEFAULT","value":"\"development\"","doc":"Default value used when `ENV[\"CRYSTAL_ENV\"]?` is `nil`.","summary":"<p>Default value used when <code>ENV[\"CRYSTAL_ENV\"]?</code> is <code>nil</code>.</p>"},{"id":"KEY","name":"KEY","value":"\"CRYSTAL_ENV\"","doc":"Environment variable name used to set the current environment `#name`.","summary":"<p>Environment variable name used to set the current environment <code><a href=\"../Crystal/Environment.html#name%3AString-instance-method\">#name</a></code>.</p>"},{"id":"VALUES","name":"VALUES","value":"Set {\"development\", \"test\", \"production\"}","doc":"Default `Set` of environments.","summary":"<p>Default <code>Set</code> of environments.</p>"},{"id":"VERSION","name":"VERSION","value":"\"0.1.0\"","doc":null,"summary":null}],"included_modules":[],"extended_modules":[{"html_id":"github.com/Sija/crystal-environment/Crystal/Environment","kind":"module","full_name":"Crystal::Environment","name":"Environment"}],"subclasses":[],"including_types":[],"namespace":{"html_id":"github.com/Sija/crystal-environment/Crystal","kind":"module","full_name":"Crystal","name":"Crystal"},"doc":"```\nrequire \"crystal-environment\"\n\nCrystal.env.name         # => \"development\"\nCrystal.env.development? # => true\nCrystal.env.production?  # => false\n```","summary":"<pre><code class=\"language-require \"crystal-environment\"\"></code></pre>","class_methods":[],"constructors":[],"instance_methods":[{"id":"development?-instance-method","html_id":"development?-instance-method","name":"development?","doc":"Returns `true` if `#name` equals `\"development\"`, `false` otherwise.","summary":"<p>Returns <code>true</code> if <code><a href=\"../Crystal/Environment.html#name%3AString-instance-method\">#name</a></code> equals <code>\"development\"</code>, <code>false</code> otherwise.</p>","abstract":false,"args":[],"args_string":"","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L39","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L39","def":{"name":"development?","args":[],"double_splat":null,"splat_index":null,"yields":null,"block_arg":null,"return_type":"","visibility":"Public","body":"name == \"development\""}},{"id":"name:String-instance-method","html_id":"name:String-instance-method","name":"name","doc":"Returns value of `ENV[\"CRYSTAL_ENV\"]?` if any, `\"development\"` otherwise.","summary":"<p>Returns value of <code>ENV[\"CRYSTAL_ENV\"]?</code> if any, <code>\"development\"</code> otherwise.</p>","abstract":false,"args":[],"args_string":" : String","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L48","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L48","def":{"name":"name","args":[],"double_splat":null,"splat_index":null,"yields":null,"block_arg":null,"return_type":"String","visibility":"Public","body":"ENV[KEY]? || DEFAULT"}},{"id":"name=(name:String|Symbol?):String?-instance-method","html_id":"name=(name:String|Symbol?):String?-instance-method","name":"name=","doc":"Sets `ENV[\"CRYSTAL_ENV\"]?` to the given *name* or unsets it, when passed `nil`.","summary":"<p>Sets <code>ENV[\"CRYSTAL_ENV\"]?</code> to the given <em>name</em> or unsets it, when passed <code>nil</code>.</p>","abstract":false,"args":[{"name":"name","doc":null,"default_value":"","external_name":"name","restriction":"String | Symbol | ::Nil"}],"args_string":"(name : String | Symbol?) : String?","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L55","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L55","def":{"name":"name=","args":[{"name":"name","doc":null,"default_value":"","external_name":"name","restriction":"String | Symbol | ::Nil"}],"double_splat":null,"splat_index":null,"yields":null,"block_arg":null,"return_type":"String | ::Nil","visibility":"Public","body":"ENV[KEY] = name.try(&.to_s)"}},{"id":"production?-instance-method","html_id":"production?-instance-method","name":"production?","doc":"Returns `true` if `#name` equals `\"production\"`, `false` otherwise.","summary":"<p>Returns <code>true</code> if <code><a href=\"../Crystal/Environment.html#name%3AString-instance-method\">#name</a></code> equals <code>\"production\"</code>, <code>false</code> otherwise.</p>","abstract":false,"args":[],"args_string":"","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L39","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L39","def":{"name":"production?","args":[],"double_splat":null,"splat_index":null,"yields":null,"block_arg":null,"return_type":"","visibility":"Public","body":"name == \"production\""}},{"id":"test?-instance-method","html_id":"test?-instance-method","name":"test?","doc":"Returns `true` if `#name` equals `\"test\"`, `false` otherwise.","summary":"<p>Returns <code>true</code> if <code><a href=\"../Crystal/Environment.html#name%3AString-instance-method\">#name</a></code> equals <code>\"test\"</code>, <code>false</code> otherwise.</p>","abstract":false,"args":[],"args_string":"","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L39","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L39","def":{"name":"test?","args":[],"double_splat":null,"splat_index":null,"yields":null,"block_arg":null,"return_type":"","visibility":"Public","body":"name == \"test\""}}],"macros":[{"id":"setup(keys)-macro","html_id":"setup(keys)-macro","name":"setup","doc":"Appends given *keys* to the list of known environments.\nFor every key, a query method will be created:\n\n```\nCrystal::Environment.setup %w(foo bar)\n\ntypeof(Crystal.env.foo?) # => Bool\ntypeof(Crystal.env.bar?) # => Bool\n```\n\nNOTE: `development`, `test` and `production` will always be defined.","summary":"<p>Appends given <em>keys</em> to the list of known environments.</p>","abstract":false,"args":[{"name":"keys","doc":null,"default_value":"","external_name":"keys","restriction":""}],"args_string":"(keys)","source_link":"https://github.com/Sija/crystal-environment/blob/d408ab5da5ce6d8a867b170d504936fa2258c36c/src/crystal-environment/environment.cr#L33","def":{"name":"setup","args":[{"name":"keys","doc":null,"default_value":"","external_name":"keys","restriction":""}],"double_splat":null,"splat_index":null,"block_arg":null,"visibility":"Public","body":"    \n{% for env in keys %}\n      {% VALUES << env.id.stringify %}\n    {% end %}\n\n  \n"}}],"types":[]}]}]}})