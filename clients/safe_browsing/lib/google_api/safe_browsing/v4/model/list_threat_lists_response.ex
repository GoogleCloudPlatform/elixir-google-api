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

defmodule GoogleApi.SafeBrowsing.V4.Model.ListThreatListsResponse do
  @moduledoc """


  ## Attributes

  *   `threatLists` (*type:* `list(GoogleApi.SafeBrowsing.V4.Model.ThreatListDescriptor.t)`, *default:* `nil`) - The lists available for download by the client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :threatLists => list(GoogleApi.SafeBrowsing.V4.Model.ThreatListDescriptor.t())
        }

  field(:threatLists, as: GoogleApi.SafeBrowsing.V4.Model.ThreatListDescriptor, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ListThreatListsResponse do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.ListThreatListsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ListThreatListsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
