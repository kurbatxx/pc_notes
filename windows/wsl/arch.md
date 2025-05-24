```
wsl --update
```
```
wsl --install archlinux
```

```
wsl
```

```
echo "Enter the username for the new user:"
read -r username

# Validate username (basic check for non-empty input)
if [ -z "$username" ]; then
  echo "Error: Username cannot be empty."
  exit 1
fi

echo "Updating system and installing packages..."
pacman -Suy --noconfirm fish micro sudo

echo "Configuring sudoers..."
echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
chmod 440 /etc/sudoers.d/wheel

echo "Creating user $username..."
useradd -m -G wheel -s /bin/fish "$username"

echo "Configuring WSL..."
cat > /etc/wsl.conf << EOF
[boot]
systemd=true

[user]
default=$username
EOF

echo "Setting password for $username..."
passwd "$username"

echo "Setup complete."
exit
```

```
wsl --shutdown
```

```
wsl
```

```
echo > ~/.config/fish/config.fish '''
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

# ollama
set --export OLLAMA_MODELS "$DEV_DIR/ollama_models"
'''

source ~/.config/fish/config.fish

fish_config prompt choose astronaut
fish_config prompt save
```

```
wsl --set-default archlinux
```

```
ip addr show eth0 | grep inet
```


```
wsl --unregister archlinux
```
