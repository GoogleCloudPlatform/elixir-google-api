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

defmodule GoogleApi.Manufacturers.V1.Model.FeatureDescription do
  @moduledoc """
  A feature description of the product. For more information, see https://support.google.com/manufacturers/answer/6124116#featuredesc.

  ## Attributes

  *   `headline` (*type:* `String.t`, *default:* `nil`) - A short description of the feature.
  *   `image` (*type:* `GoogleApi.Manufacturers.V1.Model.Image.t`, *default:* `nil`) - An optional image describing the feature.
  *   `text` (*type:* `String.t`, *default:* `nil`) - A detailed description of the feature.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :headline => String.t() | nil,
          :image => GoogleApi.Manufacturers.V1.Model.Image.t() | nil,
          :text => String.t() | nil
        }

  field(:headline)
  field(:image, as: GoogleApi.Manufacturers.V1.Model.Image)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.FeatureDescription do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.FeatureDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.FeatureDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
