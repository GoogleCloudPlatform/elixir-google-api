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

defmodule GoogleApi.DFAReporting.V28.Model.SizesListResponse do
  @moduledoc """
  Size List Response

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#sizesListResponse\&quot;. Defaults to: `null`.
  - sizes ([Size]): Size collection. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :sizes => list(GoogleApi.DFAReporting.V28.Model.Size.t())
        }

  field(:kind)
  field(:sizes, as: GoogleApi.DFAReporting.V28.Model.Size, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.SizesListResponse do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.SizesListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.SizesListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
