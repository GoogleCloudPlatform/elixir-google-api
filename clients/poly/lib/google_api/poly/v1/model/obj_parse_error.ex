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

defmodule GoogleApi.Poly.V1.Model.ObjParseError do
  @moduledoc """
  Details of an error resulting from parsing an OBJ file

  ## Attributes

  - code (String.t): The type of problem found (required). Defaults to `nil`.
  - endIndex (integer()): The ending character index at which the problem was found. Defaults to `nil`.
  - filePath (String.t): The file path in which the problem was found. Defaults to `nil`.
  - line (String.t): The text of the line. Note that this may be truncated if the line was very
  long. This may not include the error if it occurs after line truncation. Defaults to `nil`.
  - lineNumber (integer()): Line number at which the problem was found. Defaults to `nil`.
  - startIndex (integer()): The starting character index at which the problem was found. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :endIndex => integer(),
          :filePath => String.t(),
          :line => String.t(),
          :lineNumber => integer(),
          :startIndex => integer()
        }

  field(:code)
  field(:endIndex)
  field(:filePath)
  field(:line)
  field(:lineNumber)
  field(:startIndex)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.ObjParseError do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.ObjParseError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.ObjParseError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
