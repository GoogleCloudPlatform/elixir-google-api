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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.Derived do
  @moduledoc """
  Derived describes the derived image portion (Occurrence) of the DockerImage relationship. This image would be produced from a Dockerfile with FROM .

  ## Attributes

  *   `baseResourceUrl` (*type:* `String.t`, *default:* `nil`) - Output only. This contains the base image URL for the derived image occurrence.
  *   `distance` (*type:* `integer()`, *default:* `nil`) - Output only. The number of layers by which this image differs from the associated image basis.
  *   `fingerprint` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.Fingerprint.t`, *default:* `nil`) - Required. The fingerprint of the derived image.
  *   `layerInfo` (*type:* `list(GoogleApi.ContainerAnalysis.V1beta1.Model.Layer.t)`, *default:* `nil`) - This contains layer-specific metadata, if populated it has length "distance" and is ordered with [distance] being the layer immediately following the base image and [1] being the final layer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseResourceUrl => String.t(),
          :distance => integer(),
          :fingerprint => GoogleApi.ContainerAnalysis.V1beta1.Model.Fingerprint.t(),
          :layerInfo => list(GoogleApi.ContainerAnalysis.V1beta1.Model.Layer.t())
        }

  field(:baseResourceUrl)
  field(:distance)
  field(:fingerprint, as: GoogleApi.ContainerAnalysis.V1beta1.Model.Fingerprint)
  field(:layerInfo, as: GoogleApi.ContainerAnalysis.V1beta1.Model.Layer, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Derived do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.Derived.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Derived do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
