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

defmodule GoogleApi.CloudSearch.V1.Model.DataSourceIndexStats do
  @moduledoc """
  Aggregation of items by status code as of the specified date.

  ## Attributes

  *   `date` (*type:* `GoogleApi.CloudSearch.V1.Model.Date.t`, *default:* `nil`) - Date for which index stats were calculated. If the date of request is not the current date then stats calculated on the next day are returned. Stats are calculated close to mid night in this case. If date of request is current date, then real time stats are returned.
  *   `itemCountByStatus` (*type:* `list(GoogleApi.CloudSearch.V1.Model.ItemCountByStatus.t)`, *default:* `nil`) - Number of items aggregrated by status code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => GoogleApi.CloudSearch.V1.Model.Date.t() | nil,
          :itemCountByStatus => list(GoogleApi.CloudSearch.V1.Model.ItemCountByStatus.t()) | nil
        }

  field(:date, as: GoogleApi.CloudSearch.V1.Model.Date)
  field(:itemCountByStatus, as: GoogleApi.CloudSearch.V1.Model.ItemCountByStatus, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.DataSourceIndexStats do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.DataSourceIndexStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.DataSourceIndexStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
