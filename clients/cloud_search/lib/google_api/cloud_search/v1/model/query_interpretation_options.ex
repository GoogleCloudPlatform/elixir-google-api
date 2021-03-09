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

defmodule GoogleApi.CloudSearch.V1.Model.QueryInterpretationOptions do
  @moduledoc """
  Options to interpret user query.

  ## Attributes

  *   `disableNlInterpretation` (*type:* `boolean()`, *default:* `nil`) - Flag to disable natural language (NL) interpretation of queries. Default is false, Set to true to disable natural language interpretation. NL interpretation only applies to predefined datasources.
  *   `enableVerbatimMode` (*type:* `boolean()`, *default:* `nil`) - Enable this flag to turn off all internal optimizations like natural language (NL) interpretation of queries, supplemental result retrieval, and usage of synonyms including custom ones. Nl interpretation will be disabled if either one of the two flags is true.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableNlInterpretation => boolean() | nil,
          :enableVerbatimMode => boolean() | nil
        }

  field(:disableNlInterpretation)
  field(:enableVerbatimMode)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.QueryInterpretationOptions do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.QueryInterpretationOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.QueryInterpretationOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
