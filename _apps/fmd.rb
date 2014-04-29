# require 'plist'
# DEFAULTS_FILE = 'defaults.plist'

require 'json'
DEFAULTS_FILE = 'defaults.json'

#
# NEVER EVER USE DOTS IN THE FUTURE !!!
#

defaults = {
  'msgs' => '',
  'com.bfx.motd' => '',
  'com.bfx.cii' => 132,
  'com.bfx.cri' => 200,
  # 'allowedHosts' => [
  #   'vk.com',
  #   'vk.ru'
  # ],
  'blacklistedHosts' => [
    'youtube.com',
    'googlevideo.com',
    'soundcloud.com',
    'mp3skull.com',
    'mp3monkey.com',
    'soundowl.com'
  ],
  # 'sales' => 'hotsales',
  # 'com.bfx.motd' => {
  #   'aps' => {
  #     'alert' => 'Check out our Flappy Chick Dark Side game!'
  #   },
  #   'bfx' => {
  #     'lnk' => 'https://itunes.apple.com/app/id821926670',
  #     'act' => 'Download',
  #     'sch' => 'fb598145903601399'
  #   }
  # },
  # 'inhouse' => {
    # 'scheme' => 'yaru',
    # 'url' => 'http://google.ru/dwq',
    # 'text' => 'GET VwwIDEOS FREE XXX',
    # 'color' => 'EF4DB6',
    # 'backcolor' => '4A4A4A',
  # }
}

# File.write(File.expand_path("./source/defaults.plist"), defaults.to_plist)
build_dir = File.expand_path("./source/localizable/fmd")
unless File.directory?(build_dir)
  FileUtils.mkdir_p(build_dir)
end
filePath = build_dir + '/' + DEFAULTS_FILE
puts "writing #{filePath} #{defaults}" #.colorize(:light_green)
# File.write(filePath, defaults.to_plist)
File.write(filePath, defaults.to_json)
File.write(File.join(File.expand_path("../apps/en/fmd"), DEFAULTS_FILE), defaults.to_json)
