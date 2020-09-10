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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageMatrix do
  @moduledoc """
  Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.

  ## Attributes

  *   `cols` (*type:* `integer()`, *default:* `nil`) - Number of columns in the matrix.
  *   `data` (*type:* `String.t`, *default:* `nil`) - The matrix data.
  *   `rows` (*type:* `integer()`, *default:* `nil`) - Number of rows in the matrix.
  *   `type` (*type:* `integer()`, *default:* `nil`) - This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cols => integer(),
          :data => String.t(),
          :rows => integer(),
          :type => integer()
        }

  field(:cols)
  field(:data)
  field(:rows)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageMatrix do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageMatrix.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentPageMatrix do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
