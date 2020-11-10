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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.Build do
  @moduledoc """
  Note holding the version of the provider's builder and the signature of the provenance message in the build details occurrence.

  ## Attributes

  *   `builderVersion` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Version of the builder which produced this build.
  *   `signature` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.BuildSignature.t`, *default:* `nil`) - Signature of the build in occurrences pointing to this build note containing build details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :builderVersion => String.t(),
          :signature => GoogleApi.ContainerAnalysis.V1beta1.Model.BuildSignature.t()
        }

  field(:builderVersion)
  field(:signature, as: GoogleApi.ContainerAnalysis.V1beta1.Model.BuildSignature)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Build do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.Build.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Build do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
