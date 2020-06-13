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

defmodule GoogleApi.Books.V1.Model.VolumeLayerInfoLayers do
  @moduledoc """


  ## Attributes

  *   `layerId` (*type:* `String.t`, *default:* `nil`) - The layer id of this layer (e.g. "geo").
  *   `volumeAnnotationsVersion` (*type:* `String.t`, *default:* `nil`) - The current version of this layer's volume annotations. Note that this
      version applies only to the data in the
      books.layers.volumeAnnotations.* responses. The actual annotation data
      is versioned separately.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :layerId => String.t(),
          :volumeAnnotationsVersion => String.t()
        }

  field(:layerId)
  field(:volumeAnnotationsVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeLayerInfoLayers do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeLayerInfoLayers.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeLayerInfoLayers do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
