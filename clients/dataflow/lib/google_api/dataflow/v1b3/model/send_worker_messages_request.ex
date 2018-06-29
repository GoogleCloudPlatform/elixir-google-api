# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.SendWorkerMessagesRequest do
  @moduledoc """
  A request for sending worker messages to the service.

  ## Attributes

  - location (String.t): The location which contains the job Defaults to: `null`.
  - workerMessages ([WorkerMessage]): The WorkerMessages to send. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :location => any(),
          :workerMessages => list(GoogleApi.Dataflow.V1b3.Model.WorkerMessage.t())
        }

  field(:location)
  field(:workerMessages, as: GoogleApi.Dataflow.V1b3.Model.WorkerMessage, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SendWorkerMessagesRequest do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SendWorkerMessagesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SendWorkerMessagesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
