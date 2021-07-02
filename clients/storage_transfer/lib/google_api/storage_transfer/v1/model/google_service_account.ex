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

defmodule GoogleApi.StorageTransfer.V1.Model.GoogleServiceAccount do
  @moduledoc """
  Google service account

  ## Attributes

  *   `accountEmail` (*type:* `String.t`, *default:* `nil`) - Email address of the service account.
  *   `subjectId` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the service account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountEmail => String.t() | nil,
          :subjectId => String.t() | nil
        }

  field(:accountEmail)
  field(:subjectId)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.GoogleServiceAccount do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.GoogleServiceAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.GoogleServiceAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
