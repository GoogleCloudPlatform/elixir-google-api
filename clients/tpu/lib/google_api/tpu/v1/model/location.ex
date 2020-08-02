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

defmodule GoogleApi.TPU.V1.Model.Location do
  @moduledoc """
  A resource that represents Google Cloud Platform location.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The friendly name for this location, typically a nearby city name. For example, "Tokyo".
  *   `labels` (*type:* `map()`, *default:* `nil`) - Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"}
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - The canonical id for this location. For example: `"us-east1"`.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Service-specific metadata. For example the available capacity at the given location.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name for the location, which may vary between implementations. For example: `"projects/example-project/locations/us-east1"`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :labels => map(),
          :locationId => String.t(),
          :metadata => map(),
          :name => String.t()
        }

  field(:displayName)
  field(:labels, type: :map)
  field(:locationId)
  field(:metadata, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.TPU.V1.Model.Location do
  def decode(value, options) do
    GoogleApi.TPU.V1.Model.Location.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TPU.V1.Model.Location do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
