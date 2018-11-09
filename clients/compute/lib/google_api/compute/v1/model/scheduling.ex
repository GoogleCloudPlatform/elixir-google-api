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

defmodule GoogleApi.Compute.V1.Model.Scheduling do
  @moduledoc """
  Sets the scheduling options for an Instance.

  ## Attributes

  - automaticRestart (boolean()): Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). You can only set the automatic restart option for standard instances. Preemptible instances cannot be automatically restarted.  By default, this is set to true so an instance is automatically restarted if it is terminated by Compute Engine. Defaults to: `null`.
  - nodeAffinities ([SchedulingNodeAffinity]): A set of node affinity and anti-affinity. Defaults to: `null`.
  - onHostMaintenance (String.t): Defines the maintenance behavior for this instance. For standard instances, the default behavior is MIGRATE. For preemptible instances, the default and only possible behavior is TERMINATE. For more information, see Setting Instance Scheduling Options. Defaults to: `null`.
    - Enum - one of [MIGRATE, TERMINATE]
  - preemptible (boolean()): Defines whether the instance is preemptible. This can only be set during instance creation, it cannot be set or changed after the instance has been created. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automaticRestart => any(),
          :nodeAffinities => list(GoogleApi.Compute.V1.Model.SchedulingNodeAffinity.t()),
          :onHostMaintenance => any(),
          :preemptible => any()
        }

  field(:automaticRestart)
  field(:nodeAffinities, as: GoogleApi.Compute.V1.Model.SchedulingNodeAffinity, type: :list)
  field(:onHostMaintenance)
  field(:preemptible)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Scheduling do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Scheduling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Scheduling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
