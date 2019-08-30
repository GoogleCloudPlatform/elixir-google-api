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

defmodule GoogleApi.Vision.V1.Model.AnnotateFileResponse do
  @moduledoc """
  Response to a single file annotation request. A file may contain one or more
  images, which individually have their own responses.

  ## Attributes

  *   `error` (*type:* `GoogleApi.Vision.V1.Model.Status.t`, *default:* `nil`) - If set, represents the error message for the failed request. The
      `responses` field will not be set in this case.
  *   `inputConfig` (*type:* `GoogleApi.Vision.V1.Model.InputConfig.t`, *default:* `nil`) - Information about the file for which this response is generated.
  *   `responses` (*type:* `list(GoogleApi.Vision.V1.Model.AnnotateImageResponse.t)`, *default:* `nil`) - Individual responses to images found within the file. This field will be
      empty if the `error` field is set.
  *   `totalPages` (*type:* `integer()`, *default:* `nil`) - This field gives the total number of pages in the file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.Vision.V1.Model.Status.t(),
          :inputConfig => GoogleApi.Vision.V1.Model.InputConfig.t(),
          :responses => list(GoogleApi.Vision.V1.Model.AnnotateImageResponse.t()),
          :totalPages => integer()
        }

  field(:error, as: GoogleApi.Vision.V1.Model.Status)
  field(:inputConfig, as: GoogleApi.Vision.V1.Model.InputConfig)
  field(:responses, as: GoogleApi.Vision.V1.Model.AnnotateImageResponse, type: :list)
  field(:totalPages)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.AnnotateFileResponse do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.AnnotateFileResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.AnnotateFileResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
