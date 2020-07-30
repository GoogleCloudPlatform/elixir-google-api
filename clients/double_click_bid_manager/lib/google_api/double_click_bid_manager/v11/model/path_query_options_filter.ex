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

defmodule GoogleApi.DoubleClickBidManager.V11.Model.PathQueryOptionsFilter do
  @moduledoc """
  Dimension Filter for a Path Filter.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Dimension the filter is applied to.
  *   `match` (*type:* `String.t`, *default:* `nil`) - Indicates how the filter should be matched to the value.
  *   `values` (*type:* `list(String.t)`, *default:* `nil`) - Value to filter on.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t(),
          :match => String.t(),
          :values => list(String.t())
        }

  field(:filter)
  field(:match)
  field(:values, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V11.Model.PathQueryOptionsFilter do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V11.Model.PathQueryOptionsFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V11.Model.PathQueryOptionsFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
