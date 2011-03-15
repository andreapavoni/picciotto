class Picciotto < Padrino::Application
	register SassInitializer
	register Padrino::Helpers
	#register Padrino::Mailer

	##
	# Application configuration options
	#
	# set :raise_errors, true     # Show exceptions (default for development)
	# set :public, "foo/bar"      # Location for static assets (default root/public)
	# set :reload, false          # Reload application files (default in development)
	# set :default_builder, "foo" # Set a custom form builder (default 'StandardFormBuilder')
	# set :locale_path, "bar"     # Set path for I18n translations (defaults to app/locale/)
	# enable  :sessions           # Disabled by default
	# disable :flash              # Disables rack-flash (enabled by default if sessions)
	# layout  :my_layout          # Layout can be in views/layouts/foo.ext or views/foo.ext (default :application)
	#

	##
	# You can configure for a specified environment like:
	#
	#   configure :development do
	#     set :foo, :bar
	#     disable :asset_stamp # no asset timestamping for dev
	#   end
	#

	error 404 do
		render 'errors/404'
	end

	# needed for heroku deployments
	if Padrino.env == :production
		Sass::Plugin.options[:never_update] = true
	end

	Compass.configure_sass_plugin!
	Compass.add_project_configuration(File.join(Padrino.root, 'config', 'compass.rb'))
	Compass.handle_configuration_change!
end
