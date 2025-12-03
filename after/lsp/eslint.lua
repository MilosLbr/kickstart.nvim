local util = require 'helpers'

return {
  root_dir = util.find_root_with 'tsconfig.base.json',

  on_init = function(client)
    client.config.settings.workingDirectory = { directory = client.config.root_dir }
  end,
}
