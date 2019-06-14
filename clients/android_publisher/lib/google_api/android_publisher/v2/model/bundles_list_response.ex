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

defmodule GoogleApi.AndroidPublisher.V2.Model.BundlesListResponse do
  @moduledoc """


  ## Attributes

  - bundles (list(GoogleApi.AndroidPublisher.V2.Model.Bundle.t)):  Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "androidpublisher#bundlesListResponse". Defaults to `androidpublisher#bundlesListResponse`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bundles => list(GoogleApi.AndroidPublisher.V2.Model.Bundle.t()),
          :kind => String.t()
        }

  field(:bundles, as: GoogleApi.AndroidPublisher.V2.Model.Bundle, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.BundlesListResponse do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.BundlesListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.BundlesListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
