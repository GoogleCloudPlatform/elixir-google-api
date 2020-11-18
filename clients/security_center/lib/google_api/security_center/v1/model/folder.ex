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

defmodule GoogleApi.SecurityCenter.V1.Model.Folder do
  @moduledoc """
  Message that contains the resource name and display name of a folder resource.

  ## Attributes

  *   `resourceFolder` (*type:* `String.t`, *default:* `nil`) - Full resource name of this folder. See: https://cloud.google.com/apis/design/resource_names#full_resource_name
  *   `resourceFolderDisplayName` (*type:* `String.t`, *default:* `nil`) - The user defined display name for this folder.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resourceFolder => String.t(),
          :resourceFolderDisplayName => String.t()
        }

  field(:resourceFolder)
  field(:resourceFolderDisplayName)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Folder do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Folder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Folder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
