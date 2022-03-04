# -*- python -*-

# Copyright 2018-2019 Josh Pieper, jjp@pobox.com.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("//tools/workspace/clang:repository.bzl", "clang_repository")
load("//tools/workspace/raspberry_pi:repository.bzl", "raspberry_pi_repository")

def add_default_repositories(excludes = []):
    if "clang" not in excludes:
        clang_repository()
    if "raspberry_pi" not in excludes:
        raspberry_pi_repository(name = "raspberry_pi")
