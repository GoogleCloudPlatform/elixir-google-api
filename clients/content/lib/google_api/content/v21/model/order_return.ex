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

defmodule GoogleApi.Content.V21.Model.OrderReturn do
  @moduledoc """


  ## Attributes

  *   `actor` (*type:* `String.t`, *default:* `nil`) - The actor that created the refund.
  *   `creationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the item has been created, in ISO 8601 format.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - Quantity that is returned.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - The reason for the return.
  *   `reasonText` (*type:* `String.t`, *default:* `nil`) - The explanation of the reason.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actor => String.t(),
          :creationDate => String.t(),
          :quantity => integer(),
          :reason => String.t(),
          :reasonText => String.t()
        }

  field(:actor)
  field(:creationDate)
  field(:quantity)
  field(:reason)
  field(:reasonText)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderReturn do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderReturn.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderReturn do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
