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

defmodule GoogleApi.Sheets.V4.Model.CellFormat do
  @moduledoc """
  The format of a cell.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"backgroundColor",
    :"borders",
    :"horizontalAlignment",
    :"hyperlinkDisplayType",
    :"numberFormat",
    :"padding",
    :"textDirection",
    :"textFormat",
    :"textRotation",
    :"verticalAlignment",
    :"wrapStrategy"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CellFormat do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"backgroundColor", :struct, GoogleApi.Sheets.V4.Model.Color, options)
    |> deserialize(:"borders", :struct, GoogleApi.Sheets.V4.Model.Borders, options)
    |> deserialize(:"numberFormat", :struct, GoogleApi.Sheets.V4.Model.NumberFormat, options)
    |> deserialize(:"padding", :struct, GoogleApi.Sheets.V4.Model.Padding, options)
    |> deserialize(:"textFormat", :struct, GoogleApi.Sheets.V4.Model.TextFormat, options)
    |> deserialize(:"textRotation", :struct, GoogleApi.Sheets.V4.Model.TextRotation, options)
  end
end

