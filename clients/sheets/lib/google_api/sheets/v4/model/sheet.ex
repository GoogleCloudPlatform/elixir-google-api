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

defmodule GoogleApi.Sheets.V4.Model.Sheet do
  @moduledoc """
  A sheet in a spreadsheet.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bandedRanges",
    :"basicFilter",
    :"charts",
    :"conditionalFormats",
    :"data",
    :"filterViews",
    :"merges",
    :"properties",
    :"protectedRanges"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Sheet do
  import GoogleApi.Sheets.V4.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bandedRanges", :list, GoogleApi.Sheets.V4.Model.BandedRange, options)
    |> deserialize(:"basicFilter", :struct, GoogleApi.Sheets.V4.Model.BasicFilter, options)
    |> deserialize(:"charts", :list, GoogleApi.Sheets.V4.Model.EmbeddedChart, options)
    |> deserialize(:"conditionalFormats", :list, GoogleApi.Sheets.V4.Model.ConditionalFormatRule, options)
    |> deserialize(:"data", :list, GoogleApi.Sheets.V4.Model.GridData, options)
    |> deserialize(:"filterViews", :list, GoogleApi.Sheets.V4.Model.FilterView, options)
    |> deserialize(:"merges", :list, GoogleApi.Sheets.V4.Model.GridRange, options)
    |> deserialize(:"properties", :struct, GoogleApi.Sheets.V4.Model.SheetProperties, options)
    |> deserialize(:"protectedRanges", :list, GoogleApi.Sheets.V4.Model.ProtectedRange, options)
  end
end

