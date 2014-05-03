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

GAMES35CM_ROOT = 'http://games35cm.github.io/apps/faed'
# GAMES35CM_ROOT = 'http://localhost:4567/faed'

apps = {
  'results' => [
    {
      'id' => 868124960,
      'tier' => 0, # equals $0.99
      'edit' => "#{GAMES35CM_ROOT}/editorial/may4?cache=no",
      'screenshotUrls' => [
        "#{GAMES35CM_ROOT}/editorial/may4/1.JPG",
        "#{GAMES35CM_ROOT}/editorial/may4/2.JPG",
        "#{GAMES35CM_ROOT}/editorial/may4/3.JPG",
        "#{GAMES35CM_ROOT}/editorial/may4/4.JPG",
        "#{GAMES35CM_ROOT}/editorial/may4/5.JPG"
      ]
    },
    # {
    #   'id' => 656620224,
    #   'tier' => 0, # equals $0.99
    #   'edit' => "#{GAMES35CM_ROOT}/editorial/may?cache=no",
    #   'screenshotUrls' => [
    #     "#{GAMES35CM_ROOT}/editorial/may/1.JPG",
    #     "#{GAMES35CM_ROOT}/editorial/may/2.JPG",
    #     "#{GAMES35CM_ROOT}/editorial/may/3.JPG",
    #     "#{GAMES35CM_ROOT}/editorial/may/4.JPG",
    #     "#{GAMES35CM_ROOT}/editorial/may/5.JPG"
    #   ]
    # },
    # {
    #   'id' => 821926670,
    #   'tier' => 1, # equals $0.99
    #   'sch' => 'fb598145903601399', # specify to check for install
    #   'edit' => 'http://games35cm.github.io/apps/faed/editorial/29apr?cache=no',
    #   'screenshotUrls' => [
    #     "http://games35cm.github.io/apps/faed/editorial/29apr/1.png",
    #     "http://games35cm.github.io/apps/faed/editorial/29apr/3.png",
    #     "http://games35cm.github.io/apps/faed/editorial/29apr/2.png"
    #   ]
    # },
  ]
}

File.write(build_dir + '/' + APPS_PHONE_FILE, apps.to_json)
File.write(build_dir + '/' + APPS_PAD_FILE, apps.to_json)
