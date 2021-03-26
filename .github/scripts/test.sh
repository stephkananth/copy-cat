#!/bin/bash

set -eo pipefail

xcodebuild -workspace CopyCat.xcworkspace \
    -scheme CopyCat \
    -destination platform=iOS\ Simulator,name=iPhone\ 11 \
    clean test | xcpretty
