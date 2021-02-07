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

defmodule GoogleApi.SafeBrowsing.V4.Model.ListUpdateResponse do
  @moduledoc """
  An update to an individual list.

  ## Attributes

  *   `additions` (*type:* `list(GoogleApi.SafeBrowsing.V4.Model.ThreatEntrySet.t)`, *default:* `nil`) - A set of entries to add to a local threat type's list. Repeated to allow for a combination of compressed and raw data to be sent in a single response.
  *   `checksum` (*type:* `GoogleApi.SafeBrowsing.V4.Model.Checksum.t`, *default:* `nil`) - The expected SHA256 hash of the client state; that is, of the sorted list of all hashes present in the database after applying the provided update. If the client state doesn't match the expected state, the client must disregard this update and retry later.
  *   `newClientState` (*type:* `String.t`, *default:* `nil`) - The new client state, in encrypted format. Opaque to clients.
  *   `platformType` (*type:* `String.t`, *default:* `nil`) - The platform type for which data is returned.
  *   `removals` (*type:* `list(GoogleApi.SafeBrowsing.V4.Model.ThreatEntrySet.t)`, *default:* `nil`) - A set of entries to remove from a local threat type's list. In practice, this field is empty or contains exactly one ThreatEntrySet.
  *   `responseType` (*type:* `String.t`, *default:* `nil`) - The type of response. This may indicate that an action is required by the client when the response is received.
  *   `threatEntryType` (*type:* `String.t`, *default:* `nil`) - The format of the threats.
  *   `threatType` (*type:* `String.t`, *default:* `nil`) - The threat type for which data is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additions => list(GoogleApi.SafeBrowsing.V4.Model.ThreatEntrySet.t()),
          :checksum => GoogleApi.SafeBrowsing.V4.Model.Checksum.t(),
          :newClientState => String.t(),
          :platformType => String.t(),
          :removals => list(GoogleApi.SafeBrowsing.V4.Model.ThreatEntrySet.t()),
          :responseType => String.t(),
          :threatEntryType => String.t(),
          :threatType => String.t()
        }

  field(:additions, as: GoogleApi.SafeBrowsing.V4.Model.ThreatEntrySet, type: :list)
  field(:checksum, as: GoogleApi.SafeBrowsing.V4.Model.Checksum)
  field(:newClientState)
  field(:platformType)
  field(:removals, as: GoogleApi.SafeBrowsing.V4.Model.ThreatEntrySet, type: :list)
  field(:responseType)
  field(:threatEntryType)
  field(:threatType)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ListUpdateResponse do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.ListUpdateResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ListUpdateResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
