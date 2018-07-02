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

defmodule GoogleApi.DigitalAssetLinks.V1.Model.Statement do
  @moduledoc """
  Describes a reliable statement that has been made about the relationship between a source asset and a target asset.  Statements are always made by the source asset, either directly or by delegating to a statement list that is stored elsewhere.  For more detailed definitions of statements and assets, please refer to our [API documentation landing page](/digital-asset-links/v1/getting-started).

  ## Attributes

  - relation (String.t): The relation identifies the use of the statement as intended by the source asset&#39;s owner (that is, the person or entity who issued the statement). Every complete statement has a relation.  We identify relations with strings of the format &#x60;&lt;kind&gt;/&lt;detail&gt;&#x60;, where &#x60;&lt;kind&gt;&#x60; must be one of a set of pre-defined purpose categories, and &#x60;&lt;detail&gt;&#x60; is a free-form lowercase alphanumeric string that describes the specific use case of the statement.  Refer to [our API documentation](/digital-asset-links/v1/relation-strings) for the current list of supported relations.  Example: &#x60;delegate_permission/common.handle_all_urls&#x60; REQUIRED Defaults to: `null`.
  - source (Asset): Every statement has a source asset. REQUIRED Defaults to: `null`.
  - target (Asset): Every statement has a target asset. REQUIRED Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :relation => any(),
          :source => GoogleApi.DigitalAssetLinks.V1.Model.Asset.t(),
          :target => GoogleApi.DigitalAssetLinks.V1.Model.Asset.t()
        }

  field(:relation)
  field(:source, as: GoogleApi.DigitalAssetLinks.V1.Model.Asset)
  field(:target, as: GoogleApi.DigitalAssetLinks.V1.Model.Asset)
end

defimpl Poison.Decoder, for: GoogleApi.DigitalAssetLinks.V1.Model.Statement do
  def decode(value, options) do
    GoogleApi.DigitalAssetLinks.V1.Model.Statement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DigitalAssetLinks.V1.Model.Statement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
