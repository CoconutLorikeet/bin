#!/usr/bin/env bash

find . -type f -name "*.sh" -print0 | xargs -0 -r shellcheck
