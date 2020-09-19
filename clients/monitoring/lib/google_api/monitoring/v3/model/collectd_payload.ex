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

defmodule GoogleApi.Monitoring.V3.Model.CollectdPayload do
  @moduledoc """
  A collection of data points sent from a collectd-based plugin. See the collectd documentation for more information.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The end time of the interval.
  *   `metadata` (*type:* `%{optional(String.t) => GoogleApi.Monitoring.V3.Model.TypedValue.t}`, *default:* `nil`) - The measurement metadata. Example: "process_id" -> 12345
  *   `plugin` (*type:* `String.t`, *default:* `nil`) - The name of the plugin. Example: "disk".
  *   `pluginInstance` (*type:* `String.t`, *default:* `nil`) - The instance name of the plugin Example: "hdcl".
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The start time of the interval.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The measurement type. Example: "memory".
  *   `typeInstance` (*type:* `String.t`, *default:* `nil`) - The measurement type instance. Example: "used".
  *   `values` (*type:* `list(GoogleApi.Monitoring.V3.Model.CollectdValue.t)`, *default:* `nil`) - The measured values during this time interval. Each value must have a different data_source_name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :metadata => %{optional(String.t()) => GoogleApi.Monitoring.V3.Model.TypedValue.t()},
          :plugin => String.t(),
          :pluginInstance => String.t(),
          :startTime => DateTime.t(),
          :type => String.t(),
          :typeInstance => String.t(),
          :values => list(GoogleApi.Monitoring.V3.Model.CollectdValue.t())
        }

  field(:endTime, as: DateTime)
  field(:metadata, as: GoogleApi.Monitoring.V3.Model.TypedValue, type: :map)
  field(:plugin)
  field(:pluginInstance)
  field(:startTime, as: DateTime)
  field(:type)
  field(:typeInstance)
  field(:values, as: GoogleApi.Monitoring.V3.Model.CollectdValue, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.CollectdPayload do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.CollectdPayload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.CollectdPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
