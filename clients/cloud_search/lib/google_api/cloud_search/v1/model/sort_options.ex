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

defmodule GoogleApi.CloudSearch.V1.Model.SortOptions do
  @moduledoc """


  ## Attributes

  *   `operatorName` (*type:* `String.t`, *default:* `nil`) - Name of the operator corresponding to the field to sort on. The corresponding property must be marked as sortable.
  *   `sortOrder` (*type:* `String.t`, *default:* `nil`) - Ascending is the default sort order
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operatorName => String.t(),
          :sortOrder => String.t()
        }

  field(:operatorName)
  field(:sortOrder)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.SortOptions do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.SortOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.SortOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
