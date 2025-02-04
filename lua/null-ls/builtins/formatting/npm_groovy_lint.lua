local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "npm-groovy-lint",
    meta = {
        url = "https://github.com/nvuillam/npm-groovy-lint",
        description = "Lint, format and auto-fix Groovy, Jenkinsfile, and Gradle files.",
    },
    method = FORMATTING,
    filetypes = { "groovy", "java" },
    generator_opts = {
        command = "npm-groovy-lint",
        args = { "--format", "--files", "$FILENAME" },
        to_temp_file = true,
    },
    factory = h.formatter_factory,
})
