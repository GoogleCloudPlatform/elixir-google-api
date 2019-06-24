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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary do
  @moduledoc """
  Information reported for an outdated library.

  ## Attributes

  *   `learnMoreUrls` (*type:* `list(String.t)`, *default:* `nil`) - URLs to learn more information about the vulnerabilities in the library.
  *   `libraryName` (*type:* `String.t`, *default:* `nil`) - The name of the outdated library.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :learnMoreUrls => list(String.t()),
          :libraryName => String.t(),
          :version => String.t()
        }

  field(:learnMoreUrls, type: :list)
  field(:libraryName)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.OutdatedLibrary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
