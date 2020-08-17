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

defmodule GoogleApi.Sheets.V4.Model.BatchUpdateValuesRequest do
  @moduledoc """
  The request for updating more than one range of values in a spreadsheet.

  ## Attributes

  *   `data` (*type:* `list(GoogleApi.Sheets.V4.Model.ValueRange.t)`, *default:* `nil`) - The new values to apply to the spreadsheet.
  *   `includeValuesInResponse` (*type:* `boolean()`, *default:* `nil`) - Determines if the update response should include the values of the cells that were updated. By default, responses do not include the updated values. The `updatedData` field within each of the BatchUpdateValuesResponse.responses contains the updated values. If the range to write was larger than the range actually written, the response includes all values in the requested range (excluding trailing empty rows and columns).
  *   `responseDateTimeRenderOption` (*type:* `String.t`, *default:* `nil`) - Determines how dates, times, and durations in the response should be rendered. This is ignored if response_value_render_option is FORMATTED_VALUE. The default dateTime render option is DateTimeRenderOption.SERIAL_NUMBER.
  *   `responseValueRenderOption` (*type:* `String.t`, *default:* `nil`) - Determines how values in the response should be rendered. The default render option is ValueRenderOption.FORMATTED_VALUE.
  *   `valueInputOption` (*type:* `String.t`, *default:* `nil`) - How the input data should be interpreted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => list(GoogleApi.Sheets.V4.Model.ValueRange.t()),
          :includeValuesInResponse => boolean(),
          :responseDateTimeRenderOption => String.t(),
          :responseValueRenderOption => String.t(),
          :valueInputOption => String.t()
        }

  field(:data, as: GoogleApi.Sheets.V4.Model.ValueRange, type: :list)
  field(:includeValuesInResponse)
  field(:responseDateTimeRenderOption)
  field(:responseValueRenderOption)
  field(:valueInputOption)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateValuesRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BatchUpdateValuesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchUpdateValuesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
