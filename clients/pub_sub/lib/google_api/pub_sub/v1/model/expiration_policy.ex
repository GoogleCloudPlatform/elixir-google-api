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

defmodule GoogleApi.PubSub.V1.Model.ExpirationPolicy do
  @moduledoc """
  A policy that specifies the conditions for resource expiration (i.e.,
  automatic resource deletion).

  ## Attributes

  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Specifies the "time-to-live" duration for an associated resource. The
      resource expires if it is not active for a period of `ttl`. The definition
      of "activity" depends on the type of the associated resource. The minimum
      and maximum allowed values for `ttl` depend on the type of the associated
      resource, as well. If `ttl` is not set, the associated resource never
      expires.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ttl => String.t()
        }

  field(:ttl)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.ExpirationPolicy do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.ExpirationPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.ExpirationPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
