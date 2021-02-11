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

defmodule GoogleApi.Domains.V1beta1.Model.ConfigureContactSettingsRequest do
  @moduledoc """
  Request for the `ConfigureContactSettings` method.

  ## Attributes

  *   `contactNotices` (*type:* `list(String.t)`, *default:* `nil`) - The list of contact notices that the caller acknowledges. The notices needed here depend on the values specified in `contact_settings`.
  *   `contactSettings` (*type:* `GoogleApi.Domains.V1beta1.Model.ContactSettings.t`, *default:* `nil`) - Fields of the `ContactSettings` to update.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Required. The field mask describing which fields to update as a comma-separated list. For example, if only the registrant contact is being updated, the `update_mask` would be `"registrant_contact"`.
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - Validate the request without actually updating the contact settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactNotices => list(String.t()),
          :contactSettings => GoogleApi.Domains.V1beta1.Model.ContactSettings.t(),
          :updateMask => String.t(),
          :validateOnly => boolean()
        }

  field(:contactNotices, type: :list)
  field(:contactSettings, as: GoogleApi.Domains.V1beta1.Model.ContactSettings)
  field(:updateMask)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1beta1.Model.ConfigureContactSettingsRequest do
  def decode(value, options) do
    GoogleApi.Domains.V1beta1.Model.ConfigureContactSettingsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1beta1.Model.ConfigureContactSettingsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
