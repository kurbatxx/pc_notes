# disable greeting

set -g fish_greeting
set fish_prompt_pwd_dir_length 0

set --export DEV_DIR "$HOME/dev"

# rust
set --export CARGO_HOME "$DEV_DIR/rust/cargo"
set --export RUSTUP_HOME "$DEV_DIR/rust/rustup"
set --export PATH "$CARGO_HOME/bin" $PATH

# android
set --export ANDROID_HOME "$DEV_DIR/android"
set --export JAVA_HOME "$HOME/.local/share/JetBrains/Toolbox/apps/android-studio/jbr"
# set --export PATH "/bin" $PATH
set --export PATH "$DEV_DIR/android/platform-tools/" $PATH

# dart
set --export PATH "$HOME/.pub-cache/bin" $PATH

# zed and others
set --export PATH "$HOME/.local/bin" $PATH

# bun
set --export BUN_INSTALL "$DEV_DIR/bun"
set --export PATH $BUN_INSTALL/bin $PATH

# flutter
set --export PATH "$DEV_DIR/flutter/bin" $PATH

# python
set --export PIXI_HOME "$DEV_DIR/python/pixi"
set --export UV_INSTALL_DIR "$DEV_DIR/python/uv"

# node
set --export PATH "$DEV_DIR/npm/bin" $PATH

# zig
set --export PATH "$DEV_DIR/zig" $PATH
