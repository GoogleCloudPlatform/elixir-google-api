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

defmodule GoogleApi.HealthCare.V1.Model.Hl7TypesConfig do
  @moduledoc """
  Root config for HL7v2 datatype definitions for a specific HL7v2 version.

  ## Attributes

  *   `type` (*type:* `list(GoogleApi.HealthCare.V1.Model.Type.t)`, *default:* `nil`) - The HL7v2 type definitions.
  *   `version` (*type:* `list(GoogleApi.HealthCare.V1.Model.VersionSource.t)`, *default:* `nil`) - The version selectors that this config applies to. A message must match ALL version sources to apply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :type => list(GoogleApi.HealthCare.V1.Model.Type.t()) | nil,
          :version => list(GoogleApi.HealthCare.V1.Model.VersionSource.t()) | nil
        }

  field(:type, as: GoogleApi.HealthCare.V1.Model.Type, type: :list)
  field(:version, as: GoogleApi.HealthCare.V1.Model.VersionSource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.Hl7TypesConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.Hl7TypesConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.Hl7TypesConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end