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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.ListPublisherProfilesResponse do
  @moduledoc """
  Response message for profiles visible to the buyer.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - List pagination support
  *   `publisherProfiles` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile.t)`, *default:* `nil`) - The list of matching publisher profiles.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :publisherProfiles =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile.t()) | nil
        }

  field(:nextPageToken)

  field(:publisherProfiles,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListPublisherProfilesResponse do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.ListPublisherProfilesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.ListPublisherProfilesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
