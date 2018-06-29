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

defmodule GoogleApi.ServiceUser.V1.Model.CustomErrorRule do
  @moduledoc """
  A custom error rule.

  ## Attributes

  - isErrorType (boolean()): Mark this message as possible payload in error response.  Otherwise, objects of this type will be filtered when they appear in error payload. Defaults to: `null`.
  - selector (String.t): Selects messages to which this rule applies.  Refer to selector for syntax details. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isErrorType => any(),
          :selector => any()
        }

  field(:isErrorType)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.CustomErrorRule do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.CustomErrorRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.CustomErrorRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
