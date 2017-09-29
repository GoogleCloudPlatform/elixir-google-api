# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.BatchGetValuesResponse do
  @moduledoc """
  The response when retrieving more than one range of values in a spreadsheet.

  ## Attributes

  - spreadsheetId (String): The ID of the spreadsheet the data was retrieved from. Defaults to: `null`.
  - valueRanges (List[ValueRange]): The requested values. The order of the ValueRanges is the same as the order of the requested ranges. Defaults to: `null`.
  """

  defstruct [
    :"spreadsheetId",
    :"valueRanges"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchGetValuesResponse do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"valueRanges", :list, GoogleApi.Sheets.V4.Model.ValueRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchGetValuesResponse do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

