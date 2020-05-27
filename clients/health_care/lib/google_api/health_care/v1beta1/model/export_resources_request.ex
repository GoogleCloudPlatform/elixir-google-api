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

defmodule GoogleApi.HealthCare.V1beta1.Model.ExportResourcesRequest do
  @moduledoc """
  Request to export resources.

  ## Attributes

  *   `bigqueryDestination` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirBigQueryDestination.t`, *default:* `nil`) - The BigQuery output destination.

      The BigQuery location requires two IAM roles:
      `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`.

      The output is one BigQuery table per resource type.
  *   `gcsDestination` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestGcsDestination.t`, *default:* `nil`) - The Cloud Storage output destination.

      The Cloud Storage location requires the `roles/storage.objectAdmin` Cloud
      IAM role.

      The exported outputs are
      organized by FHIR resource types. The server creates one object per
      resource type. Each object contains newline delimited JSON, and each line
      is a FHIR resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryDestination =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirBigQueryDestination.t(),
          :gcsDestination =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestGcsDestination.t()
        }

  field(:bigqueryDestination,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirBigQueryDestination
  )

  field(:gcsDestination,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1FhirRestGcsDestination
  )
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ExportResourcesRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ExportResourcesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ExportResourcesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
