#!/bin/bash

set -eo pipefail

xcodebuild  -project CopyCat.xcodeproj \
            -scheme CopyCat \
            -destination platform=iOS\ Simulator,name=iPhone\ 8 \
            clean test | xcpretty
