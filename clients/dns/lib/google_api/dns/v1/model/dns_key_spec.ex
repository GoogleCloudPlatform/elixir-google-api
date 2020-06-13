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

defmodule GoogleApi.DNS.V1.Model.DnsKeySpec do
  @moduledoc """


  ## Attributes

  *   `algorithm` (*type:* `String.t`, *default:* `nil`) - 
  *   `keyLength` (*type:* `integer()`, *default:* `nil`) - 
  *   `keyType` (*type:* `String.t`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `dns#dnsKeySpec`) - Identifies what kind of resource this is. Value: the fixed string "dns#dnsKeySpec".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => String.t(),
          :keyLength => integer(),
          :keyType => String.t(),
          :kind => String.t()
        }

  field(:algorithm)
  field(:keyLength)
  field(:keyType)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.DnsKeySpec do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.DnsKeySpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.DnsKeySpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
