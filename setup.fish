#!/usr/bin/env fish
# Mike Carifio <mike@carif.io>
# ~/.config/fish/config.fish

function  addpath --description 'addpath sym path'
  set -q $argv[1] ; and set -gx PATH $$argv[1]/$argv[2] $PATH
end


# env vars
# Android sdk
set -U ANDROID_ROOT /opt/android/current
set -l prefix $ANDROID_ROOT/android-sdk-linux
set -gx PATH $prefix/tools $prefix/platform-tools $PATH

# qt
set -U QT_QPA_PLATFORMTHEME appmenu-qt5
set -U DART_HOME /opt/dart/current/dart
function DART_HOME_path --on-variable DART_HOME ; addpath DART_HOME dart-sdk/bin; end


set -U GOROOT (go env GOROOT)
set -U GOPATH (readlink -f $GOROOT/../gopath)
function GOROOT_path --on-variable GOROOT ; addpath GOROOT bin; end

set -U JAVA_HOME /usr/lib/jvm/java-8-oracle





# Add to path
set -gx PATH /opt/*/current/bin $PATH






