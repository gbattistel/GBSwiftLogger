#!/bin/bash
while getopts u:p:t: flag
do
    case "${flag}" in
        u) user=${OPTARG};;
        p) password=${OPTARG};;
        t) token=${OPTARG};;
    esac
done
echo "User: $user";
echo "password: $password";
echo "Token Name: $token";

sed -i '' 's/<ENV_USER>/'"$user"'/g' GBSwiftLoggerTests/GBSwiftLoggerTests.swift
sed -i '' 's/<ENV_PASSWORD>/'"$password"'/g' GBSwiftLoggerTests/GBSwiftLoggerTests.swift
sed -i '' 's/<ENV_TOKEN>/'"$token"'/g' GBSwiftLoggerTests/GBSwiftLoggerTests.swift
