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

defmodule GoogleApi.ServiceUser.V1.Model.SystemParameter do
  @moduledoc """
  Define a parameter&#39;s name and location. The parameter may be passed as either an HTTP header or a URL query parameter, and if both are passed the behavior is implementation-dependent.

  ## Attributes

  - httpHeader (String.t): Define the HTTP header name to use for the parameter. It is case insensitive. Defaults to: `null`.
  - name (String.t): Define the name of the parameter, such as \&quot;api_key\&quot; . It is case sensitive. Defaults to: `null`.
  - urlQueryParameter (String.t): Define the URL query parameter name to use for the parameter. It is case sensitive. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpHeader => any(),
          :name => any(),
          :urlQueryParameter => any()
        }

  field(:httpHeader)
  field(:name)
  field(:urlQueryParameter)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.SystemParameter do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.SystemParameter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.SystemParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
