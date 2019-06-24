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

defmodule GoogleApi.ServiceControl.V1.Model.CheckInfo do
  @moduledoc """
  Contains additional information about the check operation.

  ## Attributes

  *   `consumerInfo` (*type:* `GoogleApi.ServiceControl.V1.Model.ConsumerInfo.t`, *default:* `nil`) - Consumer info of this check.
  *   `unusedArguments` (*type:* `list(String.t)`, *default:* `nil`) - A list of fields and label keys that are ignored by the server.
      The client doesn't need to send them for following requests to improve
      performance and allow better aggregation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerInfo => GoogleApi.ServiceControl.V1.Model.ConsumerInfo.t(),
          :unusedArguments => list(String.t())
        }

  field(:consumerInfo, as: GoogleApi.ServiceControl.V1.Model.ConsumerInfo)
  field(:unusedArguments, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.CheckInfo do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.CheckInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.CheckInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
