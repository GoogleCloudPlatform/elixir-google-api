# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.StorageTransfer.V1.Model.TransferCounters do
  @moduledoc """
  A collection of counters that report the progress of a transfer operation.

  ## Attributes

  - bytesCopiedToSink (String.t): Bytes that are copied to the data sink. Defaults to `nil`.
  - bytesDeletedFromSink (String.t): Bytes that are deleted from the data sink. Defaults to `nil`.
  - bytesDeletedFromSource (String.t): Bytes that are deleted from the data source. Defaults to `nil`.
  - bytesFailedToDeleteFromSink (String.t): Bytes that failed to be deleted from the data sink. Defaults to `nil`.
  - bytesFoundFromSource (String.t): Bytes found in the data source that are scheduled to be transferred,
  excluding any that are filtered based on object conditions or skipped due
  to sync. Defaults to `nil`.
  - bytesFoundOnlyFromSink (String.t): Bytes found only in the data sink that are scheduled to be deleted. Defaults to `nil`.
  - bytesFromSourceFailed (String.t): Bytes in the data source that failed to be transferred or that failed to
  be deleted after being transferred. Defaults to `nil`.
  - bytesFromSourceSkippedBySync (String.t): Bytes in the data source that are not transferred because they already
  exist in the data sink. Defaults to `nil`.
  - objectsCopiedToSink (String.t): Objects that are copied to the data sink. Defaults to `nil`.
  - objectsDeletedFromSink (String.t): Objects that are deleted from the data sink. Defaults to `nil`.
  - objectsDeletedFromSource (String.t): Objects that are deleted from the data source. Defaults to `nil`.
  - objectsFailedToDeleteFromSink (String.t): Objects that failed to be deleted from the data sink. Defaults to `nil`.
  - objectsFoundFromSource (String.t): Objects found in the data source that are scheduled to be transferred,
  excluding any that are filtered based on object conditions or skipped due
  to sync. Defaults to `nil`.
  - objectsFoundOnlyFromSink (String.t): Objects found only in the data sink that are scheduled to be deleted. Defaults to `nil`.
  - objectsFromSourceFailed (String.t): Objects in the data source that failed to be transferred or that failed
  to be deleted after being transferred. Defaults to `nil`.
  - objectsFromSourceSkippedBySync (String.t): Objects in the data source that are not transferred because they already
  exist in the data sink. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytesCopiedToSink => String.t(),
          :bytesDeletedFromSink => String.t(),
          :bytesDeletedFromSource => String.t(),
          :bytesFailedToDeleteFromSink => String.t(),
          :bytesFoundFromSource => String.t(),
          :bytesFoundOnlyFromSink => String.t(),
          :bytesFromSourceFailed => String.t(),
          :bytesFromSourceSkippedBySync => String.t(),
          :objectsCopiedToSink => String.t(),
          :objectsDeletedFromSink => String.t(),
          :objectsDeletedFromSource => String.t(),
          :objectsFailedToDeleteFromSink => String.t(),
          :objectsFoundFromSource => String.t(),
          :objectsFoundOnlyFromSink => String.t(),
          :objectsFromSourceFailed => String.t(),
          :objectsFromSourceSkippedBySync => String.t()
        }

  field(:bytesCopiedToSink)
  field(:bytesDeletedFromSink)
  field(:bytesDeletedFromSource)
  field(:bytesFailedToDeleteFromSink)
  field(:bytesFoundFromSource)
  field(:bytesFoundOnlyFromSink)
  field(:bytesFromSourceFailed)
  field(:bytesFromSourceSkippedBySync)
  field(:objectsCopiedToSink)
  field(:objectsDeletedFromSink)
  field(:objectsDeletedFromSource)
  field(:objectsFailedToDeleteFromSink)
  field(:objectsFoundFromSource)
  field(:objectsFoundOnlyFromSink)
  field(:objectsFromSourceFailed)
  field(:objectsFromSourceSkippedBySync)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.TransferCounters do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.TransferCounters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.TransferCounters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
