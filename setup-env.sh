#!/bin/bash

# Android Environment Setup Script for macOS

# Set Android SDK Root
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"

# Add Android SDK tools to PATH
export PATH="$PATH:$ANDROID_SDK_ROOT/tools"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"

# Set Android NDK Root
export ANDROID_NDK_ROOT="/Users/joshlandry/Downloads/android-ndk-12161346-app-bundle/AndroidNDK12161346.app/Contents/NDK"

# Set JAVA_HOME (Oracle JDK 17)
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home"
# Add Java's bin directory to PATH
export PATH="$JAVA_HOME/bin:$PATH"

# Verification commands
echo "ANDROID_SDK_ROOT: $ANDROID_SDK_ROOT"
echo "ANDROID_NDK_ROOT: $ANDROID_NDK_ROOT"
echo "JAVA_HOME: $JAVA_HOME"
echo "PATH: $PATH"

# Check if paths exist
echo ""
echo "Path verification:"
[ -d "$ANDROID_SDK_ROOT" ] && echo "✓ Android SDK found" || echo "✗ Android SDK not found"
[ -d "$ANDROID_NDK_ROOT" ] && echo "✓ Android NDK found" || echo "✗ Android NDK not found"
[ -d "$JAVA_HOME" ] && echo "✓ Java found" || echo "✗ Java not found"