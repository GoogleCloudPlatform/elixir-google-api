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

defmodule GoogleApi.Dataproc.V1.Model.InstanceGroupConfig do
  @moduledoc """
  Optional. The config settings for Compute Engine resources in an instance group, such as a master or worker group.

  ## Attributes

  - accelerators ([AcceleratorConfig]): Optional. The Compute Engine accelerator configuration for these instances.Beta Feature: This feature is still under development. It may be changed before final release. Defaults to: `null`.
  - diskConfig (DiskConfig): Optional. Disk option config settings. Defaults to: `null`.
  - imageUri (String.t): Optional. The Compute Engine image resource used for cluster instances. It can be specified or may be inferred from SoftwareConfig.image_version. Defaults to: `null`.
  - instanceNames ([String.t]): Output only. The list of instance names. Cloud Dataproc derives the names from cluster_name, num_instances, and the instance group. Defaults to: `null`.
  - isPreemptible (boolean()): Optional. Specifies that this instance group contains preemptible instances. Defaults to: `null`.
  - machineTypeUri (String.t): Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Cloud Dataproc Auto Zone Placement feature, you must use the short name of the machine type resource, for example, n1-standard-2. Defaults to: `null`.
  - managedGroupConfig (ManagedGroupConfig): Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups. Defaults to: `null`.
  - numInstances (integer()): Optional. The number of VM instances in the instance group. For master instance groups, must be set to 1. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerators => list(GoogleApi.Dataproc.V1.Model.AcceleratorConfig.t()),
          :diskConfig => GoogleApi.Dataproc.V1.Model.DiskConfig.t(),
          :imageUri => any(),
          :instanceNames => list(any()),
          :isPreemptible => any(),
          :machineTypeUri => any(),
          :managedGroupConfig => GoogleApi.Dataproc.V1.Model.ManagedGroupConfig.t(),
          :numInstances => any()
        }

  field(:accelerators, as: GoogleApi.Dataproc.V1.Model.AcceleratorConfig, type: :list)
  field(:diskConfig, as: GoogleApi.Dataproc.V1.Model.DiskConfig)
  field(:imageUri)
  field(:instanceNames, type: :list)
  field(:isPreemptible)
  field(:machineTypeUri)
  field(:managedGroupConfig, as: GoogleApi.Dataproc.V1.Model.ManagedGroupConfig)
  field(:numInstances)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.InstanceGroupConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.InstanceGroupConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
