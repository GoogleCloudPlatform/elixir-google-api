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

defmodule GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadRequest do
  @moduledoc """
  gdata

  ## Attributes

  - checksumsInfo (GdataCompositeMedia): gdata Defaults to: `null`.
  - objectInfo (GdataCompositeMedia): gdata Defaults to: `null`.
  - objectVersion (String.t): gdata Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checksumsInfo => GoogleApi.YouTubeReporting.V1.Model.GdataCompositeMedia.t(),
          :objectInfo => GoogleApi.YouTubeReporting.V1.Model.GdataCompositeMedia.t(),
          :objectVersion => any()
        }

  field(:checksumsInfo, as: GoogleApi.YouTubeReporting.V1.Model.GdataCompositeMedia)
  field(:objectInfo, as: GoogleApi.YouTubeReporting.V1.Model.GdataCompositeMedia)
  field(:objectVersion)
end

defimpl Poison.Decoder, for: GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadRequest do
  def decode(value, options) do
    GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
