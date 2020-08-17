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

defmodule GoogleApi.Sheets.V4.Model.BaselineValueFormat do
  @moduledoc """
  Formatting options for baseline value.

  ## Attributes

  *   `comparisonType` (*type:* `String.t`, *default:* `nil`) - The comparison type of key value with baseline value.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description which is appended after the baseline value. This field is optional.
  *   `negativeColor` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - Color to be used, in case baseline value represents a negative change for key value. This field is optional.
  *   `negativeColorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - Color to be used, in case baseline value represents a negative change for key value. This field is optional. If negative_color is also set, this field takes precedence.
  *   `position` (*type:* `GoogleApi.Sheets.V4.Model.TextPosition.t`, *default:* `nil`) - Specifies the horizontal text positioning of baseline value. This field is optional. If not specified, default positioning is used.
  *   `positiveColor` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - Color to be used, in case baseline value represents a positive change for key value. This field is optional.
  *   `positiveColorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - Color to be used, in case baseline value represents a positive change for key value. This field is optional. If positive_color is also set, this field takes precedence.
  *   `textFormat` (*type:* `GoogleApi.Sheets.V4.Model.TextFormat.t`, *default:* `nil`) - Text formatting options for baseline value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comparisonType => String.t(),
          :description => String.t(),
          :negativeColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :negativeColorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :position => GoogleApi.Sheets.V4.Model.TextPosition.t(),
          :positiveColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :positiveColorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :textFormat => GoogleApi.Sheets.V4.Model.TextFormat.t()
        }

  field(:comparisonType)
  field(:description)
  field(:negativeColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:negativeColorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:position, as: GoogleApi.Sheets.V4.Model.TextPosition)
  field(:positiveColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:positiveColorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:textFormat, as: GoogleApi.Sheets.V4.Model.TextFormat)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BaselineValueFormat do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BaselineValueFormat.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BaselineValueFormat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
