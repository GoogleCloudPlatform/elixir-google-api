# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.ProjectListProjects do
  @moduledoc """


  ## Attributes

  *   `friendlyName` (*type:* `String.t`, *default:* `nil`) - A descriptive name for this project.
  *   `id` (*type:* `String.t`, *default:* `nil`) - An opaque ID of this project.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#project`) - The resource type.
  *   `numericId` (*type:* `String.t`, *default:* `nil`) - The numeric ID of this project.
  *   `projectReference` (*type:* `GoogleApi.BigQuery.V2.Model.ProjectReference.t`, *default:* `nil`) - A unique reference to this project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :friendlyName => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :numericId => String.t(),
          :projectReference => GoogleApi.BigQuery.V2.Model.ProjectReference.t()
        }

  field(:friendlyName)
  field(:id)
  field(:kind)
  field(:numericId)
  field(:projectReference, as: GoogleApi.BigQuery.V2.Model.ProjectReference)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ProjectListProjects do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ProjectListProjects.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ProjectListProjects do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
