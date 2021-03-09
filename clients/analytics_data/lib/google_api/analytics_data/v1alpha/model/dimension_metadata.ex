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

defmodule GoogleApi.AnalyticsData.V1alpha.Model.DimensionMetadata do
  @moduledoc """
  Explains a dimension.

  ## Attributes

  *   `apiName` (*type:* `String.t`, *default:* `nil`) - This dimension's name. Useable in [Dimension](#Dimension)'s `name`. For example, `eventName`.
  *   `customDefinition` (*type:* `boolean()`, *default:* `nil`) - True if the dimension is a custom dimension for this property.
  *   `deprecatedApiNames` (*type:* `list(String.t)`, *default:* `nil`) - Still usable but deprecated names for this dimension. If populated, this dimension is available by either `apiName` or one of `deprecatedApiNames` for a period of time. After the deprecation period, the dimension will be available only by `apiName`.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of how this dimension is used and calculated.
  *   `uiName` (*type:* `String.t`, *default:* `nil`) - This dimension's name within the Google Analytics user interface. For example, `Event name`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiName => String.t() | nil,
          :customDefinition => boolean() | nil,
          :deprecatedApiNames => list(String.t()) | nil,
          :description => String.t() | nil,
          :uiName => String.t() | nil
        }

  field(:apiName)
  field(:customDefinition)
  field(:deprecatedApiNames, type: :list)
  field(:description)
  field(:uiName)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.DimensionMetadata do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.DimensionMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.DimensionMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
