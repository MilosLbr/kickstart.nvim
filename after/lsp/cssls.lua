local util = require 'helpers'

return {
  root_dir = util.find_root_with 'tsconfig.base.json',
}
