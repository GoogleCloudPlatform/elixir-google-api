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

defmodule GoogleApi.HealthCare.V1.Model.ImportResourcesRequest do
  @moduledoc """
  Request to import resources.

  ## Attributes

  *   `contentStructure` (*type:* `String.t`, *default:* `nil`) - The content structure in the source location. If not specified, the server treats the input source files as BUNDLE.
  *   `gcsSource` (*type:* `GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirGcsSource.t`, *default:* `nil`) - Cloud Storage source data location and import configuration. The Healthcare Service Agent account requires the `roles/storage.objectAdmin` role on the Cloud Storage location. Each Cloud Storage object should be a text file that contains the format specified in ContentStructure.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentStructure => String.t() | nil,
          :gcsSource =>
            GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirGcsSource.t() | nil
        }

  field(:contentStructure)
  field(:gcsSource, as: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1FhirGcsSource)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ImportResourcesRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ImportResourcesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ImportResourcesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
