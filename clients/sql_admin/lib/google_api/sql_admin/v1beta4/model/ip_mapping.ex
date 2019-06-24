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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.IpMapping do
  @moduledoc """
  Database instance IP Mapping.

  ## Attributes

  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - The IP address assigned.
  *   `timeToRetire` (*type:* `DateTime.t`, *default:* `nil`) - The due time for this IP to be retired in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. This field is only available when the IP is scheduled to be retired.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of this IP address. A PRIMARY address is a public address that can accept incoming connections. A PRIVATE address is a private address that can accept incoming connections. An OUTGOING address is the source address of connections originating from the instance, if supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipAddress => String.t(),
          :timeToRetire => DateTime.t(),
          :type => String.t()
        }

  field(:ipAddress)
  field(:timeToRetire, as: DateTime)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.IpMapping do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.IpMapping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.IpMapping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
