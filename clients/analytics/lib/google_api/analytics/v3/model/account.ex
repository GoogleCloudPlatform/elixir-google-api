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

defmodule GoogleApi.Analytics.V3.Model.Account do
  @moduledoc """
  JSON template for Analytics account entry.

  ## Attributes

  - childLink (AccountChildLink):  Defaults to: `null`.
  - created (DateTime.t): Time the account was created. Defaults to: `null`.
  - id (String.t): Account ID. Defaults to: `null`.
  - kind (String.t): Resource type for Analytics account. Defaults to: `null`.
  - name (String.t): Account name. Defaults to: `null`.
  - permissions (AccountPermissions):  Defaults to: `null`.
  - selfLink (String.t): Link for this account. Defaults to: `null`.
  - starred (boolean()): Indicates whether this account is starred or not. Defaults to: `null`.
  - updated (DateTime.t): Time the account was last modified. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childLink => GoogleApi.Analytics.V3.Model.AccountChildLink.t(),
          :created => DateTime.t(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :permissions => GoogleApi.Analytics.V3.Model.AccountPermissions.t(),
          :selfLink => any(),
          :starred => any(),
          :updated => DateTime.t()
        }

  field(:childLink, as: GoogleApi.Analytics.V3.Model.AccountChildLink)
  field(:created, as: DateTime)
  field(:id)
  field(:kind)
  field(:name)
  field(:permissions, as: GoogleApi.Analytics.V3.Model.AccountPermissions)
  field(:selfLink)
  field(:starred)
  field(:updated, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Account do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.Account.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.Account do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
