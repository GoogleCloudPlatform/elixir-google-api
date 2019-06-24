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

defmodule GoogleApi.TagManager.V2.Model.VariableFormatValue do
  @moduledoc """


  ## Attributes

  *   `caseConversionType` (*type:* `String.t`, *default:* `nil`) - The option to convert a string-type variable value to either lowercase or
      uppercase.
  *   `convertFalseToValue` (*type:* `GoogleApi.TagManager.V2.Model.Parameter.t`, *default:* `nil`) - The value to convert if a variable value is false.
  *   `convertNullToValue` (*type:* `GoogleApi.TagManager.V2.Model.Parameter.t`, *default:* `nil`) - The value to convert if a variable value is null.
  *   `convertTrueToValue` (*type:* `GoogleApi.TagManager.V2.Model.Parameter.t`, *default:* `nil`) - The value to convert if a variable value is true.
  *   `convertUndefinedToValue` (*type:* `GoogleApi.TagManager.V2.Model.Parameter.t`, *default:* `nil`) - The value to convert if a variable value is undefined.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caseConversionType => String.t(),
          :convertFalseToValue => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :convertNullToValue => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :convertTrueToValue => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :convertUndefinedToValue => GoogleApi.TagManager.V2.Model.Parameter.t()
        }

  field(:caseConversionType)
  field(:convertFalseToValue, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:convertNullToValue, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:convertTrueToValue, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:convertUndefinedToValue, as: GoogleApi.TagManager.V2.Model.Parameter)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.VariableFormatValue do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.VariableFormatValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.VariableFormatValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
