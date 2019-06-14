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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion do
  @moduledoc """


  ## Attributes

  - instanceTemplate (String.t): The URL of the instance template that is specified for this managed instance group. The group uses this template to create new instances in the managed instance group until the `targetSize` for this version is reached. Defaults to `nil`.
  - name (String.t): Name of the version. Unique among all versions in the scope of this managed instance group. Defaults to `nil`.
  - targetSize (GoogleApi.Compute.V1.Model.FixedOrPercent.t): Specifies the intended number of instances to be created from the instanceTemplate. The final number of instances created from the template will be equal to:  
  - If expressed as a fixed number, the minimum of either targetSize.fixed or instanceGroupManager.targetSize is used. 
  - if expressed as a percent, the targetSize would be (targetSize.percent/100 * InstanceGroupManager.targetSize) If there is a remainder, the number is rounded up.  If unset, this version will update any remaining instances not updated by another version. Read Starting a canary update for more information. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceTemplate => String.t(),
          :name => String.t(),
          :targetSize => GoogleApi.Compute.V1.Model.FixedOrPercent.t()
        }

  field(:instanceTemplate)
  field(:name)
  field(:targetSize, as: GoogleApi.Compute.V1.Model.FixedOrPercent)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagerVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
