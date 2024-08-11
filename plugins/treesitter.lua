return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- "lua"
    })

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.markdown.filetype_to_parsername = "octo"
  end,
}
