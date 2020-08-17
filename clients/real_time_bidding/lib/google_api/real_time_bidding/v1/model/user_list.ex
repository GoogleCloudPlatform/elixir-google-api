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

defmodule GoogleApi.RealTimeBidding.V1.Model.UserList do
  @moduledoc """
  Represents an Authorized Buyers user list. Authorized Buyers can create/update/list user lists. Once a user list is created in the system, Authorized Buyers can add users to the user list using the bulk uploader API. Alternatively, users can be added by hosting a tag on the advertiser's page.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The description for the user list.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Display name of the user list. This must be unique across all user lists for a given account.
  *   `membershipDurationDays` (*type:* `String.t`, *default:* `nil`) - Required. The number of days a user's cookie stays on the user list. The field must be between 0 and 540 inclusive.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the user list that must follow the pattern `buyers/{buyer}/userLists/{user_list}`, where `{buyer}` represents the account ID of the buyer who owns the user list. For a bidder accessing user lists on behalf of a child seat buyer, `{buyer}` represents the account ID of the child seat buyer. `{user_list}` is an int64 identifier assigned by Google to uniquely identify a user list.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. The status of the user list. A new user list starts out as open.
  *   `urlRestriction` (*type:* `GoogleApi.RealTimeBidding.V1.Model.UrlRestriction.t`, *default:* `nil`) - Required. The URL restriction for the user list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :displayName => String.t(),
          :membershipDurationDays => String.t(),
          :name => String.t(),
          :status => String.t(),
          :urlRestriction => GoogleApi.RealTimeBidding.V1.Model.UrlRestriction.t()
        }

  field(:description)
  field(:displayName)
  field(:membershipDurationDays)
  field(:name)
  field(:status)
  field(:urlRestriction, as: GoogleApi.RealTimeBidding.V1.Model.UrlRestriction)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.UserList do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.UserList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.UserList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
