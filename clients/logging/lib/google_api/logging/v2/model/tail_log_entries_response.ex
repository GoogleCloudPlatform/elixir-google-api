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

defmodule GoogleApi.Logging.V2.Model.TailLogEntriesResponse do
  @moduledoc """
  Result returned from TailLogEntries.

  ## Attributes

  *   `entries` (*type:* `list(GoogleApi.Logging.V2.Model.LogEntry.t)`, *default:* `nil`) - A list of log entries. Each response in the stream will order entries with increasing values of LogEntry.timestamp. Ordering is not guaranteed between separate responses.
  *   `suppressionInfo` (*type:* `list(GoogleApi.Logging.V2.Model.SuppressionInfo.t)`, *default:* `nil`) - If entries that otherwise would have been included in the session were not sent back to the client, counts of relevant entries omitted from the session with the reason that they were not included. There will be at most one of each reason per response. The counts represent the number of suppressed entries since the last streamed response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries => list(GoogleApi.Logging.V2.Model.LogEntry.t()) | nil,
          :suppressionInfo => list(GoogleApi.Logging.V2.Model.SuppressionInfo.t()) | nil
        }

  field(:entries, as: GoogleApi.Logging.V2.Model.LogEntry, type: :list)
  field(:suppressionInfo, as: GoogleApi.Logging.V2.Model.SuppressionInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.TailLogEntriesResponse do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.TailLogEntriesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.TailLogEntriesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
