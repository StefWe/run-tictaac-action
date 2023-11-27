#!/bin/sh -l

PATH=$PATH:/threat-model
cd /threat-model
mkdir -p "$GITHUB_WORKSPACE/threat-model/report"
/usr/share/tic-taac/bin/tic-taac.sh --threatModel "$GITHUB_WORKSPACE/$1" --out "$GITHUB_WORKSPACE/threat-model/report"
