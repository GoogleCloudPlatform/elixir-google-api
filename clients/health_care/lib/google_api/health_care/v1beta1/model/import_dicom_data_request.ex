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

defmodule GoogleApi.HealthCare.V1beta1.Model.ImportDicomDataRequest do
  @moduledoc """
  Imports data into the specified DICOM store. Returns an error if any of the files to import are not DICOM files. This API accepts duplicate DICOM instances by ignoring the newly-pushed instance. It does not overwrite.

  ## Attributes

  *   `gcsSource` (*type:* `GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomGcsSource.t`, *default:* `nil`) - Cloud Storage source data location and import configuration. The Cloud Storage location requires the `roles/storage.objectViewer` Cloud IAM role.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcsSource =>
            GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomGcsSource.t()
        }

  field(:gcsSource,
    as: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1DicomGcsSource
  )
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ImportDicomDataRequest do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ImportDicomDataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ImportDicomDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
