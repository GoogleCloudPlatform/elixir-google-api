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

defmodule GoogleApi.HealthCare.V1.Model.Image do
  @moduledoc """
  Raw bytes representing consent artifact content.

  ## Attributes

  *   `gcsUri` (*type:* `String.t`, *default:* `nil`) - Input only. Points to a Cloud Storage URI containing the consent artifact content. The URI must be in the following format: `gs://{bucket_id}/{object_id}`. The Cloud Healthcare API service account must have the `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage location. The consent artifact content at this URI is copied to a Cloud Storage location managed by the Cloud Healthcare API. Responses to fetching requests return the consent artifact content in raw_bytes.
  *   `rawBytes` (*type:* `String.t`, *default:* `nil`) - Consent artifact content represented as a stream of bytes. This field is populated when returned in GetConsentArtifact response, but not included in CreateConsentArtifact and ListConsentArtifact response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsUri => String.t() | nil,
          :rawBytes => String.t() | nil
        }

  field(:gcsUri)
  field(:rawBytes)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.Image do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
