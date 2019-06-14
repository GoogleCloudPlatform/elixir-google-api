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

defmodule GoogleApi.Compute.V1.Model.Reference do
  @moduledoc """
  Represents a reference to a resource.

  ## Attributes

  - kind (String.t): [Output Only] Type of the resource. Always compute#reference for references. Defaults to `compute#reference`.
  - referenceType (String.t): A description of the reference type with no implied semantics. Possible values include:  
  - MEMBER_OF Defaults to `nil`.
  - referrer (String.t): URL of the resource which refers to the target. Defaults to `nil`.
  - target (String.t): URL of the resource to which this reference points. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :referenceType => String.t(),
          :referrer => String.t(),
          :target => String.t()
        }

  field(:kind)
  field(:referenceType)
  field(:referrer)
  field(:target)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Reference do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Reference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Reference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
