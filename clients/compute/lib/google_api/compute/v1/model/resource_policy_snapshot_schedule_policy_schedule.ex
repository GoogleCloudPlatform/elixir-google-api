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

defmodule GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySchedule do
  @moduledoc """
  A schedule for disks where the schedueled operations are performed.

  ## Attributes

  - dailySchedule (GoogleApi.Compute.V1.Model.ResourcePolicyDailyCycle.t):  Defaults to `nil`.
  - hourlySchedule (GoogleApi.Compute.V1.Model.ResourcePolicyHourlyCycle.t):  Defaults to `nil`.
  - weeklySchedule (GoogleApi.Compute.V1.Model.ResourcePolicyWeeklyCycle.t):  Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dailySchedule => GoogleApi.Compute.V1.Model.ResourcePolicyDailyCycle.t(),
          :hourlySchedule => GoogleApi.Compute.V1.Model.ResourcePolicyHourlyCycle.t(),
          :weeklySchedule => GoogleApi.Compute.V1.Model.ResourcePolicyWeeklyCycle.t()
        }

  field(:dailySchedule, as: GoogleApi.Compute.V1.Model.ResourcePolicyDailyCycle)
  field(:hourlySchedule, as: GoogleApi.Compute.V1.Model.ResourcePolicyHourlyCycle)
  field(:weeklySchedule, as: GoogleApi.Compute.V1.Model.ResourcePolicyWeeklyCycle)
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySchedule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySchedule.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.ResourcePolicySnapshotSchedulePolicySchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
