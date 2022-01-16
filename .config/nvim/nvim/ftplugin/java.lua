-- -- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
-- local config = {
--   -- The command that starts the language server
--   -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
--   cmd = {

--     -- 💀
--     -- '/usr/lib/jvm/java-17-openjdk/java', -- or '/usr/lib/jvm/java-17-openjdk/java'
--     'java',
--             -- depends on if `java` is in your $PATH env variable and if it points to the right version.

--     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
--     '-Dosgi.bundles.defaultStartLevel=4',
--     '-Declipse.product=org.eclipse.jdt.ls.core.product',
--     '-Dlog.protocol=true',
--     '-Dlog.level=ALL',
--     '-Xms1g',
--     '--add-modules=ALL-SYSTEM',
--     '--add-opens', 'java.base/java.util=ALL-UNNAMED',
--     '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

--     -- 💀
--     '-jar', '~/.local/opt/jdtls-launcher/jdtls-old/plugins/org.eclipse.equinox.launcher.gtk.linux.x86_64_1.2.400.v20210928-1041.jar',
--          -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
--          -- Must point to the                                                     Change this to
--          -- eclipse.jdt.ls installation                                           the actual version


--     -- 💀
--     '-configuration', '~/.local/opt/jdtls-launcher/jdtls/config_linux'
--                     -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
--                     -- Must point to the                      Change to one of `linux`, `win` or `mac`
--                     -- eclipse.jdt.ls installation            Depending on your system.


--     -- 💀
--     -- See `data directory configuration` section in the README
--     -- '-data', '/path/to/unique/per/project/workspace/folder'
--   },

--   -- 💀
--   -- This is the default if not provided, you can remove it. Or adjust as needed.
--   -- One dedicated LSP server & client will be started per unique root_dir
--   root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

--   -- Here you can configure eclipse.jdt.ls specific settings
--   -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
--   -- for a list of options
--   settings = {
--     java = {
--     }
--   }
-- }
-- -- This starts a new client & server,
-- -- or attaches to an existing client & server depending on the `root_dir`.
-- require('jdtls').start_or_attach(config)
