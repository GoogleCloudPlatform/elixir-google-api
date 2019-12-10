# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Compute.V1.Model.OutlierDetection do
  @moduledoc """
  Settings controlling the eviction of unhealthy hosts from the load balancing pool for the backend service.

  ## Attributes

  *   `baseEjectionTime` (*type:* `GoogleApi.Compute.V1.Model.Duration.t`, *default:* `nil`) - The base time that a host is ejected for. The real ejection time is equal to the base ejection time multiplied by the number of times the host has been ejected. Defaults to 30000ms or 30s.
  *   `consecutiveErrors` (*type:* `integer()`, *default:* `nil`) - Number of errors before a host is ejected from the connection pool. When the backend host is accessed over HTTP, a 5xx return code qualifies as an error. Defaults to 5.
  *   `consecutiveGatewayFailure` (*type:* `integer()`, *default:* `nil`) - The number of consecutive gateway failures (502, 503, 504 status or connection errors that are mapped to one of those status codes) before a consecutive gateway failure ejection occurs. Defaults to 3.
  *   `enforcingConsecutiveErrors` (*type:* `integer()`, *default:* `nil`) - The percentage chance that a host will be actually ejected when an outlier status is detected through consecutive 5xx. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 0.
  *   `enforcingConsecutiveGatewayFailure` (*type:* `integer()`, *default:* `nil`) - The percentage chance that a host will be actually ejected when an outlier status is detected through consecutive gateway failures. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.
  *   `enforcingSuccessRate` (*type:* `integer()`, *default:* `nil`) - The percentage chance that a host will be actually ejected when an outlier status is detected through success rate statistics. This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.
  *   `interval` (*type:* `GoogleApi.Compute.V1.Model.Duration.t`, *default:* `nil`) - Time interval between ejection analysis sweeps. This can result in both new ejections as well as hosts being returned to service. Defaults to 1 second.
  *   `maxEjectionPercent` (*type:* `integer()`, *default:* `nil`) - Maximum percentage of hosts in the load balancing pool for the backend service that can be ejected. Defaults to 50%.
  *   `successRateMinimumHosts` (*type:* `integer()`, *default:* `nil`) - The number of hosts in a cluster that must have enough request volume to detect success rate outliers. If the number of hosts is less than this setting, outlier detection via success rate statistics is not performed for any host in the cluster. Defaults to 5.
  *   `successRateRequestVolume` (*type:* `integer()`, *default:* `nil`) - The minimum number of total requests that must be collected in one interval (as defined by the interval duration above) to include this host in success rate based outlier detection. If the volume is lower than this setting, outlier detection via success rate statistics is not performed for that host. Defaults to 100.
  *   `successRateStdevFactor` (*type:* `integer()`, *default:* `nil`) - This factor is used to determine the ejection threshold for success rate outlier ejection. The ejection threshold is the difference between the mean success rate, and the product of this factor and the standard deviation of the mean success rate: mean - (stdev * success_rate_stdev_factor). This factor is divided by a thousand to get a double. That is, if the desired factor is 1.9, the runtime value should be 1900. Defaults to 1900.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseEjectionTime => GoogleApi.Compute.V1.Model.Duration.t(),
          :consecutiveErrors => integer(),
          :consecutiveGatewayFailure => integer(),
          :enforcingConsecutiveErrors => integer(),
          :enforcingConsecutiveGatewayFailure => integer(),
          :enforcingSuccessRate => integer(),
          :interval => GoogleApi.Compute.V1.Model.Duration.t(),
          :maxEjectionPercent => integer(),
          :successRateMinimumHosts => integer(),
          :successRateRequestVolume => integer(),
          :successRateStdevFactor => integer()
        }

  field(:baseEjectionTime, as: GoogleApi.Compute.V1.Model.Duration)
  field(:consecutiveErrors)
  field(:consecutiveGatewayFailure)
  field(:enforcingConsecutiveErrors)
  field(:enforcingConsecutiveGatewayFailure)
  field(:enforcingSuccessRate)
  field(:interval, as: GoogleApi.Compute.V1.Model.Duration)
  field(:maxEjectionPercent)
  field(:successRateMinimumHosts)
  field(:successRateRequestVolume)
  field(:successRateStdevFactor)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.OutlierDetection do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.OutlierDetection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.OutlierDetection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
