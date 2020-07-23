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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ResourceRequirements do
  @moduledoc """
  ResourceRequirements describes the compute resource requirements.

  ## Attributes

  *   `limits` (*type:* `map()`, *default:* `nil`) - Limits describes the maximum amount of compute resources allowed. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  *   `limitsInMap` (*type:* `%{optional(String.t) => GoogleApi.CloudRun.V1alpha1.Model.Quantity.t}`, *default:* `nil`) - Limits describes the maximum amount of compute resources allowed. This is a temporary field created to migrate away from the map limits field. This is done to become compliant with k8s style API. This field is deprecated in favor of limits field.
  *   `requests` (*type:* `map()`, *default:* `nil`) - Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. The values of the map is string form of the 'quantity' k8s type: https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go
  *   `requestsInMap` (*type:* `%{optional(String.t) => GoogleApi.CloudRun.V1alpha1.Model.Quantity.t}`, *default:* `nil`) - Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. This is a temporary field created to migrate away from the map requests field. This is done to become compliant with k8s style API. This field is deprecated in favor of requests field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :limits => map(),
          :limitsInMap => %{
            optional(String.t()) => GoogleApi.CloudRun.V1alpha1.Model.Quantity.t()
          },
          :requests => map(),
          :requestsInMap => %{
            optional(String.t()) => GoogleApi.CloudRun.V1alpha1.Model.Quantity.t()
          }
        }

  field(:limits, type: :map)
  field(:limitsInMap, as: GoogleApi.CloudRun.V1alpha1.Model.Quantity, type: :map)
  field(:requests, type: :map)
  field(:requestsInMap, as: GoogleApi.CloudRun.V1alpha1.Model.Quantity, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ResourceRequirements do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ResourceRequirements.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ResourceRequirements do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
