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

defmodule GoogleApi.Content.V2.Model.Table do
  @moduledoc """


  ## Attributes

  - columnHeaders (GoogleApi.Content.V2.Model.Headers.t): Headers of the table's columns. Optional: if not set then the table has only one dimension. Defaults to `nil`.
  - name (String.t): Name of the table. Required for subtables, ignored for the main table. Defaults to `nil`.
  - rowHeaders (GoogleApi.Content.V2.Model.Headers.t): Headers of the table's rows. Required. Defaults to `nil`.
  - rows (list(GoogleApi.Content.V2.Model.Row.t)): The list of rows that constitute the table. Must have the same length as rowHeaders. Required. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnHeaders => GoogleApi.Content.V2.Model.Headers.t(),
          :name => String.t(),
          :rowHeaders => GoogleApi.Content.V2.Model.Headers.t(),
          :rows => list(GoogleApi.Content.V2.Model.Row.t())
        }

  field(:columnHeaders, as: GoogleApi.Content.V2.Model.Headers)
  field(:name)
  field(:rowHeaders, as: GoogleApi.Content.V2.Model.Headers)
  field(:rows, as: GoogleApi.Content.V2.Model.Row, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Table do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Table.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Table do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
