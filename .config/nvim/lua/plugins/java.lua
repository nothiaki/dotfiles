return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "nvim-java/nvim-java-refactor",
    },
    ft = { "java" }, -- Carrega apenas para arquivos Java
  },
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      local jdtls = require("jdtls")

      -- Define o diretório raiz do projeto
      local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
      local root_dir = jdtls.setup.find_root(root_markers)
      if root_dir == "" then
        return
      end

      -- Define o diretório de workspace
      local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
      local workspace_dir = vim.fn.stdpath('data') .. '/site/java/workspace-root/' .. project_name
      os.execute("mkdir -p " .. workspace_dir)

      -- Caminho para o lombok.jar (se necessário)
      local lombok_path = vim.fn.stdpath('data') .. "/mason/packages/lombok-nightly/lombok.jar"

      -- Configuração do JDTLS
      local config = {
        cmd = {
          '/usr/lib/jvm/java-17-openjdk/bin/java', -- Usa o java disponível no PATH
          '-Declipse.application=org.eclipse.jdt.ls.core.id1',
          '-Dosgi.bundles.defaultStartLevel=4',
          '-Declipse.product=org.eclipse.jdt.ls.core.product',
          '-Dlog.level=ERROR', -- Silencia logs desnecessários
          '-javaagent:' .. lombok_path, -- Remove esta linha se não estiver usando Lombok
          '-Xms1g',
          '--add-modules=ALL-SYSTEM',
          '--add-opens', 'java.base/java.util=ALL-UNNAMED',
          '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
          '-jar', vim.fn.glob(vim.fn.stdpath('data') .. '/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar'),
          '-configuration', vim.fn.stdpath('data') .. '/mason/packages/jdtls/config_linux',
          '-data', workspace_dir,
        },
        root_dir = root_dir,
        settings = {
          java = {
            home = '/usr/lib/jvm/java-17-openjdk/',

            eclipse = {
              downloadSources = true,
            },
            configuration = {
              updateBuildConfiguration = "interactive",
              runtimes = {
                {
                  name = "JavaSE-18",
                  path = "/usr/lib/jvm/temurin-18-jdk",
                },
                {
                  name = "JavaSE-17",
                  path = "/usr/lib/jvm/temurin-17-jdk",
                },
              },
            },
            maven = {
              downloadSources = true,
            },
            implementationsCodeLens = {
              enabled = true,
            },
            referencesCodeLens = {
              enabled = true,
            },
            references = {
              includeDecompiledSources = true,
            },
          },
        },
      }

      -- Inicia ou anexa o JDTLS
      jdtls.start_or_attach(config)
    end,
  },
}
