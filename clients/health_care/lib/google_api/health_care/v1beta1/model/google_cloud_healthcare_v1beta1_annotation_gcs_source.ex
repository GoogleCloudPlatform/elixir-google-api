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

defmodule GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsSource do
  @moduledoc """
  Specifies the configuration for importing data from Cloud Storage.

  ## Attributes

  *   `uri` (*type:* `String.t`, *default:* `nil`) - Points to a Cloud Storage URI containing file(s) with
      content only. The URI must be in the following format:
      `gs://{bucket_id}/{object_id}`. The URI can include wildcards in
      `object_id` and thus identify multiple files. Supported wildcards:
       '*' to match 0 or more non-separator characters
       '**' to match 0 or more characters (including separators). Must be used
       at
            the end of a path and with no other wildcards in the
            path. Can also be used with a file extension (such as .dcm), which
            imports all files with the extension in the specified directory and
            its sub-directories. For example,
            `gs://my-bucket/my-directory/**.json` imports all files with .json
            extensions in `my-directory/` and its sub-directories.
       '?' to match 1 character
      All other URI formats are invalid.
      Files matching the wildcard are expected to contain content only, no
      metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uri => String.t()
        }

  field(:uri)
end

defimpl Poison.Decoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsSource do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.HealthCare.V1beta1.Model.GoogleCloudHealthcareV1beta1AnnotationGcsSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
