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

defmodule GoogleApi.AndroidManagement.V1.Model.ManagedProperty do
  @moduledoc """
  Managed property.

  ## Attributes

  - defaultValue (any()): The default value of the property. BUNDLE_ARRAY properties don't have a default value. Defaults to `nil`.
  - description (String.t): A longer description of the property, providing more detail of what it affects. Localized. Defaults to `nil`.
  - entries (list(GoogleApi.AndroidManagement.V1.Model.ManagedPropertyEntry.t)): For CHOICE or MULTISELECT properties, the list of possible entries. Defaults to `nil`.
  - key (String.t): The unique key that the app uses to identify the property, e.g. "com.google.android.gm.fieldname". Defaults to `nil`.
  - nestedProperties (list(GoogleApi.AndroidManagement.V1.Model.ManagedProperty.t)): For BUNDLE_ARRAY properties, the list of nested properties. A BUNDLE_ARRAY property is at most two levels deep. Defaults to `nil`.
  - title (String.t): The name of the property. Localized. Defaults to `nil`.
  - type (String.t): The type of the property. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultValue => any(),
          :description => String.t(),
          :entries => list(GoogleApi.AndroidManagement.V1.Model.ManagedPropertyEntry.t()),
          :key => String.t(),
          :nestedProperties => list(GoogleApi.AndroidManagement.V1.Model.ManagedProperty.t()),
          :title => String.t(),
          :type => String.t()
        }

  field(:defaultValue)
  field(:description)
  field(:entries, as: GoogleApi.AndroidManagement.V1.Model.ManagedPropertyEntry, type: :list)
  field(:key)
  field(:nestedProperties, as: GoogleApi.AndroidManagement.V1.Model.ManagedProperty, type: :list)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ManagedProperty do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ManagedProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ManagedProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
