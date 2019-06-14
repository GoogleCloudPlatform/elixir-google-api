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

defmodule GoogleApi.Dataproc.V1.Model.JobStatus do
  @moduledoc """
  Cloud Dataproc job status.

  ## Attributes

  - details (String.t): Output only. Optional job state details, such as an error description if the state is <code>ERROR</code>. Defaults to `nil`.
  - state (String.t): Output only. A state message specifying the overall job state. Defaults to `nil`.
  - stateStartTime (DateTime.t): Output only. The time when this state was entered. Defaults to `nil`.
  - substate (String.t): Output only. Additional state information, which includes status reported by the agent. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :details => String.t(),
          :state => String.t(),
          :stateStartTime => DateTime.t(),
          :substate => String.t()
        }

  field(:details)
  field(:state)
  field(:stateStartTime, as: DateTime)
  field(:substate)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.JobStatus do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.JobStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.JobStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
