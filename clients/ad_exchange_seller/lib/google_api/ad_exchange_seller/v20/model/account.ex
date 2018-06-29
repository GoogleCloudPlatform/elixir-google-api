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

defmodule GoogleApi.AdExchangeSeller.V20.Model.Account do
  @moduledoc """


  ## Attributes

  - id (String.t): Unique identifier of this account. Defaults to: `null`.
  - kind (String.t): Kind of resource this is, in this case adexchangeseller#account. Defaults to: `null`.
  - name (String.t): Name of this account. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :kind => any(),
          :name => any()
        }

  field(:id)
  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeSeller.V20.Model.Account do
  def decode(value, options) do
    GoogleApi.AdExchangeSeller.V20.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeSeller.V20.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
