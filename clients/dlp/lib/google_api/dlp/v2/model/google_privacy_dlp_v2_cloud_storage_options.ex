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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions do
  @moduledoc """
  Options defining a file or a set of files within a Google Cloud Storage bucket.

  ## Attributes

  *   `bytesLimitPerFile` (*type:* `String.t`, *default:* `nil`) - Max number of bytes to scan from a file. If a scanned file's size is bigger than this value then the rest of the bytes are omitted. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. Cannot be set if de-identification is requested.
  *   `bytesLimitPerFilePercent` (*type:* `integer()`, *default:* `nil`) - Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. Cannot be set if de-identification is requested.
  *   `fileSet` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileSet.t`, *default:* `nil`) - The set of one or more files to scan.
  *   `fileTypes` (*type:* `list(String.t)`, *default:* `nil`) - List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.
  *   `filesLimitPercent` (*type:* `integer()`, *default:* `nil`) - Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
  *   `sampleMethod` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytesLimitPerFile => String.t() | nil,
          :bytesLimitPerFilePercent => integer() | nil,
          :fileSet => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileSet.t() | nil,
          :fileTypes => list(String.t()) | nil,
          :filesLimitPercent => integer() | nil,
          :sampleMethod => String.t() | nil
        }

  field(:bytesLimitPerFile)
  field(:bytesLimitPerFilePercent)
  field(:fileSet, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FileSet)
  field(:fileTypes, type: :list)
  field(:filesLimitPercent)
  field(:sampleMethod)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
