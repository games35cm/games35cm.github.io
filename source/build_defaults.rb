# require 'plist'
require 'json'

DEFAULTS_FILE = 'defaults.json'

#
# NEVER EVER USE DOTS INHERE
#

defaults = {
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

  'apps' => [
    {
      'id' => 821926670,
      'tier' => 1, # 0.99
      'scheme' => 'fb598145903601399' # specify to check for install
    },
  ]
}

build_dir = File.expand_path("./source/faed/")
unless File.directory?(build_dir)
  FileUtils.mkdir_p(build_dir)
end
filePath = build_dir + '/' + DEFAULTS_FILE
puts "writing #{filePath} #{defaults}" #.colorize(:light_green)
File.write(filePath, defaults.to_json)
