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

defmodule GoogleApi.Spanner.V1.Model.CreateSessionRequest do
  @moduledoc """
  The request for CreateSession.

  ## Attributes

  *   `session` (*type:* `GoogleApi.Spanner.V1.Model.Session.t`, *default:* `nil`) - Required. The session to create.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :session => GoogleApi.Spanner.V1.Model.Session.t()
        }

  field(:session, as: GoogleApi.Spanner.V1.Model.Session)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CreateSessionRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CreateSessionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CreateSessionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
