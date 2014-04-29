build_dir = File.expand_path("./source/faed/")
unless File.directory?(build_dir)
  FileUtils.mkdir_p(build_dir)
end
# filePath = build_dir + '/' + DEFAULTS_FILE
# puts "writing #{filePath} #{defaults}" #.colorize(:light_green)

# require 'plist'
require 'json'
# DEFAULTS_FILE = 'defaults.plist'
DEFAULTS_FILE = 'defaults.json'

defaults = { # do not use dots
  'msgs' => [
    # {
    #   'aps' => {
    #     'alert' => 'Check out our Flappy Chick Dark Side game!'
    #   },
    #   'bfx' => {
    #     'lnk' => 'https://itunes.apple.com/app/id821926670',
    #     'act' => 'Download',
    #     'sch' => 'fb598145903601399'
    #   },
    # },
  ],
}
# File.write(build_dir + '/' + DEFAULTS_FILE, defaults.to_plist)
File.write(build_dir + '/' + DEFAULTS_FILE, defaults.to_json)


APPS_PHONE_FILE = 'apps-phone.json'
APPS_PAD_FILE = 'apps-pad.json'

apps = {
  'results' => [
    {
      'id' => 821926670,
      'tier' => 1, # equals $0.99
      'sch' => 'fb598145903601399', # specify to check for install
      'edit' => 'http://games35cm.github.io/apps/faed/editorial/29apr?cache=no',
      'screenshotUrls' => [
        "http://games35cm.github.io/apps/faed/editorial/29apr/1.png",
        "http://games35cm.github.io/apps/faed/editorial/29apr/3.png",
        "http://games35cm.github.io/apps/faed/editorial/29apr/2.png"
      ]
    },
  ]
}

File.write(build_dir + '/' + APPS_PHONE_FILE, apps.to_json)
File.write(build_dir + '/' + APPS_PAD_FILE, apps.to_json)
