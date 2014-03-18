build_dir = File.expand_path("./source/faed/")
unless File.directory?(build_dir)
  FileUtils.mkdir_p(build_dir)
end
# filePath = build_dir + '/' + DEFAULTS_FILE
# puts "writing #{filePath} #{defaults}" #.colorize(:light_green)

require 'plist'
DEFAULTS_FILE = 'defaults.plist'

defaults = { # do not use dots
  'msgs' => [
    {
      'aps' => {
        'alert' => 'Check out our Flappy Chick Dark Side game!'
      },
      'bfx' => {
        'lnk' => 'https://itunes.apple.com/app/id821926670',
        'act' => 'Download',
        'sch' => 'fb598145903601399'
      },
    },
  ],
}
File.write(build_dir + '/' + DEFAULTS_FILE, defaults.to_plist)


require 'json'
APPS_FILE = 'apps.json'

apps = {
  'results' => [
    # {
    #   'id' => 821926670,
    #   'tier' => 1, # 0.99
    #   'sch' => 'fb598145903601399' # specify to check for install
    # },
  ]
}
File.write(build_dir + '/' + APPS_FILE, apps.to_json)
