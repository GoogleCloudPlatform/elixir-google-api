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

defmodule GoogleApi.OSConfig.V1.Model.Inventory do
  @moduledoc """
  The inventory details of a VM.

  ## Attributes

  *   `items` (*type:* `%{optional(String.t) => GoogleApi.OSConfig.V1.Model.InventoryItem.t}`, *default:* `nil`) - Inventory items related to the VM keyed by an opaque unique identifier for each inventory item. The identifier is unique to each distinct and addressable inventory item and will change, when there is a new package version.
  *   `osInfo` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryOsInfo.t`, *default:* `nil`) - Base level operating system information for the VM.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items =>
            %{optional(String.t()) => GoogleApi.OSConfig.V1.Model.InventoryItem.t()} | nil,
          :osInfo => GoogleApi.OSConfig.V1.Model.InventoryOsInfo.t() | nil
        }

  field(:items, as: GoogleApi.OSConfig.V1.Model.InventoryItem, type: :map)
  field(:osInfo, as: GoogleApi.OSConfig.V1.Model.InventoryOsInfo)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.Inventory do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.Inventory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.Inventory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
