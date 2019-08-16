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

defmodule GoogleApi.GamesManagement.V1management.Model.PlayerScoreResetResponse do
  @moduledoc """
  This is a JSON template for a list of reset leaderboard entry resources.

  ## Attributes

  *   `definitionId` (*type:* `String.t`, *default:* `nil`) - The ID of an leaderboard for which player state has been updated.
  *   `kind` (*type:* `String.t`, *default:* `gamesManagement#playerScoreResetResponse`) - Uniquely identifies the type of this resource. Value is always the fixed string gamesManagement#playerScoreResetResponse.
  *   `resetScoreTimeSpans` (*type:* `list(String.t)`, *default:* `nil`) - The time spans of the updated score.
      Possible values are:  
      - "ALL_TIME" - The score is an all-time score. 
      - "WEEKLY" - The score is a weekly score. 
      - "DAILY" - The score is a daily score.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :definitionId => String.t(),
          :kind => String.t(),
          :resetScoreTimeSpans => list(String.t())
        }

  field(:definitionId)
  field(:kind)
  field(:resetScoreTimeSpans, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.PlayerScoreResetResponse do
  def decode(value, options) do
    GoogleApi.GamesManagement.V1management.Model.PlayerScoreResetResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.PlayerScoreResetResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
