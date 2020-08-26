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

defmodule GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1DicomGcsDestination do
  @moduledoc """
  The Cloud Storage location where the server writes the output and the export configuration.

  ## Attributes

  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - MIME types supported by DICOM spec. Each file is written in the following format: `.../{study_id}/{series_id}/{instance_id}[/{frame_number}].{extension}` The frame_number component exists only for multi-frame instances. Supported MIME types are consistent with supported formats in DICOMweb: https://cloud.google.com/healthcare/docs/dicom#retrieve_transaction. Specifically, the following are supported: - application/dicom; transfer-syntax=1.2.840.10008.1.2.1 (uncompressed DICOM) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.50 (DICOM with embedded JPEG Baseline) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.90 (DICOM with embedded JPEG 2000 Lossless Only) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.91 (DICOM with embedded JPEG 2000) - application/dicom; transfer-syntax=* (DICOM with no transcoding) - application/octet-stream; transfer-syntax=1.2.840.10008.1.2.1 (raw uncompressed PixelData) - application/octet-stream; transfer-syntax=* (raw PixelData in whatever format it was uploaded in) - image/jpeg; transfer-syntax=1.2.840.10008.1.2.4.50 (Consumer JPEG) - image/png The following extensions are used for output files: - application/dicom -> .dcm - image/jpeg -> .jpg - image/png -> .png - application/octet-stream -> no extension If unspecified, the instances are exported in the original DICOM format they were uploaded in.
  *   `uriPrefix` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage destination to export to. URI for a Cloud Storage directory where the server writes the result files, in the format `gs://{bucket-id}/{path/to/destination/dir}`). If there is no trailing slash, the service appends one when composing the object path. The user is responsible for creating the Cloud Storage bucket referenced in `uri_prefix`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mimeType => String.t(),
          :uriPrefix => String.t()
        }

  field(:mimeType)
  field(:uriPrefix)
end

defimpl Poison.Decoder,
  for: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1DicomGcsDestination do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1DicomGcsDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1DicomGcsDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
