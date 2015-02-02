require 'cuba'
require 'cuba/render'
require 'erb'
require_relative 'models/hyphenator'

Cuba.plugin(Cuba::Render)
Cuba.settings[:render][:template_engine] = "erb"
Cuba.use Rack::Static, root: "assets", urls: ["/styles"]

Cuba.define do

  on get do
    on root do
      res.write view("index")
    end
  end

  on post do
    on root do
      on param("input") do |input|
        hyphened = input.move_hyphen
        res.write view("result", { input: hyphened })
      end
      on true do
        res.write view("index")
      end
    end
  end

end