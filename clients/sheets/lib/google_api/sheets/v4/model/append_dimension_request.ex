# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.AppendDimensionRequest do
  @moduledoc """
  Appends rows or columns to the end of a sheet.

  ## Attributes

  - dimension (String.t): Whether rows or columns should be appended. Defaults to `nil`.
  - length (integer()): The number of rows or columns to append. Defaults to `nil`.
  - sheetId (integer()): The sheet to append rows or columns to. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimension => String.t(),
          :length => integer(),
          :sheetId => integer()
        }

  field(:dimension)
  field(:length)
  field(:sheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AppendDimensionRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AppendDimensionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AppendDimensionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
