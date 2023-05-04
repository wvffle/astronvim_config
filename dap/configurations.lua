return {
  vue = {
    {
      name = 'Firefox (Launch)',
      type = 'firefox',
      request = 'launch',
      reAttach = true,
      url = 'http://localhost:3000',
      webRoot = '${workspaceFolder}',
      -- firefoxExecutable = '/usr/bin/flatpak-spawn --host flatpak start io.gitlab.librewolf-community',
    },
  },
}
