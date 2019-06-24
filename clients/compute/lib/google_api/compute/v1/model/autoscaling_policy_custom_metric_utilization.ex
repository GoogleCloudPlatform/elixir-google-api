# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.AutoscalingPolicyCustomMetricUtilization do
  @moduledoc """
  Custom utilization metric policy.

  ## Attributes

  *   `metric` (*type:* `String.t`, *default:* `nil`) - The identifier (type) of the Stackdriver Monitoring metric. The metric cannot have negative values.

      The metric must have a value type of INT64 or DOUBLE.
  *   `utilizationTarget` (*type:* `float()`, *default:* `nil`) - The target value of the metric that autoscaler should maintain. This must be a positive value. A utilization metric scales number of virtual machines handling requests to increase or decrease proportionally to the metric.

      For example, a good metric to use as a utilization_target is compute.googleapis.com/instance/network/received_bytes_count. The autoscaler will work to keep this value constant for each of the instances.
  *   `utilizationTargetType` (*type:* `String.t`, *default:* `nil`) - Defines how target utilization value is expressed for a Stackdriver Monitoring metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metric => String.t(),
          :utilizationTarget => float(),
          :utilizationTargetType => String.t()
        }

  field(:metric)
  field(:utilizationTarget)
  field(:utilizationTargetType)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyCustomMetricUtilization do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AutoscalingPolicyCustomMetricUtilization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyCustomMetricUtilization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
