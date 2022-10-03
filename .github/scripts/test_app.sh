#!/bin/bash

set -eo pipefail

xcodebuild -project UnitTest.xcodeproj \
            -scheme UnitTest\ iOS \
            -destination platform=iOS\ Simulator,OS=13.3,name=iPhone\ 11 \
            clean test | xcpretty
