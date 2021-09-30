#!/bin/bash
while getopts v: flag
do
    case "${flag}" in
        v) version=${OPTARG};;
    esac
done
echo "New version: $version";

# Replace version in podspec file
sed -i '' "s/spec.version = .*/spec.version = '$version'/" GBSwiftLogger.podspec
# Replace version in info.plist file
sed -i '' 's/MARKETING_VERSION = .*/MARKETING_VERSION = '"$version"';/' GBSwiftLogger.xcodeproj/project.pbxproj
