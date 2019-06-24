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

defmodule GoogleApi.FirebaseRules.V1.Model.SourcePosition do
  @moduledoc """
  Position in the `Source` content including its line, column number, and an
  index of the `File` in the `Source` message. Used for debug purposes.

  ## Attributes

  *   `column` (*type:* `integer()`, *default:* `nil`) - First column on the source line associated with the source fragment.
  *   `fileName` (*type:* `String.t`, *default:* `nil`) - Name of the `File`.
  *   `line` (*type:* `integer()`, *default:* `nil`) - Line number of the source fragment. 1-based.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :column => integer(),
          :fileName => String.t(),
          :line => integer()
        }

  field(:column)
  field(:fileName)
  field(:line)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.SourcePosition do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.SourcePosition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.SourcePosition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
