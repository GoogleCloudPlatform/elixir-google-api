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

defmodule GoogleApi.ReplicaPool.V1beta1.Model.NewDiskInitializeParams do
  @moduledoc """
  Initialization parameters for creating a new disk.

  ## Attributes

  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - The size of the created disk in gigabytes.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Name of the disk type resource describing which disk type to use to create the disk. For example 'pd-ssd' or 'pd-standard'. Default is 'pd-standard'
  *   `sourceImage` (*type:* `String.t`, *default:* `nil`) - The name or fully-qualified URL of a source image to use to create this disk. If you provide a name of the source image, Replica Pool will look for an image with that name in your project. If you are specifying an image provided by Compute Engine, you will need to provide the full URL with the correct project, such as:
      http://www.googleapis.com/compute/v1/projects/debian-cloud/ global/images/debian-wheezy-7-vYYYYMMDD
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diskSizeGb => String.t(),
          :diskType => String.t(),
          :sourceImage => String.t()
        }

  field(:diskSizeGb)
  field(:diskType)
  field(:sourceImage)
end

defimpl Poison.Decoder, for: GoogleApi.ReplicaPool.V1beta1.Model.NewDiskInitializeParams do
  def decode(value, options) do
    GoogleApi.ReplicaPool.V1beta1.Model.NewDiskInitializeParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ReplicaPool.V1beta1.Model.NewDiskInitializeParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
