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

defmodule GoogleApi.Gmail.V1.Model.ListFiltersResponse do
  @moduledoc """
  Response for the ListFilters method.

  ## Attributes

  *   `filter` (*type:* `list(GoogleApi.Gmail.V1.Model.Filter.t)`, *default:* `nil`) - List of a user's filters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => list(GoogleApi.Gmail.V1.Model.Filter.t()) | nil
        }

  field(:filter, as: GoogleApi.Gmail.V1.Model.Filter, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.ListFiltersResponse do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.ListFiltersResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.ListFiltersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
