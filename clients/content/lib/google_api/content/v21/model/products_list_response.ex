# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Content.V21.Model.ProductsListResponse do
  @moduledoc """


  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `content#productsListResponse`) - Identifies what kind of resource this is. Value: the fixed string "content#productsListResponse".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token for the retrieval of the next page of products.
  *   `resources` (*type:* `list(GoogleApi.Content.V21.Model.Product.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :nextPageToken => String.t(),
          :resources => list(GoogleApi.Content.V21.Model.Product.t())
        }

  field(:kind)
  field(:nextPageToken)
  field(:resources, as: GoogleApi.Content.V21.Model.Product, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductsListResponse do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductsListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductsListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
