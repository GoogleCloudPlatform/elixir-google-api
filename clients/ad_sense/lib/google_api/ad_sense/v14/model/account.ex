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

defmodule GoogleApi.AdSense.V14.Model.Account do
  @moduledoc """


  ## Attributes

  - creation_time (String.t):  Defaults to: `null`.
  - id (String.t): Unique identifier of this account. Defaults to: `null`.
  - kind (String.t): Kind of resource this is, in this case adsense#account. Defaults to: `null`.
  - name (String.t): Name of this account. Defaults to: `null`.
  - premium (boolean()): Whether this account is premium. Defaults to: `null`.
  - subAccounts ([Account]): Sub accounts of the this account. Defaults to: `null`.
  - timezone (String.t): AdSense timezone of this account. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creation_time => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :premium => any(),
          :subAccounts => list(GoogleApi.AdSense.V14.Model.Account.t()),
          :timezone => any()
        }

  field(:creation_time)
  field(:id)
  field(:kind)
  field(:name)
  field(:premium)
  field(:subAccounts, as: GoogleApi.AdSense.V14.Model.Account, type: :list)
  field(:timezone)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.Account do
  def decode(value, options) do
    GoogleApi.AdSense.V14.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
