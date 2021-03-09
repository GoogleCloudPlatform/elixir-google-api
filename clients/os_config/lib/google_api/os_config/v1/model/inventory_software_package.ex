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

defmodule GoogleApi.OSConfig.V1.Model.InventorySoftwarePackage do
  @moduledoc """
  Software package information of the operating system.

  ## Attributes

  *   `aptPackage` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t`, *default:* `nil`) - Details of an APT package. For details about the apt package manager, see https://wiki.debian.org/Apt.
  *   `cosPackage` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t`, *default:* `nil`) - Details of a COS package.
  *   `googetPackage` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t`, *default:* `nil`) - Details of a Googet package. For details about the googet package manager, see https://github.com/google/googet.
  *   `qfePackage` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryWindowsQuickFixEngineeringPackage.t`, *default:* `nil`) - Details of a Windows Quick Fix engineering package. See https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering for info in Windows Quick Fix Engineering.
  *   `wuaPackage` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryWindowsUpdatePackage.t`, *default:* `nil`) - Details of a Windows Update package. See https://docs.microsoft.com/en-us/windows/win32/api/_wua/ for information about Windows Update.
  *   `yumPackage` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t`, *default:* `nil`) - Yum package info. For details about the yum package manager, see https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/ch-yum.
  *   `zypperPackage` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t`, *default:* `nil`) - Details of a Zypper package. For details about the Zypper package manager, see https://en.opensuse.org/SDB:Zypper_manual.
  *   `zypperPatch` (*type:* `GoogleApi.OSConfig.V1.Model.InventoryZypperPatch.t`, *default:* `nil`) - Details of a Zypper patch. For details about the Zypper package manager, see https://en.opensuse.org/SDB:Zypper_manual.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aptPackage => GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t() | nil,
          :cosPackage => GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t() | nil,
          :googetPackage => GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t() | nil,
          :qfePackage =>
            GoogleApi.OSConfig.V1.Model.InventoryWindowsQuickFixEngineeringPackage.t() | nil,
          :wuaPackage => GoogleApi.OSConfig.V1.Model.InventoryWindowsUpdatePackage.t() | nil,
          :yumPackage => GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t() | nil,
          :zypperPackage => GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage.t() | nil,
          :zypperPatch => GoogleApi.OSConfig.V1.Model.InventoryZypperPatch.t() | nil
        }

  field(:aptPackage, as: GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage)
  field(:cosPackage, as: GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage)
  field(:googetPackage, as: GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage)
  field(:qfePackage, as: GoogleApi.OSConfig.V1.Model.InventoryWindowsQuickFixEngineeringPackage)
  field(:wuaPackage, as: GoogleApi.OSConfig.V1.Model.InventoryWindowsUpdatePackage)
  field(:yumPackage, as: GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage)
  field(:zypperPackage, as: GoogleApi.OSConfig.V1.Model.InventoryVersionedPackage)
  field(:zypperPatch, as: GoogleApi.OSConfig.V1.Model.InventoryZypperPatch)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.InventorySoftwarePackage do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.InventorySoftwarePackage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.InventorySoftwarePackage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
