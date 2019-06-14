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

defmodule GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkOpticalPower do
  @moduledoc """


  ## Attributes

  - state (String.t): The status of the current value when compared to the warning and alarm levels for the receiving or transmitting transceiver. Possible states include:  
  - OK: The value has not crossed a warning threshold. 
  - LOW_WARNING: The value has crossed below the low warning threshold. 
  - HIGH_WARNING: The value has crossed above the high warning threshold. 
  - LOW_ALARM: The value has crossed below the low alarm threshold. 
  - HIGH_ALARM: The value has crossed above the high alarm threshold. Defaults to `nil`.
  - value (number()): Value of the current receiving or transmitting optical power, read in dBm. Take a known good optical value, give it a 10% margin and trigger warnings relative to that value. In general, a -7dBm warning and a -11dBm alarm are good optical value estimates for most links. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :state => String.t(),
          :value => number()
        }

  field(:state)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkOpticalPower do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkOpticalPower.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectDiagnosticsLinkOpticalPower do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
