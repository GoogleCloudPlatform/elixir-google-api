# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceManagement.V1.Model.TrafficPercentStrategy do
  @moduledoc """
  Strategy that specifies how clients of Google Service Controller want to send traffic to use different config versions. This is generally used by API proxy to split traffic based on your configured precentage for each config version.  One example of how to gradually rollout a new service configuration using this strategy: Day 1      Rollout {       id: \&quot;example.googleapis.com/rollout_20160206\&quot;       traffic_percent_strategy {         percentages: {           \&quot;example.googleapis.com/20160201\&quot;: 70.00           \&quot;example.googleapis.com/20160206\&quot;: 30.00         }       }     }  Day 2      Rollout {       id: \&quot;example.googleapis.com/rollout_20160207\&quot;       traffic_percent_strategy: {         percentages: {           \&quot;example.googleapis.com/20160206\&quot;: 100.00         }       }     }
  """

  @derive [Poison.Encoder]
  defstruct [
    :"percentages"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.TrafficPercentStrategy do
  def decode(value, _options) do
    value
  end
end

