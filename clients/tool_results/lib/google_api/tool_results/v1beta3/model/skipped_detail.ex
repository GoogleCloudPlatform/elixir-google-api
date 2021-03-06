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

defmodule GoogleApi.ToolResults.V1beta3.Model.SkippedDetail do
  @moduledoc """
  Details for an outcome with a SKIPPED outcome summary.

  ## Attributes

  *   `incompatibleAppVersion` (*type:* `boolean()`, *default:* `nil`) - If the App doesn't support the specific API level.
  *   `incompatibleArchitecture` (*type:* `boolean()`, *default:* `nil`) - If the App doesn't run on the specific architecture, for example, x86.
  *   `incompatibleDevice` (*type:* `boolean()`, *default:* `nil`) - If the requested OS version doesn't run on the specific device model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :incompatibleAppVersion => boolean() | nil,
          :incompatibleArchitecture => boolean() | nil,
          :incompatibleDevice => boolean() | nil
        }

  field(:incompatibleAppVersion)
  field(:incompatibleArchitecture)
  field(:incompatibleDevice)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.SkippedDetail do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.SkippedDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.SkippedDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
