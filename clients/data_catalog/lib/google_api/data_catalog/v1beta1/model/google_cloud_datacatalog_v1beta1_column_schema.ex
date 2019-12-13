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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema do
  @moduledoc """
  Representation of a column within a schema. Columns could be nested inside
  other columns.

  ## Attributes

  *   `column` (*type:* `String.t`, *default:* `nil`) - Required. Name of the column.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the column. Default value is an empty string.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - Optional. A column's mode indicates whether the values in this column are required,
      nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported.
      Default mode is `NULLABLE`.
  *   `subcolumns` (*type:* `list(GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema.t)`, *default:* `nil`) - Optional. Schema of sub-columns. A column can have zero or more sub-columns.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Type of the column.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :column => String.t(),
          :description => String.t(),
          :mode => String.t(),
          :subcolumns =>
            list(
              GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema.t()
            ),
          :type => String.t()
        }

  field(:column)
  field(:description)
  field(:mode)

  field(:subcolumns,
    as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema,
    type: :list
  )

  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1ColumnSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
