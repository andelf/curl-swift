#!/bin/sh


xcrun swift -sdk $(xcrun --show-sdk-path --sdk macosx) -g main.swift -import-objc-header Curl-Bridging-Header.h -Xlinker -lcurl
