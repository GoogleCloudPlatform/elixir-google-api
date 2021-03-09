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

defmodule GoogleApi.HealthCare.V1beta1.Model.ExportDicomDataRequest do
  @moduledoc """
  Exports data from the specified DICOM store. If a given resource, such as a DICOM object with the same SOPInstance UID, already exists in the output, it is overwritten with the version in the source dataset. Exported DICOM data persists when the DICOM store from which it was exported is deleted.

  ## Attributes

  *   `bigqueryDestination` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomBigQueryDestination.t`, *default:* `nil`) - The BigQuery output destination. You can only export to a BigQuery dataset that's in the same project as the DICOM store you're exporting from. The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery location: `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`.
  *   `filterConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig.t`, *default:* `nil`) - Specifies the filter configuration.
  *   `gcsDestination` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomGcsDestination.t`, *default:* `nil`) - The Cloud Storage output destination. The Cloud Healthcare Service Agent requires the `roles/storage.objectAdmin` Cloud IAM roles on the Cloud Storage location.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryDestination =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomBigQueryDestination.t()
            | nil,
          :filterConfig => GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig.t() | nil,
          :gcsDestination =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomGcsDestination.t()
            | nil
        }

  field(:bigqueryDestination,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomBigQueryDestination
  )

  field(:filterConfig, as: GoogleApi.HealthCare.V1beta1.Model.DicomFilterConfig)

  field(:gcsDestination,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomGcsDestination
  )
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ExportDicomDataRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ExportDicomDataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ExportDicomDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
