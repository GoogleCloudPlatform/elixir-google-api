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

defmodule GoogleApi.HealthCare.V1.Model.ParserConfig do
  @moduledoc """
  The configuration for the parser. It determines how the server parses the messages.

  ## Attributes

  *   `allowNullHeader` (*type:* `boolean()`, *default:* `nil`) - Determines whether messages with no header are allowed.
  *   `segmentTerminator` (*type:* `String.t`, *default:* `nil`) - Byte(s) to use as the segment terminator. If this is unset, '\\r' is used as segment terminator.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowNullHeader => boolean(),
          :segmentTerminator => String.t()
        }

  field(:allowNullHeader)
  field(:segmentTerminator)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ParserConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ParserConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ParserConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
