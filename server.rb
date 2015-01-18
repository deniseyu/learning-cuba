require 'cuba'
require 'cuba/render'
require 'erb'

# Cuba.use Rack::Session::Cookie, :secret => "__a_very_long_string__"
# Cuba.use Rack::Protection
Cuba.plugin(Cuba::Render)
Cuba.settings[:render][:template_engine] = "erb"

Cuba.define do

  on root do
    res.write view("index")
  end

end