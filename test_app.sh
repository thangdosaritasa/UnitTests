#!/bin/bash

set -eo pipefail

xcodebuild -project UnitTest.xcodeproj \
            -scheme UnitTest \
            -destination platform=iOS\ Simulator,OS=16.0,name=iPhone\ 13 \
            clean test
