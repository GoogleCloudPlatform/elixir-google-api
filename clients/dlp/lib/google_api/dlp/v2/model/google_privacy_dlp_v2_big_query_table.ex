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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable do
  @moduledoc """
  Message defining the location of a BigQuery table. A table is uniquely identified by its project_id, dataset_id, and table_name. Within a query a table is often referenced with a string in the format of: `:.` or `..`.

  ## Attributes

  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - Dataset ID of the table.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Platform project ID of the project containing the table. If omitted, project ID is inferred from the API call.
  *   `tableId` (*type:* `String.t`, *default:* `nil`) - Name of the table.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetId => String.t(),
          :projectId => String.t(),
          :tableId => String.t()
        }

  field(:datasetId)
  field(:projectId)
  field(:tableId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
