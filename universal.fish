#!/usr/bin/env fish
# ./universal.fish

set -Ux ANDROID_ROOT /opt/android/current
set -Ux QT_QPA_PLATFORMTHEME appmenu-qt5
set -Ux DART_HOME /opt/dart/current/dart
set -Ux GOROOT (go env GOROOT)
set -Ux GOPATH (readlink -f $GOROOT/../gopath)
set -Ux JAVA_HOME /usr/lib/jvm/java-8-oracle

# for pip

set -Ux PIP_USE_WHEEL "true"
set -Ux PIP_WHEEL_DIR "$HOME/.pip/wheels"
set -Ux PIP_FIND_LINKS "$HOME/.pip/wheels"
set -Ux PIP_DOWNLOAD_CACHE "$HOME/.pip/cache"
