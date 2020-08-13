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

defmodule GoogleApi.CloudSearch.V1.Model.IndexItemRequest do
  @moduledoc """


  ## Attributes

  *   `connectorName` (*type:* `String.t`, *default:* `nil`) - Name of connector making this call. Format: datasources/{source_id}/connectors/{ID}
  *   `debugOptions` (*type:* `GoogleApi.CloudSearch.V1.Model.DebugOptions.t`, *default:* `nil`) - Common debug options.
  *   `indexItemOptions` (*type:* `GoogleApi.CloudSearch.V1.Model.IndexItemOptions.t`, *default:* `nil`) - 
  *   `item` (*type:* `GoogleApi.CloudSearch.V1.Model.Item.t`, *default:* `nil`) - Name of the item. Format: datasources/{source_id}/items/{item_id}
  *   `mode` (*type:* `String.t`, *default:* `nil`) - Required. The RequestMode for this request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectorName => String.t(),
          :debugOptions => GoogleApi.CloudSearch.V1.Model.DebugOptions.t(),
          :indexItemOptions => GoogleApi.CloudSearch.V1.Model.IndexItemOptions.t(),
          :item => GoogleApi.CloudSearch.V1.Model.Item.t(),
          :mode => String.t()
        }

  field(:connectorName)
  field(:debugOptions, as: GoogleApi.CloudSearch.V1.Model.DebugOptions)
  field(:indexItemOptions, as: GoogleApi.CloudSearch.V1.Model.IndexItemOptions)
  field(:item, as: GoogleApi.CloudSearch.V1.Model.Item)
  field(:mode)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.IndexItemRequest do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.IndexItemRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.IndexItemRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
