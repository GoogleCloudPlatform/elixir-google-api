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

defmodule GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  @moduledoc """
  Properties of a spreadsheet.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"autoRecalc",
    :"defaultFormat",
    :"iterativeCalculationSettings",
    :"locale",
    :"timeZone",
    :"title"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"defaultFormat", :struct, GoogleApi.Sheets.V4.Model.CellFormat, options)
    |> deserialize(:"iterativeCalculationSettings", :struct, GoogleApi.Sheets.V4.Model.IterativeCalculationSettings, options)
  end
end

