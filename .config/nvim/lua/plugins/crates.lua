return {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    opts = {},
    keys = {
        {
            "<leader>cu",
            function()
                require("crates").update_all_crates()
                require("crates").upgrade_all_crates()
            end,
            desc = "[c]rates update and [u]pgrade all",
        },
        {
            "<leader>cc",
            function()
                require("crates").open_crates_io()
            end,
            desc = "[c]rates open [c]rates-io",
        },
        {
            "<leader>cf",
            function()
                require("crates").show_features_popup()
                require("crates").focus_popup()
            end,
            desc = "[c]rates show [f]eatures",
        },
        {
            "<leader>cr",
            function()
                require("crates").reload()
            end,
            desc = "[c]rates [t]oggle",
        },
        {
            "<leader>cv",
            function()
                require("crates").show_versions_popup()
                require("crates").focus_popup()
            end,
            desc = "[c]rates show [v]ersions",
        },
    },
}
