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

defmodule GoogleApi.CloudRun.V1alpha1.Model.InstanceSpec do
  @moduledoc """
  InstanceSpec is a description of an instance.

  ## Attributes

  *   `activeDeadlineSeconds` (*type:* `String.t`, *default:* `nil`) - Optional. Optional duration in seconds the instance may be active relative to StartTime before the system will actively try to mark it failed and kill associated containers. If set to zero, the system will never attempt to kill an instance based on time. Otherwise, value must be a positive integer. +optional
  *   `containers` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.Container.t)`, *default:* `nil`) - Optional. List of containers belonging to the instance. We disallow a number of fields on this Container. Only a single container may be provided.
  *   `restartPolicy` (*type:* `String.t`, *default:* `nil`) - Optional. Restart policy for all containers within the instance. Allowed values are: - OnFailure: Instances will always be restarted on failure if the backoffLimit has not been reached. - Never: Instances are never restarted and all failures are permanent. Cannot be used if backoffLimit is set. +optional
  *   `serviceAccountName` (*type:* `String.t`, *default:* `nil`) - Optional. Email address of the IAM service account associated with the instance of a Job. The service account represents the identity of the running instance, and determines what permissions the instance has. If not provided, the instance will use the project's default service account. +optional
  *   `terminationGracePeriodSeconds` (*type:* `String.t`, *default:* `nil`) - Optional. Optional duration in seconds the instance needs to terminate gracefully. Value must be non-negative integer. The value zero indicates delete immediately. The grace period is the duration in seconds after the processes running in the instance are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. +optional
  *   `volumes` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.Volume.t)`, *default:* `nil`) - Optional. List of volumes that can be mounted by containers belonging to the instance. More info: https://kubernetes.io/docs/concepts/storage/volumes +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeDeadlineSeconds => String.t() | nil,
          :containers => list(GoogleApi.CloudRun.V1alpha1.Model.Container.t()) | nil,
          :restartPolicy => String.t() | nil,
          :serviceAccountName => String.t() | nil,
          :terminationGracePeriodSeconds => String.t() | nil,
          :volumes => list(GoogleApi.CloudRun.V1alpha1.Model.Volume.t()) | nil
        }

  field(:activeDeadlineSeconds)
  field(:containers, as: GoogleApi.CloudRun.V1alpha1.Model.Container, type: :list)
  field(:restartPolicy)
  field(:serviceAccountName)
  field(:terminationGracePeriodSeconds)
  field(:volumes, as: GoogleApi.CloudRun.V1alpha1.Model.Volume, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.InstanceSpec do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.InstanceSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.InstanceSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
