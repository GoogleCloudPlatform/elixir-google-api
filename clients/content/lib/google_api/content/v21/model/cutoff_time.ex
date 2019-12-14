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

defmodule GoogleApi.Content.V21.Model.CutoffTime do
  @moduledoc """


  ## Attributes

  *   `hour` (*type:* `integer()`, *default:* `nil`) - Hour of the cutoff time until which an order has to be placed to be processed in the same day. Required.
  *   `minute` (*type:* `integer()`, *default:* `nil`) - Minute of the cutoff time until which an order has to be placed to be processed in the same day. Required.
  *   `timezone` (*type:* `String.t`, *default:* `nil`) - Timezone identifier for the cutoff time. A list of identifiers can be found in  the AdWords API documentation. E.g. "Europe/Zurich". Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hour => integer(),
          :minute => integer(),
          :timezone => String.t()
        }

  field(:hour)
  field(:minute)
  field(:timezone)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.CutoffTime do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.CutoffTime.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.CutoffTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
