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

defmodule GoogleApi.CloudSearch.V1.Model.ItemStatus do
  @moduledoc """
  This contains item's status and any errors.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - Status code.
  *   `processingErrors` (*type:* `list(GoogleApi.CloudSearch.V1.Model.ProcessingError.t)`, *default:* `nil`) - Error details in case the item is in ERROR state.
  *   `repositoryErrors` (*type:* `list(GoogleApi.CloudSearch.V1.Model.RepositoryError.t)`, *default:* `nil`) - Repository error reported by connector.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :processingErrors => list(GoogleApi.CloudSearch.V1.Model.ProcessingError.t()),
          :repositoryErrors => list(GoogleApi.CloudSearch.V1.Model.RepositoryError.t())
        }

  field(:code)
  field(:processingErrors, as: GoogleApi.CloudSearch.V1.Model.ProcessingError, type: :list)
  field(:repositoryErrors, as: GoogleApi.CloudSearch.V1.Model.RepositoryError, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ItemStatus do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ItemStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ItemStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
