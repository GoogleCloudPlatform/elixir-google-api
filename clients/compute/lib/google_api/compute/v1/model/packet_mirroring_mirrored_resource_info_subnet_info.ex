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

defmodule GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoSubnetInfo do
  @moduledoc """


  ## Attributes

  *   `canonicalUrl` (*type:* `String.t`, *default:* `nil`) - [Output Only] Unique identifier for the subnetwork; defined by the server.
  *   `url` (*type:* `String.t`, *default:* `nil`) - Resource URL to the subnetwork for which traffic from/to all VM instances will be mirrored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalUrl => String.t(),
          :url => String.t()
        }

  field(:canonicalUrl)
  field(:url)
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoSubnetInfo do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoSubnetInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.PacketMirroringMirroredResourceInfoSubnetInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
