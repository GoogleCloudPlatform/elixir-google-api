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

defmodule GoogleApi.Content.V21.Model.AccountUser do
  @moduledoc """


  ## Attributes

  *   `admin` (*type:* `boolean()`, *default:* `nil`) - Whether user is an admin.
  *   `emailAddress` (*type:* `String.t`, *default:* `nil`) - User's email address.
  *   `orderManager` (*type:* `boolean()`, *default:* `nil`) - Whether user is an order manager.
  *   `paymentsAnalyst` (*type:* `boolean()`, *default:* `nil`) - Whether user can access payment statements.
  *   `paymentsManager` (*type:* `boolean()`, *default:* `nil`) - Whether user can manage payment settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :admin => boolean(),
          :emailAddress => String.t(),
          :orderManager => boolean(),
          :paymentsAnalyst => boolean(),
          :paymentsManager => boolean()
        }

  field(:admin)
  field(:emailAddress)
  field(:orderManager)
  field(:paymentsAnalyst)
  field(:paymentsManager)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountUser do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountUser.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountUser do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
