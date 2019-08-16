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

defmodule GoogleApi.Language.V1.Model.DependencyEdge do
  @moduledoc """
  Represents dependency parse tree information for a token. (For more
  information on dependency labels, see
  http://www.aclweb.org/anthology/P13-2017

  ## Attributes

  *   `headTokenIndex` (*type:* `integer()`, *default:* `nil`) - Represents the head of this token in the dependency tree.
      This is the index of the token which has an arc going to this token.
      The index is the position of the token in the array of tokens returned
      by the API method. If this token is a root token, then the
      `head_token_index` is its own index.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The parse label for the token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :headTokenIndex => integer(),
          :label => String.t()
        }

  field(:headTokenIndex)
  field(:label)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.DependencyEdge do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.DependencyEdge.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.DependencyEdge do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
