# Shanghai.EXE Flatpak
## Build
1. Build dependencies
```bash
# Install flatpak and flatpak-builder, follow the guide for your distro
# Ref: https://flatpak.org/setup/
# Ref: https://docs.flatpak.org/en/latest/first-build.html

# Install platform runtime and SDK
flatpak install flathub org.freedesktop.Platform//23.08 org.freedesktop.Sdk//23.08
```
2. Build only
```bash
flatpak-builder build-dir io.gitgud.shnecro.ShanghaiEXE.yml
```
3. Build and install
```bash
flatpak-builder --user --install --force-clean build-dir io.gitgud.shnecro.ShanghaiEXE.yml
```
4. _Jack in! Shanghai.EXE! Execute!_ 😎
```bash
# To launch the game
flatpak run io.gitgud.shnecro.ShanghaiEXE
# To launch the key config dialog
flatpak run --command="KeyConfig" io.gitgud.shnecro.ShanghaiEXE
```

## Credits
- Continued development
  - https://gitgud.io/SHNecro/shanghaiexe
- Hi-Res app icon used in Flatpak
  - Modified from [kuroさん's illustration](https://seiga.nicovideo.jp/seiga/im6716478)
