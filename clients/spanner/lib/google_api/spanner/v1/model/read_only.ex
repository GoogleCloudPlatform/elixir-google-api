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

defmodule GoogleApi.Spanner.V1.Model.ReadOnly do
  @moduledoc """
  Message type to initiate a read-only transaction.

  ## Attributes

  - exactStaleness (String): Executes all reads at a timestamp that is &#x60;exact_staleness&#x60; old. The timestamp is chosen soon after the read is started.  Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client&#39;s local clock is substantially skewed from Cloud Spanner commit timestamps.  Useful for reading at nearby replicas without the distributed timestamp negotiation overhead of &#x60;max_staleness&#x60;. Defaults to: `null`.
  - maxStaleness (String): Read data at a timestamp &gt;&#x3D; &#x60;NOW - max_staleness&#x60; seconds. Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client&#39;s local clock is substantially skewed from Cloud Spanner commit timestamps.  Useful for reading the freshest data available at a nearby replica, while bounding the possible staleness if the local replica has fallen behind.  Note that this option can only be used in single-use transactions. Defaults to: `null`.
  - minReadTimestamp (String): Executes all reads at a timestamp &gt;&#x3D; &#x60;min_read_timestamp&#x60;.  This is useful for requesting fresher data than some previous read, or data that is fresh enough to observe the effects of some previously committed transaction whose timestamp is known.  Note that this option can only be used in single-use transactions. Defaults to: `null`.
  - readTimestamp (String): Executes all reads at the given timestamp. Unlike other modes, reads at a specific timestamp are repeatable; the same read at the same timestamp always returns the same data. If the timestamp is in the future, the read will block until the specified timestamp, modulo the read&#39;s deadline.  Useful for large scale consistent reads such as mapreduces, or for coordinating many reads against a consistent snapshot of the data. Defaults to: `null`.
  - returnReadTimestamp (Boolean): If true, the Cloud Spanner-selected read timestamp is included in the Transaction message that describes the transaction. Defaults to: `null`.
  - strong (Boolean): Read at a timestamp where all previously committed transactions are visible. Defaults to: `null`.
  """

  defstruct [
    :"exactStaleness",
    :"maxStaleness",
    :"minReadTimestamp",
    :"readTimestamp",
    :"returnReadTimestamp",
    :"strong"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ReadOnly do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ReadOnly do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

