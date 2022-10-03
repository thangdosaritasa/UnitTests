#!/bin/bash

set -eo pipefail

xcodebuild -project UnitTest.xcodeproj \
            -scheme UnitTest \
            -destination platform=iOS\ Simulator,OS=15.2,name=iPhone\ 13 \
            clean test | xcpretty
