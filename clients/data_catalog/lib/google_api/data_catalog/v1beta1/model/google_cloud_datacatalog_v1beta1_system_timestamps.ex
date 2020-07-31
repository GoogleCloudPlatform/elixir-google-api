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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SystemTimestamps do
  @moduledoc """
  Timestamps about this resource according to a particular system.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The creation time of the resource within the given system.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The expiration time of the resource within the given system.
      Currently only apllicable to BigQuery resources.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The last-modified time of the resource within the given system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :expireTime => DateTime.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:expireTime, as: DateTime)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SystemTimestamps do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SystemTimestamps.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1SystemTimestamps do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
