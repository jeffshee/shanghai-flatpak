## Build

```bash
flatpak install flathub org.freedesktop.Platform//23.08 org.freedesktop.Sdk//23.08
flatpak install flathub org.freedesktop.Sdk.Extension.mono6//23.08
```

```bash
flatpak-builder build-dir io.gitgud.shnecro.ShanghaiEXE.yml
```

```bash
flatpak-builder --user --install --force-clean build-dir io.gitgud.shnecro.ShanghaiEXE.yml
flatpak run io.gitgud.shnecro.ShanghaiEXE
```

```bash
flatpak run --devel io.gitgud.shnecro.ShanghaiEXE
```