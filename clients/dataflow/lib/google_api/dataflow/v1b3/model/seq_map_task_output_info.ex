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

defmodule GoogleApi.Dataflow.V1b3.Model.SeqMapTaskOutputInfo do
  @moduledoc """
  Information about an output of a SeqMapTask.

  ## Attributes

  *   `sink` (*type:* `GoogleApi.Dataflow.V1b3.Model.Sink.t`, *default:* `nil`) - The sink to write the output value to.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - The id of the TupleTag the user code will tag the output value by.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sink => GoogleApi.Dataflow.V1b3.Model.Sink.t(),
          :tag => String.t()
        }

  field(:sink, as: GoogleApi.Dataflow.V1b3.Model.Sink)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SeqMapTaskOutputInfo do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SeqMapTaskOutputInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SeqMapTaskOutputInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
