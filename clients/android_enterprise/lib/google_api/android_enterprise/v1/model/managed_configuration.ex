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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration do
  @moduledoc """
  A managed configuration resource contains the set of managed properties that have been configured for an Android app. The app&#39;s developer would have defined configurable properties in the managed configurations schema.

  ## Attributes

  - kind (String): Identifies what kind of resource this is. Value: the fixed string \&quot;androidenterprise#managedConfiguration\&quot;. Defaults to: `null`.
  - managedProperty (List[ManagedProperty]): The set of managed properties for this configuration. Defaults to: `null`.
  - productId (String): The ID of the product that the managed configuration is for, e.g. \&quot;app:com.google.android.gm\&quot;. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"managedProperty",
    :"productId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration do
  import GoogleApi.AndroidEnterprise.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"managedProperty", :list, GoogleApi.AndroidEnterprise.V1.Model.ManagedProperty, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ManagedConfiguration do
  def encode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Deserializer.serialize_non_nil(value, options)
  end
end

