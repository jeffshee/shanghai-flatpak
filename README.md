# Shanghai.EXE Flatpak
## Build
1. Build dependencies
```bash
# Install flatpak and flatpak-builder, follow the guide for your distro
# Ref: https://flatpak.org/setup/

# Alternately, you can also install flatpak-builder as a flatpak (recommended for Steam Deck)
flatpak install flathub org.flatpak.Builder
# Install platform runtime and SDK
flatpak install flathub org.freedesktop.Platform//23.08 org.freedesktop.Sdk//23.08
```
2. Clone this repo
```bash
git clone https://github.com/jeffshee/shanghai-flatpak.git
cd shanghai-flatpak
```
3. Build only (You may skip this step)
```bash
flatpak-builder build-dir io.gitgud.shnecro.ShanghaiEXE.yml

# Alternately, use this instead if you have installed flatpak-builder as a flatpak
flatpak run org.flatpak.Builder build-dir io.gitgud.shnecro.ShanghaiEXE.yml
```
4. Build and install
```bash
flatpak-builder --user --install --force-clean build-dir io.gitgud.shnecro.ShanghaiEXE.yml

# Alternately, use this instead if you have installed flatpak-builder as a flatpak
flatpak run org.flatpak.Builder --user --install --force-clean build-dir io.gitgud.shnecro.ShanghaiEXE.yml
```
5. _Jack in! Shanghai.EXE! Execute!_ 😎
```bash
# To launch the game
flatpak run io.gitgud.shnecro.ShanghaiEXE
# To launch the key config dialog
flatpak run --command="KeyConfig" io.gitgud.shnecro.ShanghaiEXE
```

## Q&A
- Q: Where is my savefile?
  - A: Here, `~/.var/app/io.gitgud.shnecro.ShanghaiEXE/data/shanghai-exe/save.she`. Please backup your savefile regularly~

## Credits
- Continued development
  - https://gitgud.io/SHNecro/shanghaiexe
- Hi-Res app icon used in Flatpak
  - Modified from [kuroさん's illustration](https://seiga.nicovideo.jp/seiga/im6716478)
