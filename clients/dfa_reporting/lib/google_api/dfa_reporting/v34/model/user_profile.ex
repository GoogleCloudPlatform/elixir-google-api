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

defmodule GoogleApi.DFAReporting.V34.Model.UserProfile do
  @moduledoc """
  Represents a UserProfile resource.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The account ID to which this profile belongs.
  *   `accountName` (*type:* `String.t`, *default:* `nil`) - The account name this profile belongs to.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The eTag of this response for caching purposes.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#userProfile`) - The kind of resource this is, in this case dfareporting#userProfile.
  *   `profileId` (*type:* `String.t`, *default:* `nil`) - The unique ID of the user profile.
  *   `subAccountId` (*type:* `String.t`, *default:* `nil`) - The sub account ID this profile belongs to if applicable.
  *   `subAccountName` (*type:* `String.t`, *default:* `nil`) - The sub account name this profile belongs to if applicable.
  *   `userName` (*type:* `String.t`, *default:* `nil`) - The user name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :accountName => String.t(),
          :etag => String.t(),
          :kind => String.t(),
          :profileId => String.t(),
          :subAccountId => String.t(),
          :subAccountName => String.t(),
          :userName => String.t()
        }

  field(:accountId)
  field(:accountName)
  field(:etag)
  field(:kind)
  field(:profileId)
  field(:subAccountId)
  field(:subAccountName)
  field(:userName)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.UserProfile do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.UserProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.UserProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
