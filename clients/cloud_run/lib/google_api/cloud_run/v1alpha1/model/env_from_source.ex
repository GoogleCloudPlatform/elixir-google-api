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

defmodule GoogleApi.CloudRun.V1alpha1.Model.EnvFromSource do
  @moduledoc """
  EnvFromSource represents the source of a set of ConfigMaps

  ## Attributes

  *   `configMapRef` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ConfigMapEnvSource.t`, *default:* `nil`) - The ConfigMap to select from +optional
  *   `prefix` (*type:* `String.t`, *default:* `nil`) - An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER. +optional
  *   `secretRef` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.SecretEnvSource.t`, *default:* `nil`) - The Secret to select from +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configMapRef => GoogleApi.CloudRun.V1alpha1.Model.ConfigMapEnvSource.t() | nil,
          :prefix => String.t() | nil,
          :secretRef => GoogleApi.CloudRun.V1alpha1.Model.SecretEnvSource.t() | nil
        }

  field(:configMapRef, as: GoogleApi.CloudRun.V1alpha1.Model.ConfigMapEnvSource)
  field(:prefix)
  field(:secretRef, as: GoogleApi.CloudRun.V1alpha1.Model.SecretEnvSource)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.EnvFromSource do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.EnvFromSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.EnvFromSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
