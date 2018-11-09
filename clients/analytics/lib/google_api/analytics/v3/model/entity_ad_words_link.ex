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

defmodule GoogleApi.Analytics.V3.Model.EntityAdWordsLink do
  @moduledoc """
  JSON template for Analytics Entity AdWords Link.

  ## Attributes

  - adWordsAccounts ([AdWordsAccount]): A list of AdWords client accounts. These cannot be MCC accounts. This field is required when creating an AdWords link. It cannot be empty. Defaults to: `null`.
  - entity (EntityAdWordsLinkEntity):  Defaults to: `null`.
  - id (String.t): Entity AdWords link ID Defaults to: `null`.
  - kind (String.t): Resource type for entity AdWords link. Defaults to: `null`.
  - name (String.t): Name of the link. This field is required when creating an AdWords link. Defaults to: `null`.
  - profileIds ([String.t]): IDs of linked Views (Profiles) represented as strings. Defaults to: `null`.
  - selfLink (String.t): URL link for this Google Analytics - Google AdWords link. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adWordsAccounts => list(GoogleApi.Analytics.V3.Model.AdWordsAccount.t()),
          :entity => GoogleApi.Analytics.V3.Model.EntityAdWordsLinkEntity.t(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :profileIds => list(any()),
          :selfLink => any()
        }

  field(:adWordsAccounts, as: GoogleApi.Analytics.V3.Model.AdWordsAccount, type: :list)
  field(:entity, as: GoogleApi.Analytics.V3.Model.EntityAdWordsLinkEntity)
  field(:id)
  field(:kind)
  field(:name)
  field(:profileIds, type: :list)
  field(:selfLink)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.EntityAdWordsLink do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.EntityAdWordsLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.EntityAdWordsLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
