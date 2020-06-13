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

defmodule GoogleApi.AndroidEnterprise.V1.Model.GroupLicenseUsersListResponse do
  @moduledoc """


  ## Attributes

  *   `user` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.User.t)`, *default:* `nil`) - A user of an enterprise.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :user => list(GoogleApi.AndroidEnterprise.V1.Model.User.t())
        }

  field(:user, as: GoogleApi.AndroidEnterprise.V1.Model.User, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.GroupLicenseUsersListResponse do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.GroupLicenseUsersListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.GroupLicenseUsersListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
