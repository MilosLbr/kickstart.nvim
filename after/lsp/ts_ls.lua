local util = require 'helpers'

return {
  root_dir = util.find_root_with 'tsconfig.base.json',
  on_init = function(client)
    -- Disable formatting
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false

    -- Disable syntax highlighting
    client.server_capabilities.semantic_tokens_provider = nil

    client.config.capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false
  end,
}
