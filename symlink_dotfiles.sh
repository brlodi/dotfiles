#!/usr/bin/env bash
# symlink_dotfiles.sh

# Warn that we'll be overwiting any existing dotfiles
# TODO

# Remove existing files/links. This is super not-safe right now
rm ~/.aliases
rm ~/.bash_profile
rm ~/.bash_prompt
rm ~/.exports
rm ~/.extra
rm ~/.functions
rm ~/.gitconfig
rm ~/.inputrc

# Place symlinks in ~
ln -sv .aliases ~/
ln -sv .bash_profile ~/
ln -sv .bash_prompt ~/
ln -sv .exports ~/
ln -sv .extra ~/
ln -sv .functions ~/
ln -sv .gitconfig ~/
ln -sv .inputrc ~/
