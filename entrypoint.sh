#!/bin/bash

src_url="https://gitgud.io/SHNecro/shanghaiexe/uploads/87b344807ea7b145b1f2ac9c37819aa5/ShanghaiEXE_05XXeWIPX_Linux.tar.gz"
src_sha256="1b1496d235639926d8a164876fca7581afb45b5e566959e22a28e94033da9622"
dest_path="/tmp/ShanghaiEXE.tar.gz"
launcher_dir="$XDG_DATA_HOME/shanghai-exe"

download_tar() {
    echo "Downloading tar from $src_url..."
    curl "$src_url" -o "$dest_path"
}

calculate_sha256() {
    sha256sum "$1" | awk '{print $1}'
}

# TODO: Add launcher update support
if [ ! -d "$launcher_dir" ] || [ -z "$(ls -A "$launcher_dir")" ]; then
    mkdir -p "$launcher_dir"

    download_tar

    if [ ! -f "$dest_path" ]; then
        echo "File not found: $dest_path"
        exit 1
    fi
    
    echo "Verifying SHA-256 checksum..."
    dest_sha256=$(calculate_sha256 "$dest_path")
    if [ "$dest_sha256" != "$src_sha256" ]; then
        echo "SHA-256 verification failed!"
        exit 1
    fi
    
    echo "Extracting tar to launcher directory: $launcher_dir..."
    tar -xzf "$dest_path" -C "$launcher_dir"
    
else
    echo "Launcher directory exists and is not empty. Skipping extraction."
fi

# Change current working direcoty to launcher dir (otherwise KeyConfig will fail)
cd "$launcher_dir" || exit 1

if [ $# -eq 0 ]; then
    echo "No executable specified. Please provide the name of the executable."
    exit 1
fi

executable="$1"

if [ -x "$launcher_dir/$executable" ]; then
    "$launcher_dir/$executable"
else
    echo "Executable file not found: $launcher_dir/$executable"
    exit 1
fi