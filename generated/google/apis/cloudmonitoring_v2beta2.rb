# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/cloudmonitoring_v2beta2/service.rb'
require 'google/apis/cloudmonitoring_v2beta2/classes.rb'
require 'google/apis/cloudmonitoring_v2beta2/representations.rb'

module Google
  module Apis
    # Cloud Monitoring API
    #
    # API for accessing Google Cloud and API monitoring data.
    #
    # @see https://cloud.google.com/monitoring/v2beta2/
    module CloudmonitoringV2beta2
      VERSION = 'V2beta2'
      REVISION = '20150622'

      # View and write monitoring data for all of your Google and third-party Cloud and API projects
      AUTH_MONITORING = 'https://www.googleapis.com/auth/monitoring'
    end
  end
end
