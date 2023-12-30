#!/bin/sh -l

PATH=$PATH:/threat-model
cd /threat-model
mkdir -p "$GITHUB_WORKSPACE/threat-model/report"

if [ $# -eq 1 ]; then
  /usr/share/tic-taac/bin/tic-taac.sh --threatModel "$GITHUB_WORKSPACE/$1" --out "$GITHUB_WORKSPACE/threat-model/report"
  /usr/share/tic-taac/bin/tic-taac.sh --threatModel "$GITHUB_WORKSPACE/$1" --outFormat json --out "$GITHUB_WORKSPACE/threat-model/report"
fi

if [ $# -eq 2 ]; then
  /usr/share/tic-taac/bin/tic-taac.sh --threatModel "$GITHUB_WORKSPACE/$1" --mitigations "$GITHUB_WORKSPACE/$2" --out "$GITHUB_WORKSPACE/threat-model/report"
  /usr/share/tic-taac/bin/tic-taac.sh --threatModel "$GITHUB_WORKSPACE/$1" --mitigations "$GITHUB_WORKSPACE/$2" --outFormat json --out "$GITHUB_WORKSPACE/threat-model/report"
fi
