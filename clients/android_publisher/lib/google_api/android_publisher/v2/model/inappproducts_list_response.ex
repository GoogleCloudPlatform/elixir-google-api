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

defmodule GoogleApi.AndroidPublisher.V2.Model.InappproductsListResponse do
  @moduledoc """


  ## Attributes

  - inappproduct (list(GoogleApi.AndroidPublisher.V2.Model.InAppProduct.t)):  Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "androidpublisher#inappproductsListResponse". Defaults to `androidpublisher#inappproductsListResponse`.
  - pageInfo (GoogleApi.AndroidPublisher.V2.Model.PageInfo.t):  Defaults to `nil`.
  - tokenPagination (GoogleApi.AndroidPublisher.V2.Model.TokenPagination.t):  Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inappproduct => list(GoogleApi.AndroidPublisher.V2.Model.InAppProduct.t()),
          :kind => String.t(),
          :pageInfo => GoogleApi.AndroidPublisher.V2.Model.PageInfo.t(),
          :tokenPagination => GoogleApi.AndroidPublisher.V2.Model.TokenPagination.t()
        }

  field(:inappproduct, as: GoogleApi.AndroidPublisher.V2.Model.InAppProduct, type: :list)
  field(:kind)
  field(:pageInfo, as: GoogleApi.AndroidPublisher.V2.Model.PageInfo)
  field(:tokenPagination, as: GoogleApi.AndroidPublisher.V2.Model.TokenPagination)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.InappproductsListResponse do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.InappproductsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.InappproductsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
