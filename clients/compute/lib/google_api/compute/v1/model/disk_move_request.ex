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

defmodule GoogleApi.Compute.V1.Model.DiskMoveRequest do
  @moduledoc """


  ## Attributes

  - destinationZone (String.t): The URL of the destination zone to move the disk. This can be a full or partial URL. For example, the following are all valid URLs to a zone:   - https://www.googleapis.com/compute/v1/projects/project/zones/zone  - projects/project/zones/zone  - zones/zone Defaults to: `null`.
  - targetDisk (String.t): The URL of the target disk to move. This can be a full or partial URL. For example, the following are all valid URLs to a disk:   - https://www.googleapis.com/compute/v1/projects/project/zones/zone/disks/disk  - projects/project/zones/zone/disks/disk  - zones/zone/disks/disk Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationZone => any(),
          :targetDisk => any()
        }

  field(:destinationZone)
  field(:targetDisk)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.DiskMoveRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.DiskMoveRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.DiskMoveRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
