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

defmodule GoogleApi.CloudBuild.V1.Model.Artifacts do
  @moduledoc """
  Artifacts produced by a build that should be uploaded upon successful completion of all build steps.

  ## Attributes

  - images ([String.t]): A list of images to be pushed upon the successful completion of all build steps.  The images will be pushed using the builder service account&#39;s credentials.  The digests of the pushed images will be stored in the Build resource&#39;s results field.  If any of the images fail to be pushed, the build is marked FAILURE. Defaults to: `null`.
  - objects (ArtifactObjects): A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.  Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account&#39;s credentials.  The location and generation of the uploaded objects will be stored in the Build resource&#39;s results field.  If any objects fail to be pushed, the build is marked FAILURE. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :images => list(any()),
          :objects => GoogleApi.CloudBuild.V1.Model.ArtifactObjects.t()
        }

  field(:images, type: :list)
  field(:objects, as: GoogleApi.CloudBuild.V1.Model.ArtifactObjects)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.Artifacts do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.Artifacts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.Artifacts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
