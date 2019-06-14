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

defmodule GoogleApi.Compute.V1.Model.InstanceProperties do
  @moduledoc """


  ## Attributes

  - canIpForward (boolean()): Enables instances created based on this template to send packets with source IP addresses other than their own and receive packets with destination IP addresses other than their own. If these instances will be used as an IP gateway or it will be set as the next-hop in a Route resource, specify true. If unsure, leave this set to false. See the Enable IP forwarding documentation for more information. Defaults to `nil`.
  - description (String.t): An optional text description for the instances that are created from this instance template. Defaults to `nil`.
  - disks (list(GoogleApi.Compute.V1.Model.AttachedDisk.t)): An array of disks that are associated with the instances that are created from this template. Defaults to `nil`.
  - guestAccelerators (list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t)): A list of guest accelerator cards' type and count to use for instances created from the instance template. Defaults to `nil`.
  - labels (map()): Labels to apply to instances that are created from this template. Defaults to `nil`.
  - machineType (String.t): The machine type to use for instances that are created from this template. Defaults to `nil`.
  - metadata (GoogleApi.Compute.V1.Model.Metadata.t): The metadata key/value pairs to assign to instances that are created from this template. These pairs can consist of custom metadata or predefined keys. See Project and instance metadata for more information. Defaults to `nil`.
  - minCpuPlatform (String.t): Minimum cpu/platform to be used by this instance. The instance may be scheduled on the specified or newer cpu/platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a Minimum CPU Platform. Defaults to `nil`.
  - networkInterfaces (list(GoogleApi.Compute.V1.Model.NetworkInterface.t)): An array of network access configurations for this interface. Defaults to `nil`.
  - scheduling (GoogleApi.Compute.V1.Model.Scheduling.t): Specifies the scheduling options for the instances that are created from this template. Defaults to `nil`.
  - serviceAccounts (list(GoogleApi.Compute.V1.Model.ServiceAccount.t)): A list of service accounts with specified scopes. Access tokens for these service accounts are available to the instances that are created from this template. Use metadata queries to obtain the access tokens for these instances. Defaults to `nil`.
  - shieldedInstanceConfig (GoogleApi.Compute.V1.Model.ShieldedInstanceConfig.t):  Defaults to `nil`.
  - tags (GoogleApi.Compute.V1.Model.Tags.t): A list of tags to apply to the instances that are created from this template. The tags identify valid sources or targets for network firewalls. The setTags method can modify this list of tags. Each tag within the list must comply with RFC1035. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canIpForward => boolean(),
          :description => String.t(),
          :disks => list(GoogleApi.Compute.V1.Model.AttachedDisk.t()),
          :guestAccelerators => list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t()),
          :labels => map(),
          :machineType => String.t(),
          :metadata => GoogleApi.Compute.V1.Model.Metadata.t(),
          :minCpuPlatform => String.t(),
          :networkInterfaces => list(GoogleApi.Compute.V1.Model.NetworkInterface.t()),
          :scheduling => GoogleApi.Compute.V1.Model.Scheduling.t(),
          :serviceAccounts => list(GoogleApi.Compute.V1.Model.ServiceAccount.t()),
          :shieldedInstanceConfig => GoogleApi.Compute.V1.Model.ShieldedInstanceConfig.t(),
          :tags => GoogleApi.Compute.V1.Model.Tags.t()
        }

  field(:canIpForward)
  field(:description)
  field(:disks, as: GoogleApi.Compute.V1.Model.AttachedDisk, type: :list)
  field(:guestAccelerators, as: GoogleApi.Compute.V1.Model.AcceleratorConfig, type: :list)
  field(:labels, type: :map)
  field(:machineType)
  field(:metadata, as: GoogleApi.Compute.V1.Model.Metadata)
  field(:minCpuPlatform)
  field(:networkInterfaces, as: GoogleApi.Compute.V1.Model.NetworkInterface, type: :list)
  field(:scheduling, as: GoogleApi.Compute.V1.Model.Scheduling)
  field(:serviceAccounts, as: GoogleApi.Compute.V1.Model.ServiceAccount, type: :list)
  field(:shieldedInstanceConfig, as: GoogleApi.Compute.V1.Model.ShieldedInstanceConfig)
  field(:tags, as: GoogleApi.Compute.V1.Model.Tags)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceProperties do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
