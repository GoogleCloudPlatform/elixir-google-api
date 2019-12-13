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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Resource do
  @moduledoc """

  Resource is an entity that can have metadata. E.g., a Docker image.

  ## Attributes

  *   `contentHash` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Hash.t`, *default:* `nil`) - The hash of the resource content. E.g., the Docker digest.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource. E.g., the name of a Docker image - "Debian".
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The unique URI of the resource. E.g.,
      "https://gcr.io/project/image@sha256:foo" for a Docker image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentHash => GoogleApi.ContainerAnalysis.V1alpha1.Model.Hash.t(),
          :name => String.t(),
          :uri => String.t()
        }

  field(:contentHash, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Hash)
  field(:name)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Resource do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Resource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Resource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
