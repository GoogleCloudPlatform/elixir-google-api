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

defmodule GoogleApi.DFAReporting.V34.Model.PlatformTypesListResponse do
  @moduledoc """
  Platform Type List Response

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dfareporting#platformTypesListResponse`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#platformTypesListResponse".
  *   `platformTypes` (*type:* `list(GoogleApi.DFAReporting.V34.Model.PlatformType.t)`, *default:* `nil`) - Platform type collection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :platformTypes => list(GoogleApi.DFAReporting.V34.Model.PlatformType.t())
        }

  field(:kind)
  field(:platformTypes, as: GoogleApi.DFAReporting.V34.Model.PlatformType, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.PlatformTypesListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.PlatformTypesListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.PlatformTypesListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
