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

defmodule GoogleApi.Sheets.V4.Model.AutoFillRequest do
  @moduledoc """
  Fills in more data based on existing data.

  ## Attributes

  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The range to autofill. This will examine the range and detect the location that has data and automatically fill that data in to the rest of the range.
  *   `sourceAndDestination` (*type:* `GoogleApi.Sheets.V4.Model.SourceAndDestination.t`, *default:* `nil`) - The source and destination areas to autofill. This explicitly lists the source of the autofill and where to extend that data.
  *   `useAlternateSeries` (*type:* `boolean()`, *default:* `nil`) - True if we should generate data with the "alternate" series. This differs based on the type and amount of source data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :range => GoogleApi.Sheets.V4.Model.GridRange.t(),
          :sourceAndDestination => GoogleApi.Sheets.V4.Model.SourceAndDestination.t(),
          :useAlternateSeries => boolean()
        }

  field(:range, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:sourceAndDestination, as: GoogleApi.Sheets.V4.Model.SourceAndDestination)
  field(:useAlternateSeries)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AutoFillRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AutoFillRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AutoFillRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
