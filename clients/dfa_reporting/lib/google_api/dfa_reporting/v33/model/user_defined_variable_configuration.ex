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

defmodule GoogleApi.DFAReporting.V33.Model.UserDefinedVariableConfiguration do
  @moduledoc """
  User Defined Variable configuration.

  ## Attributes

  *   `dataType` (*type:* `String.t`, *default:* `nil`) - Data type for the variable. This is a required field.
  *   `reportName` (*type:* `String.t`, *default:* `nil`) - User-friendly name for the variable which will appear in reports. This is a required field, must be less than 64 characters long, and cannot contain the following characters: ""<>".
  *   `variableType` (*type:* `String.t`, *default:* `nil`) - Variable name in the tag. This is a required field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataType => String.t(),
          :reportName => String.t(),
          :variableType => String.t()
        }

  field(:dataType)
  field(:reportName)
  field(:variableType)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.UserDefinedVariableConfiguration do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.UserDefinedVariableConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.UserDefinedVariableConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
