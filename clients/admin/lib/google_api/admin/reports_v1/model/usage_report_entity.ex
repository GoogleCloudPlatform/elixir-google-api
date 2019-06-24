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

defmodule GoogleApi.Admin.Reports_v1.Model.UsageReportEntity do
  @moduledoc """
  Information about the type of the item.

  ## Attributes

  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Obfuscated customer id for the record.
  *   `entityId` (*type:* `String.t`, *default:* `nil`) - Object key. Only relevant if entity.type = "OBJECT" Note: external-facing name of report is "Entities" rather than "Objects".
  *   `profileId` (*type:* `String.t`, *default:* `nil`) - Obfuscated user id for the record.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of item, can be customer, user, or entity (aka. object).
  *   `userEmail` (*type:* `String.t`, *default:* `nil`) - user's email. Only relevant if entity.type = "USER"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customerId => String.t(),
          :entityId => String.t(),
          :profileId => String.t(),
          :type => String.t(),
          :userEmail => String.t()
        }

  field(:customerId)
  field(:entityId)
  field(:profileId)
  field(:type)
  field(:userEmail)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReportEntity do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.UsageReportEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReportEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
