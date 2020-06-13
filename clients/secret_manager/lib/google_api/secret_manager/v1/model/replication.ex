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

defmodule GoogleApi.SecretManager.V1.Model.Replication do
  @moduledoc """
  A policy that defines the replication configuration of data.


  ## Attributes

  *   `automatic` (*type:* `GoogleApi.SecretManager.V1.Model.Automatic.t`, *default:* `nil`) - The Secret will automatically be replicated without any restrictions.
  *   `userManaged` (*type:* `GoogleApi.SecretManager.V1.Model.UserManaged.t`, *default:* `nil`) - The Secret will only be replicated into the locations specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automatic => GoogleApi.SecretManager.V1.Model.Automatic.t(),
          :userManaged => GoogleApi.SecretManager.V1.Model.UserManaged.t()
        }

  field(:automatic, as: GoogleApi.SecretManager.V1.Model.Automatic)
  field(:userManaged, as: GoogleApi.SecretManager.V1.Model.UserManaged)
end

defimpl Poison.Decoder, for: GoogleApi.SecretManager.V1.Model.Replication do
  def decode(value, options) do
    GoogleApi.SecretManager.V1.Model.Replication.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecretManager.V1.Model.Replication do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
