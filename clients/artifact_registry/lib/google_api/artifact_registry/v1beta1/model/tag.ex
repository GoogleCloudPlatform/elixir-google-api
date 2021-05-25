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

defmodule GoogleApi.ArtifactRegistry.V1beta1.Model.Tag do
  @moduledoc """
  Tags point to a version and represent an alternative name that can be used to access the version.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package or tag ID parts contain slashes, the slashes are escaped.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :version => String.t() | nil
        }

  field(:name)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1beta1.Model.Tag do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1beta1.Model.Tag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1beta1.Model.Tag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
