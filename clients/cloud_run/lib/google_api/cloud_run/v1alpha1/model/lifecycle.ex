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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Lifecycle do
  @moduledoc """
  Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.

  ## Attributes

  *   `postStart` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.Handler.t`, *default:* `nil`) - PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks +optional
  *   `preStop` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.Handler.t`, *default:* `nil`) - PreStop is called immediately before a container is terminated. The container is terminated after the handler completes. The reason for termination is passed to the handler. Regardless of the outcome of the handler, the container is eventually terminated. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :postStart => GoogleApi.CloudRun.V1alpha1.Model.Handler.t() | nil,
          :preStop => GoogleApi.CloudRun.V1alpha1.Model.Handler.t() | nil
        }

  field(:postStart, as: GoogleApi.CloudRun.V1alpha1.Model.Handler)
  field(:preStop, as: GoogleApi.CloudRun.V1alpha1.Model.Handler)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Lifecycle do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Lifecycle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Lifecycle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
