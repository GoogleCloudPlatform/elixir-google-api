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

defmodule GoogleApi.Content.V2.Model.ShippingSettings do
  @moduledoc """
  The merchant account's shipping settings. All methods except getsupportedcarriers and getsupportedholidays require the admin role.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The ID of the account to which these account shipping settings belong. Ignored upon update, always present in get request responses.
  *   `postalCodeGroups` (*type:* `list(GoogleApi.Content.V2.Model.PostalCodeGroup.t)`, *default:* `nil`) - A list of postal code groups that can be referred to in `services`. Optional.
  *   `services` (*type:* `list(GoogleApi.Content.V2.Model.Service.t)`, *default:* `nil`) - The target account's list of services. Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :postalCodeGroups => list(GoogleApi.Content.V2.Model.PostalCodeGroup.t()),
          :services => list(GoogleApi.Content.V2.Model.Service.t())
        }

  field(:accountId)
  field(:postalCodeGroups, as: GoogleApi.Content.V2.Model.PostalCodeGroup, type: :list)
  field(:services, as: GoogleApi.Content.V2.Model.Service, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ShippingSettings do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ShippingSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ShippingSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
