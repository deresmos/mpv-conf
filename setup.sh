#! /bin/bash

[[ $XDG_CONFIG_HOME ]] && path=$XDG_CONFIG_HOME || path=~/.config
MPV_CONFIG_PATH=$path'/mpv'

[[ ! -d $MPV_CONFIG_PATH ]] && mkdir -p $MPV_CONFIG_PATH

script_dir=$(cd $(dirname $0); pwd)

set -x
ln -sf $script_dir/input.conf $MPV_CONFIG_PATH/
ln -sf $script_dir/mpv.conf $MPV_CONFIG_PATH/
