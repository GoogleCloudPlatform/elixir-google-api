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

defmodule GoogleApi.DataFusion.V1.Model.Version do
  @moduledoc """
  The Data Fusion version. This proto message stores information about certain Data Fusion version, which is used for Data Fusion version upgrade.

  ## Attributes

  *   `availableFeatures` (*type:* `list(String.t)`, *default:* `nil`) - Represents a list of available feature names for a given version.
  *   `defaultVersion` (*type:* `boolean()`, *default:* `nil`) - Whether this is currently the default version for Cloud Data Fusion
  *   `versionNumber` (*type:* `String.t`, *default:* `nil`) - The version number of the Data Fusion instance, such as '6.0.1.0'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableFeatures => list(String.t()) | nil,
          :defaultVersion => boolean() | nil,
          :versionNumber => String.t() | nil
        }

  field(:availableFeatures, type: :list)
  field(:defaultVersion)
  field(:versionNumber)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1.Model.Version do
  def decode(value, options) do
    GoogleApi.DataFusion.V1.Model.Version.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1.Model.Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
