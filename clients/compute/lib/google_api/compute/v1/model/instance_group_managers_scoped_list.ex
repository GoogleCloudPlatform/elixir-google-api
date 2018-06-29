# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagersScopedList do
  @moduledoc """


  ## Attributes

  - instanceGroupManagers ([InstanceGroupManager]): [Output Only] The list of managed instance groups that are contained in the specified project and zone. Defaults to: `null`.
  - warning (InstanceGroupManagersScopedListWarning):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceGroupManagers => list(GoogleApi.Compute.V1.Model.InstanceGroupManager.t()),
          :warning => GoogleApi.Compute.V1.Model.InstanceGroupManagersScopedListWarning.t()
        }

  field(:instanceGroupManagers, as: GoogleApi.Compute.V1.Model.InstanceGroupManager, type: :list)
  field(:warning, as: GoogleApi.Compute.V1.Model.InstanceGroupManagersScopedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagersScopedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagersScopedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagersScopedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
