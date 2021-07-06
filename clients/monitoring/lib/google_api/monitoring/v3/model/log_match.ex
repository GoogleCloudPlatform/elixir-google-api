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

defmodule GoogleApi.Monitoring.V3.Model.LogMatch do
  @moduledoc """
  A condition type that checks whether a log message from any project monitored by the alert policy’s workspace satisfies the given filter.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Required. A logs-based filter. See Advanced Logs Queries for how this filter should be constructed.
  *   `labelExtractors` (*type:* `map()`, *default:* `nil`) - Optional. A map from a label key to an extractor expression, which is used to extract the value for this label key. Each entry in this map is a specification for how data should be extracted from log entries that match filter. Each combination of extracted values is treated as a separate rule for the purposes of triggering notifications. Label keys and corresponding values can be used in notifications generated by this condition.Please see the documentation on logs-based metric valueExtractors for syntax and examples.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :labelExtractors => map() | nil
        }

  field(:filter)
  field(:labelExtractors, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.LogMatch do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.LogMatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.LogMatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
