require 'rails'
require 'rails/generators'
require 'rails/generators/migration'

class Translator
  class InstallGenerator < ::Rails::Generators::Base
    desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

    def do_nothing
      say_status("deprecated", "You are using Rails 3.1 with the asset pipeline enabled, so this generator is not needed.")
      say_status("", "The necessary files are already in your asset pipeline.")
      say_status("", "Just add `//= require jquery` and `//= require jquery_ujs` to your app/assets/javascripts/application.js")
      say_status("", "If you upgraded your app from Rails 3.0 and still have jquery.js, rails.js, or jquery_ujs.js in your javascripts, be sure to remove them.")
      say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
      # ok, nothing
    end
  end
end