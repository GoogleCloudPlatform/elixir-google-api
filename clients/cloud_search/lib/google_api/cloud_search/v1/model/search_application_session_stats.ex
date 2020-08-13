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

defmodule GoogleApi.CloudSearch.V1.Model.SearchApplicationSessionStats do
  @moduledoc """


  ## Attributes

  *   `date` (*type:* `GoogleApi.CloudSearch.V1.Model.Date.t`, *default:* `nil`) - Date for which session stats were calculated. Stats calculated on the next day close to midnight are returned.
  *   `searchSessionsCount` (*type:* `String.t`, *default:* `nil`) - The count of search sessions on the day
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => GoogleApi.CloudSearch.V1.Model.Date.t(),
          :searchSessionsCount => String.t()
        }

  field(:date, as: GoogleApi.CloudSearch.V1.Model.Date)
  field(:searchSessionsCount)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.SearchApplicationSessionStats do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.SearchApplicationSessionStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.SearchApplicationSessionStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
