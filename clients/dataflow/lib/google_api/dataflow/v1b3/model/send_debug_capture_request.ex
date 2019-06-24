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

defmodule GoogleApi.Dataflow.V1b3.Model.SendDebugCaptureRequest do
  @moduledoc """
  Request to send encoded debug information.

  ## Attributes

  *   `componentId` (*type:* `String.t`, *default:* `nil`) - The internal component id for which debug information is sent.
  *   `data` (*type:* `String.t`, *default:* `nil`) - The encoded debug information.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The [regional endpoint]
      (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that
      contains the job specified by job_id.
  *   `workerId` (*type:* `String.t`, *default:* `nil`) - The worker id, i.e., VM hostname.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :componentId => String.t(),
          :data => String.t(),
          :location => String.t(),
          :workerId => String.t()
        }

  field(:componentId)
  field(:data)
  field(:location)
  field(:workerId)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SendDebugCaptureRequest do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SendDebugCaptureRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SendDebugCaptureRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
