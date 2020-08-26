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

defmodule GoogleApi.HealthCare.V1beta1.Model.Hl7SchemaConfig do
  @moduledoc """
  Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.

  ## Attributes

  *   `messageSchemaConfigs` (*type:* `%{optional(String.t) => GoogleApi.HealthCare.V1beta1.Model.SchemaGroup.t}`, *default:* `nil`) - Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  *   `version` (*type:* `list(GoogleApi.HealthCare.V1beta1.Model.VersionSource.t)`, *default:* `nil`) - Each VersionSource is tested and only if they all match is the schema used for the message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :messageSchemaConfigs => %{
            optional(String.t()) => GoogleApi.HealthCare.V1beta1.Model.SchemaGroup.t()
          },
          :version => list(GoogleApi.HealthCare.V1beta1.Model.VersionSource.t())
        }

  field(:messageSchemaConfigs, as: GoogleApi.HealthCare.V1beta1.Model.SchemaGroup, type: :map)
  field(:version, as: GoogleApi.HealthCare.V1beta1.Model.VersionSource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.Hl7SchemaConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.Hl7SchemaConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.Hl7SchemaConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
