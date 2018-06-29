# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudBuild.V1.Model.Results do
  @moduledoc """
  Artifacts created by the build pipeline.

  ## Attributes

  - artifactManifest (String.t): Path to the artifact manifest. Only populated when artifacts are uploaded. Defaults to: `null`.
  - buildStepImages ([String.t]): List of build step digests, in the order corresponding to build step indices. Defaults to: `null`.
  - images ([BuiltImage]): Container images that were built as a part of the build. Defaults to: `null`.
  - numArtifacts (String.t): Number of artifacts uploaded. Only populated when artifacts are uploaded. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactManifest => any(),
          :buildStepImages => list(any()),
          :images => list(GoogleApi.CloudBuild.V1.Model.BuiltImage.t()),
          :numArtifacts => any()
        }

  field(:artifactManifest)
  field(:buildStepImages, type: :list)
  field(:images, as: GoogleApi.CloudBuild.V1.Model.BuiltImage, type: :list)
  field(:numArtifacts)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.Results do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.Results.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.Results do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
