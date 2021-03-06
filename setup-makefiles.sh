#!/bin/bash
#
# Copyright (C) 2017-2019 The LineageOS Project
# Copyright (C) 2018-2020 The Xiaomi-SDM660 Project
# Copyright (C) 2020 Project-Awaken
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

DEVICE_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DEVICE_DIR" ]]; then DEVICE_DIR="$PWD"; fi
export DEVICE_DIR

export IS_COMMON=true
export GUARDED_DEVICES="jasmine_sprout wayne"

# Required!
export DEVICE=wayne-common
export DEVICE_BRINGUP_YEAR=2018

DEVICE_COMMON=sdm660-common
VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
