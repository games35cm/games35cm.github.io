# require 'less'

set :build_dir, '../apps'

activate :livereload
activate :i18n, :path => "/:locale/", :mount_at_root => false
activate :directory_indexes

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

@email = "bfgamesdev@gmail.com"

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  # Minify Javascript on build
  activate :minify_javascript
  # Use relative URLs
  activate :relative_assets
end
