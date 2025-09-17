return {
    dir = "~/Documents/repos/tools/venv-auto.nvim", -- 指向本地开发目录
    -- "HaoYDai/venv-auto.nvim",

    dependencies = { "neovim/nvim-lspconfig" },

    opts = {
        show_notifications = false,

        log = {
            level = vim.log.levels.DEBUG,
        },
    },
}
