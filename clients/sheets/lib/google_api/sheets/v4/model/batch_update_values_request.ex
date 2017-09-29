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

defmodule GoogleApi.Sheets.V4.Model.BatchUpdateValuesRequest do
  @moduledoc """
  The request for updating more than one range of values in a spreadsheet.

  ## Attributes

  - data (List[ValueRange]): The new values to apply to the spreadsheet. Defaults to: `null`.
  - includeValuesInResponse (Boolean): Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. The &#x60;updatedData&#x60; field within each of the BatchUpdateValuesResponse.responses will contain the updated values. If the range to write was larger than than the range actually written, the response will include all values in the requested range (excluding trailing empty rows and columns). Defaults to: `null`.
  - responseDateTimeRenderOption (String): Determines how dates, times, and durations in the response should be rendered. This is ignored if response_value_render_option is FORMATTED_VALUE. The default dateTime render option is DateTimeRenderOption.SERIAL_NUMBER. Defaults to: `null`.
    - Enum - one of [SERIAL_NUMBER, FORMATTED_STRING]
  - responseValueRenderOption (String): Determines how values in the response should be rendered. The default render option is ValueRenderOption.FORMATTED_VALUE. Defaults to: `null`.
    - Enum - one of [FORMATTED_VALUE, UNFORMATTED_VALUE, FORMULA]
  - valueInputOption (String): How the input data should be interpreted. Defaults to: `null`.
    - Enum - one of [INPUT_VALUE_OPTION_UNSPECIFIED, RAW, USER_ENTERED]
  """

  defstruct [
    :"data",
    :"includeValuesInResponse",
    :"responseDateTimeRenderOption",
    :"responseValueRenderOption",
    :"valueInputOption"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateValuesRequest do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"data", :list, GoogleApi.Sheets.V4.Model.ValueRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateValuesRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end

