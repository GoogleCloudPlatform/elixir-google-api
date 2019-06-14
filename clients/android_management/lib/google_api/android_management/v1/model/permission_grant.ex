# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidManagement.V1.Model.PermissionGrant do
  @moduledoc """
  Configuration for an Android permission and its grant state.

  ## Attributes

  - permission (String.t): The Android permission or group, e.g. android.permission.READ_CALENDAR or android.permission_group.CALENDAR. Defaults to `nil`.
  - policy (String.t): The policy for granting the permission. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permission => String.t(),
          :policy => String.t()
        }

  field(:permission)
  field(:policy)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PermissionGrant do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.PermissionGrant.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PermissionGrant do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
