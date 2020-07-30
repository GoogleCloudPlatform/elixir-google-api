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

defmodule GoogleApi.DoubleClickBidManager.V11.Model.Rule do
  @moduledoc """
  A Rule defines a name, and a boolean expression in [conjunctive normal form](http://mathworld.wolfram.com/ConjunctiveNormalForm.html){.external} that can be applied to a path event to determine if that name should be applied.

  ## Attributes

  *   `disjunctiveMatchStatements` (*type:* `list(GoogleApi.DoubleClickBidManager.V11.Model.DisjunctiveMatchStatement.t)`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - Rule name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disjunctiveMatchStatements =>
            list(GoogleApi.DoubleClickBidManager.V11.Model.DisjunctiveMatchStatement.t()),
          :name => String.t()
        }

  field(:disjunctiveMatchStatements,
    as: GoogleApi.DoubleClickBidManager.V11.Model.DisjunctiveMatchStatement,
    type: :list
  )

  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V11.Model.Rule do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V11.Model.Rule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V11.Model.Rule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
