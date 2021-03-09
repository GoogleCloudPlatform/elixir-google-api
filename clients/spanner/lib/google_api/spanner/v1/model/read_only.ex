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

defmodule GoogleApi.Spanner.V1.Model.ReadOnly do
  @moduledoc """
  Message type to initiate a read-only transaction.

  ## Attributes

  *   `exactStaleness` (*type:* `String.t`, *default:* `nil`) - Executes all reads at a timestamp that is `exact_staleness` old. The timestamp is chosen soon after the read is started. Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client's local clock is substantially skewed from Cloud Spanner commit timestamps. Useful for reading at nearby replicas without the distributed timestamp negotiation overhead of `max_staleness`.
  *   `maxStaleness` (*type:* `String.t`, *default:* `nil`) - Read data at a timestamp >= `NOW - max_staleness` seconds. Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client's local clock is substantially skewed from Cloud Spanner commit timestamps. Useful for reading the freshest data available at a nearby replica, while bounding the possible staleness if the local replica has fallen behind. Note that this option can only be used in single-use transactions.
  *   `minReadTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Executes all reads at a timestamp >= `min_read_timestamp`. This is useful for requesting fresher data than some previous read, or data that is fresh enough to observe the effects of some previously committed transaction whose timestamp is known. Note that this option can only be used in single-use transactions. A timestamp in RFC3339 UTC \\"Zulu\\" format, accurate to nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
  *   `readTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Executes all reads at the given timestamp. Unlike other modes, reads at a specific timestamp are repeatable; the same read at the same timestamp always returns the same data. If the timestamp is in the future, the read will block until the specified timestamp, modulo the read's deadline. Useful for large scale consistent reads such as mapreduces, or for coordinating many reads against a consistent snapshot of the data. A timestamp in RFC3339 UTC \\"Zulu\\" format, accurate to nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
  *   `returnReadTimestamp` (*type:* `boolean()`, *default:* `nil`) - If true, the Cloud Spanner-selected read timestamp is included in the Transaction message that describes the transaction.
  *   `strong` (*type:* `boolean()`, *default:* `nil`) - Read at a timestamp where all previously committed transactions are visible.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exactStaleness => String.t() | nil,
          :maxStaleness => String.t() | nil,
          :minReadTimestamp => DateTime.t() | nil,
          :readTimestamp => DateTime.t() | nil,
          :returnReadTimestamp => boolean() | nil,
          :strong => boolean() | nil
        }

  field(:exactStaleness)
  field(:maxStaleness)
  field(:minReadTimestamp, as: DateTime)
  field(:readTimestamp, as: DateTime)
  field(:returnReadTimestamp)
  field(:strong)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ReadOnly do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ReadOnly.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ReadOnly do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
