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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EntityTypeEntity do
  @moduledoc """
  An **entity entry** for an associated entity type.

  ## Attributes

  - synonyms ([String.t]): Required. A collection of value synonyms. For example, if the entity type is *vegetable*, and &#x60;value&#x60; is *scallions*, a synonym could be *green onions*.  For &#x60;KIND_LIST&#x60; entity types:  *   This collection must contain exactly one synonym equal to &#x60;value&#x60;. Defaults to: `null`.
  - value (String.t): Required. The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*.  For &#x60;KIND_MAP&#x60; entity types:  *   A canonical value to be used in place of synonyms.  For &#x60;KIND_LIST&#x60; entity types:  *   A string that can contain references to other entity types (with or     without aliases). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :synonyms => list(any()),
          :value => any()
        }

  field(:synonyms, type: :list)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EntityTypeEntity do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EntityTypeEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EntityTypeEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
