#!/bin/bash

case "$1" in
    version)
        echo "0.0.1"
        ;;

    *)
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
