lvim.format_on_save = true
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.sections.lualine_c = { "diff" }
-- general
lvim.log.level = "info"
lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
}
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
      require('go.format').goimport()
    end,
    group = format_sync_grp,
})
-- lvim.colorscheme = "onedark"
vim.g.transparent_background = false -- transparent background(Default: false)
vim.g.italic_comments = true -- italic comments(Default: true)
vim.g.italic_keywords = true -- italic keywords(Default: true)
vim.g.italic_functions = true -- italic functions(Default: false)
vim.g.italic_variables = true -- italic variables(Default: false)
lvim.transparent_window = true
vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
--vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true -- enable persistent undo
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = true -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.g.one_nvim_transparent_bg = true
-- to disable icons and use a minimalist setup, uncomment the following
lvim.use_icons = true
-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
    "go",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- custom folder icon
require 'nvim-web-devicons'.set_icon({
    lir_folder_icon = {
        icon = "",
        color = "#7ebae4",
        name = "LirFolderNode"
    }
})

--- java
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "clang-format",
        filetypes = { "java" },
        extra_args = { "--style", "Google" },
    }
}
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands = {
    {
        "BufEnter", -- see `:h autocmd-events`
        { -- this table is passed verbatim as `opts` to `nvim_create_autocmd`
            pattern = { "*.json", "*.jsonc" }, -- see `:h autocmd-events`
            command = "setlocal wrap",
        }
    }
}

-- Additional Plugins
lvim.plugins = {
    -- { "lunarvim/colorschemes" },
    { "Th3Whit3Wolf/one-nvim" },
    { 'ray-x/go.nvim',
        config = function()
          require('go').require('go').setup({
              disable_defaults = false, -- true|false when true set false to all boolean settings and replace all table
              -- settings with {}
              go = 'go', -- go command, can be go[default] or go1.18beta1
              goimport = 'gopls', -- goimport command, can be gopls[default] or goimport
              fillstruct = 'gopls', -- can be nil (use fillstruct, slower) and gopls
              gofmt = 'gofumpt', --gofmt cmd,
              max_line_len = 128, -- max line length in golines format, Target maximum line length for golines
              tag_transform = false, -- can be transform option("snakecase", "camelcase", etc) check gomodifytags for details and more options
              tag_options = 'json=omitempty', -- sets options sent to gomodifytags, i.e., json=omitempty
              gotests_template = "", -- sets gotests -template parameter (check gotests for details)
              gotests_template_dir = "", -- sets gotests -template_dir parameter (check gotests for details)
              comment_placeholder = '', -- comment_placeholder your cool placeholder e.g. ﳑ       
              icons = { breakpoint = '🧘', currentpos = '🏃' }, -- setup to `false` to disable icons setup
              verbose = false, -- output loginf in messages
              lsp_cfg = false, -- true: use non-default gopls setup specified in go/lsp.lua
              -- false: do nothing
              -- if lsp_cfg is a table, merge table with with non-default gopls setup in go/lsp.lua, e.g.
              --   lsp_cfg = {settings={gopls={matcher='CaseInsensitive', ['local'] = 'your_local_module_path', gofumpt = true }}}
              lsp_gofumpt = false, -- true: set default gofmt in gopls format to gofumpt
              lsp_on_attach = nil, -- nil: use on_attach function defined in go/lsp.lua,
              --      when lsp_cfg is true
              -- if lsp_on_attach is a function: use this function as on_attach function for gopls
              lsp_keymaps = true, -- set to false to disable gopls/lsp keymap
              lsp_codelens = true, -- set to false to disable codelens, true by default, you can use a function
              -- function(bufnr)
              --    vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>F", "<cmd>lua vim.lsp.buf.formatting()<CR>", {noremap=true, silent=true})
              -- end
              -- to setup a table of codelens
              lsp_diag_hdlr = true, -- hook lsp diag handler
              lsp_diag_underline = true,
              -- virtual text setup
              lsp_diag_virtual_text = { space = 0, prefix = "" },
              lsp_diag_signs = true,
              lsp_diag_update_in_insert = false,
              lsp_document_formatting = true,
              -- set to true: use gopls to format
              -- false if you want to use other formatter tool(e.g. efm, nulls)
              lsp_inlay_hints = {
                  enable = true,
                  -- Only show inlay hints for the current line
                  only_current_line = false,
                  -- Event which triggers a refersh of the inlay hints.
                  -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
                  -- not that this may cause higher CPU usage.
                  -- This option is only respected when only_current_line and
                  -- autoSetHints both are true.
                  only_current_line_autocmd = "CursorHold",
                  -- whether to show variable name before type hints with the inlay hints or not
                  -- default: false
                  show_variable_name = true,
                  -- prefix for parameter hints
                  parameter_hints_prefix = " ",
                  show_parameter_hints = true,
                  -- prefix for all the other hints (type, chaining)
                  other_hints_prefix = "=> ",
                  -- whether to align to the lenght of the longest line in the file
                  max_len_align = false,
                  -- padding from the left if max_len_align is true
                  max_len_align_padding = 1,
                  -- whether to align to the extreme right or not
                  right_align = false,
                  -- padding from the right if right_align is true
                  right_align_padding = 6,
                  -- The color of the hints
                  highlight = "Comment",
              },
              gopls_cmd = nil, -- if you need to specify gopls path and cmd, e.g {"/home/user/lsp/gopls", "-logfile","/var/log/gopls.log" }
              gopls_remote_auto = true, -- add -remote=auto to gopls
              gocoverage_sign = "█",
              sign_priority = 5, -- change to a higher number to override other signs
              dap_debug = true, -- set to false to disable dap
              dap_debug_keymap = true, -- true: use keymap for debugger defined in go/dap.lua
              -- false: do not use keymap in go/dap.lua.  you must define your own.
              -- windows: use visual studio keymap
              dap_debug_gui = {}, -- bool|table put your dap-ui setup here set to false to disable
              dap_debug_vt = { enabled_commands = true, all_frames = true }, -- bool|table put your dap-virtual-text setup here set to false to disable
              dap_port = 38697, -- can be set to a number, if set to -1 go.nvim will pickup a random port
              dap_timeout = 15, --  see dap option initialize_timeout_sec = 15,
              dap_retries = 20, -- see dap option max_retries
              build_tags = "tag1,tag2", -- set default build tags
              textobjects = true, -- enable default text jobects through treesittter-text-objects
              test_runner = 'go', -- one of {`go`, `richgo`, `dlv`, `ginkgo`, `gotestsum`}
              verbose_tests = true, -- set to add verbose flag to tests deprecated, see '-v' option
              run_in_floaterm = false, -- set to true to run in float window. :GoTermClose closes the floatterm
              -- float term recommend if you use richgo/ginkgo with terminal color

              floaterm = { -- position
                  posititon = 'auto', -- one of {`top`, `bottom`, `left`, `right`, `center`, `auto`}
                  width = 0.45, -- width of float window if not auto
                  height = 0.98, -- height of float window if not auto
              },
              trouble = false, -- true: use trouble to open quickfix
              test_efm = false, -- errorfomat for quickfix, default mix mode, set to true will be efm only
              luasnip = false, -- enable included luasnip snippets. you can also disable while add lua/snips folder to luasnip load
              --  Do not enable this if you already added the path, that will duplicate the entries
          })
        end },
    { 'ray-x/guihua.lua' }, -- recommended if need floating window support
    { "ray-x/lsp_signature.nvim",
        config = function() require "lsp_signature".on_attach() end,
        event = "BufRead"
    },
    {
        "jackMort/ChatGPT.nvim",
        config = function()
          require("chatgpt").setup({
              -- optional configuration
          })
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    }
}
