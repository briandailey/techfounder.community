#!/usr/bin/env bash
# First, build hugo after clearing the build dir.
hugo

function deploy () {
    bucket="s3://techfounder.community/"

    echo "Deploying to $bucket..."
    aws --profile dailey s3 sync public/. $bucket
    echo "Done."
    echo "👍🏻"
}

deploy $1
