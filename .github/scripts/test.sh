#!/bin/bash

set -eo pipefail

xcodebuild  -project CopyCat.xcodeproj \
            -scheme CopyCat \
            -destination platform=iOS\ Simulator,name=iPhone\ 11 \
            clean test | xcpretty
