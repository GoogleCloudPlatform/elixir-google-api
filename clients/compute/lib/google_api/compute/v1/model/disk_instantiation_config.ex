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

defmodule GoogleApi.Compute.V1.Model.DiskInstantiationConfig do
  @moduledoc """
  A specification of the desired way to instantiate a disk in the instance template when its created from a source instance.

  ## Attributes

  *   `autoDelete` (*type:* `boolean()`, *default:* `nil`) - Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  *   `customImage` (*type:* `String.t`, *default:* `nil`) - The custom source image to be used to restore this disk when instantiating this instance template.
  *   `deviceName` (*type:* `String.t`, *default:* `nil`) - Specifies the device name of the disk to which the configurations apply to.
  *   `instantiateFrom` (*type:* `String.t`, *default:* `nil`) - Specifies whether to include the disk and what image to use. Possible values are:  
      - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. 
      - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. 
      - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. 
      - attach-read-only: to attach a read-only disk. Applicable to read-only disks. 
      - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoDelete => boolean(),
          :customImage => String.t(),
          :deviceName => String.t(),
          :instantiateFrom => String.t()
        }

  field(:autoDelete)
  field(:customImage)
  field(:deviceName)
  field(:instantiateFrom)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.DiskInstantiationConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.DiskInstantiationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.DiskInstantiationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
