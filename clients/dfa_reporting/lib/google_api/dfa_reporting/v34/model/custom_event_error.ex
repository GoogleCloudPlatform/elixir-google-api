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

defmodule GoogleApi.DFAReporting.V34.Model.CustomEventError do
  @moduledoc """
  The error code and description for a custom event that failed to insert.

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - The error code.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#customEventError`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#customEventError".
  *   `message` (*type:* `String.t`, *default:* `nil`) - A description of the error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :kind => String.t(),
          :message => String.t()
        }

  field(:code)
  field(:kind)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.CustomEventError do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.CustomEventError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.CustomEventError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
