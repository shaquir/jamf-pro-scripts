#!/bin/sh

###
#
#            Name:  Logged-In User UID.sh
#     Description:  Gets UID of currently logged-in user.
#         Created:  2016-06-06
#   Last Modified:  2020-01-07
#         Version:  1.1.4
#
#
# Copyright 2016 Palantir Technologies, Inc.
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
#
###



########## variable-ing ##########



loggedInUser=$(/usr/bin/stat -f%Su "/dev/console")
loggedInUID=$(/usr/bin/id -u "$loggedInUser")



########## main process ##########



# Report UID of logged-in user.
/bin/echo "<result>$loggedInUID</result>"



exit 0
