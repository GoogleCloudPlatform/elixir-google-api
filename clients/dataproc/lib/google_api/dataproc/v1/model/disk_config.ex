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

defmodule GoogleApi.Dataproc.V1.Model.DiskConfig do
  @moduledoc """
  Specifies the config of disk options for a group of VM instances.

  ## Attributes

  - bootDiskSizeGb (integer()): Optional. Size in GB of the boot disk (default is 500GB). Defaults to `nil`.
  - bootDiskType (String.t): Optional. Type of the boot disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive). Defaults to `nil`.
  - numLocalSsds (integer()): Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and HDFS (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bootDiskSizeGb => integer(),
          :bootDiskType => String.t(),
          :numLocalSsds => integer()
        }

  field(:bootDiskSizeGb)
  field(:bootDiskType)
  field(:numLocalSsds)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.DiskConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.DiskConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.DiskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
