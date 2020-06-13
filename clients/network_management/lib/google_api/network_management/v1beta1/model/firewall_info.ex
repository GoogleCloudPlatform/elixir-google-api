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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo do
  @moduledoc """
  For display only. Metadata associated with a Compute Engine firewall rule.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Possible values: ALLOW, DENY
  *   `direction` (*type:* `String.t`, *default:* `nil`) - Possible values: INGRESS, EGRESS
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of a Compute Engine firewall rule.
  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - URI of a Compute Engine network.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Priority of the firewall rule.
  *   `targetServiceAccounts` (*type:* `list(String.t)`, *default:* `nil`) - Target service accounts of the firewall rule.
  *   `targetTags` (*type:* `list(String.t)`, *default:* `nil`) - Target tags of the firewall rule.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI of a Compute Engine firewall rule.
      Implied default rule does not have URI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :direction => String.t(),
          :displayName => String.t(),
          :networkUri => String.t(),
          :priority => integer(),
          :targetServiceAccounts => list(String.t()),
          :targetTags => list(String.t()),
          :uri => String.t()
        }

  field(:action)
  field(:direction)
  field(:displayName)
  field(:networkUri)
  field(:priority)
  field(:targetServiceAccounts, type: :list)
  field(:targetTags, type: :list)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.FirewallInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
