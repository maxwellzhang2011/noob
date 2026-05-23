#!/bin/bash

case "$1" in
    version)
        echo "0.1.2"
        ;;
    ntre_inst)
	NVIM_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/nvim"
	PLUGIN_DIR="$NVIM_DATA/site/pack/plugins/start"

	echo "Creating plugin directory..."
	mkdir -p "$PLUGIN_DIR"

	echo "Cloning Neo-tree and dependencies..."
	git clone https://github.com/nvim-lua/plenary.nvim "$PLUGIN_DIR/plenary.nvim"
	git clone https://github.com/nvim-tree/nvim-web-devicons "$PLUGIN_DIR/nvim-web-devicons"
	git clone https://github.com/MunifTanjim/nui.nvim "$PLUGIN_DIR/nui.nvim"
	git clone https://github.com/nvim-neo-tree/neo-tree.nvim "$PLUGIN_DIR/neo-tree.nvim"

	echo "neo-tree installed"
	;;
    noob_inst)
        echo "installing noob neovim package"

        if [ ! -d "$HOME/.config/nvim" ]; then
            echo "building nvim folder"
            mkdir -p "$HOME/.config/nvim"
        fi

        if [ ! -f "$HOME/.config/nvim/init.lua" ]; then
            echo "setting up init.lua"
            touch "$HOME/.config/nvim/init.lua"
        fi

        if [ ! -d "$HOME/.config/nvim/lua" ]; then
            echo "building package folder"
            mkdir -p "$HOME/.config/nvim/lua"
	fi

        if [ -d "$HOME/.config/nvim/lua/noob" ]; then
            echo "removing older version of noob"
            rm -rf "$HOME/.config/nvim/lua/noob"
        fi

        mv noob "$HOME/.config/nvim/lua/"

        if grep -q 'require("noob")' "$HOME/.config/nvim/init.lua"; then
            echo "require installed"
        else
            echo "installing require"
            echo 'require("noob")' >> "$HOME/.config/nvim/init.lua"
        fi
        echo "noob installed, finish launch nvim"
        echo "report any bugs or wanted add ons in github"
        ;;
    full)
        NVIM_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/nvim"
	PLUGIN_DIR="$NVIM_DATA/site/pack/plugins/start"

	echo "Creating plugin directory..."
	mkdir -p "$PLUGIN_DIR"

	echo "Cloning Neo-tree and dependencies..."
	git clone https://github.com/nvim-lua/plenary.nvim "$PLUGIN_DIR/plenary.nvim"
	git clone https://github.com/nvim-tree/nvim-web-devicons "$PLUGIN_DIR/nvim-web-devicons"
	git clone https://github.com/MunifTanjim/nui.nvim "$PLUGIN_DIR/nui.nvim"
	git clone https://github.com/nvim-neo-tree/neo-tree.nvim "$PLUGIN_DIR/neo-tree.nvim"

	echo "neo-tree installed"
	;;
	echo "installing noob neovim package"

        if [ ! -d "$HOME/.config/nvim" ]; then
            echo "building nvim folder"
            mkdir -p "$HOME/.config/nvim"
        fi

        if [ ! -f "$HOME/.config/nvim/init.lua" ]; then
            echo "setting up init.lua"
            touch "$HOME/.config/nvim/init.lua"
        fi

        if [ ! -d "$HOME/.config/nvim/lua" ]; then
            echo "building package folder"
            mkdir -p "$HOME/.config/nvim/lua"
	fi

        if [ -d "$HOME/.config/nvim/lua/noob" ]; then
            echo "removing older version of noob"
            rm -rf "$HOME/.config/nvim/lua/noob"
        fi

        mv noob "$HOME/.config/nvim/lua/"

        if grep -q 'require("noob")' "$HOME/.config/nvim/init.lua"; then
            echo "require installed"
        else
            echo "installing require"
            echo 'require("noob")' >> "$HOME/.config/nvim/init.lua"
        fi
        echo "noob installed, finish launch nvim"
        echo "report any bugs or wanted add ons in github"
        ;;
esac
