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

defmodule GoogleApi.TestClient.V1.Model.GenericContainer do
  @moduledoc """
  A data structure to test different any types

  ## Attributes

  - any (String.t): A generic field type Defaults to: `null`.
  - attributes (%{optional(String.t) &#x3D;&gt; String.t}): This field can contain anything Defaults to: `null`.
  - listOfAny ([String.t]): Contains a list of anything Defaults to: `null`.
  - mapOfRefs (%{optional(String.t) &#x3D;&gt; Container}): A map of references to objects Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :any => any(),
          :attributes => map(),
          :listOfAny => list(any()),
          :mapOfRefs => map()
        }

  field(:any)
  field(:attributes, type: :map)
  field(:listOfAny, type: :list)
  field(:mapOfRefs, as: GoogleApi.TestClient.V1.Model.Container, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.TestClient.V1.Model.GenericContainer do
  def decode(value, options) do
    GoogleApi.TestClient.V1.Model.GenericContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TestClient.V1.Model.GenericContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
