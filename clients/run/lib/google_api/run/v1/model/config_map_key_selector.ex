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

defmodule GoogleApi.Run.V1.Model.ConfigMapKeySelector do
  @moduledoc """
  Not supported by Cloud Run Selects a key from a ConfigMap.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - The key to select.
  *   `localObjectReference` (*type:* `GoogleApi.Run.V1.Model.LocalObjectReference.t`, *default:* `nil`) - This field should not be used directly as it is meant to be inlined directly into the message. Use the "name" field instead.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The ConfigMap to select from.
  *   `optional` (*type:* `boolean()`, *default:* `nil`) - (Optional) Specify whether the ConfigMap or its key must be defined
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :localObjectReference => GoogleApi.Run.V1.Model.LocalObjectReference.t() | nil,
          :name => String.t() | nil,
          :optional => boolean() | nil
        }

  field(:key)
  field(:localObjectReference, as: GoogleApi.Run.V1.Model.LocalObjectReference)
  field(:name)
  field(:optional)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.ConfigMapKeySelector do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.ConfigMapKeySelector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.ConfigMapKeySelector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
