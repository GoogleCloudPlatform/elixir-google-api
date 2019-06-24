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

defmodule GoogleApi.SafeBrowsing.V4.Model.ThreatListDescriptor do
  @moduledoc """
  Describes an individual threat list. A list is defined by three parameters:
  the type of threat posed, the type of platform targeted by the threat, and
  the type of entries in the list.

  ## Attributes

  *   `platformType` (*type:* `String.t`, *default:* `nil`) - The platform type targeted by the list's entries.
  *   `threatEntryType` (*type:* `String.t`, *default:* `nil`) - The entry types contained in the list.
  *   `threatType` (*type:* `String.t`, *default:* `nil`) - The threat type posed by the list's entries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :platformType => String.t(),
          :threatEntryType => String.t(),
          :threatType => String.t()
        }

  field(:platformType)
  field(:threatEntryType)
  field(:threatType)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatListDescriptor do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.ThreatListDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatListDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
