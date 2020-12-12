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

defmodule GoogleApi.ArtifactRegistry.V1beta1.Model.GoogleDevtoolsArtifactregistryV1alpha1GcsSource do
  @moduledoc """
  Google Cloud Storage location where the artifacts currently reside.

  ## Attributes

  *   `uris` (*type:* `list(String.t)`, *default:* `nil`) - Cloud Storage paths URI (e.g., gs://my_bucket//my_object).
  *   `useWildcards` (*type:* `boolean()`, *default:* `nil`) - Supports URI wildcards for matching multiple objects from a single URI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uris => list(String.t()),
          :useWildcards => boolean()
        }

  field(:uris, type: :list)
  field(:useWildcards)
end

defimpl Poison.Decoder,
  for: GoogleApi.ArtifactRegistry.V1beta1.Model.GoogleDevtoolsArtifactregistryV1alpha1GcsSource do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1beta1.Model.GoogleDevtoolsArtifactregistryV1alpha1GcsSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ArtifactRegistry.V1beta1.Model.GoogleDevtoolsArtifactregistryV1alpha1GcsSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
