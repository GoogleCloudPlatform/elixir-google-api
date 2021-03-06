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

defmodule GoogleApi.AndroidManagement.V1.Model.ApplicationPermission do
  @moduledoc """
  A permission required by the app.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A longer description of the permission, providing more detail on what it affects. Localized.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the permission. Localized.
  *   `permissionId` (*type:* `String.t`, *default:* `nil`) - An opaque string uniquely identifying the permission. Not localized.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :name => String.t() | nil,
          :permissionId => String.t() | nil
        }

  field(:description)
  field(:name)
  field(:permissionId)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPermission do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ApplicationPermission.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPermission do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
