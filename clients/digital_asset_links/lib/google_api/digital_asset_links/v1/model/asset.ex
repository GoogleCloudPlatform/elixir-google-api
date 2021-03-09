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

defmodule GoogleApi.DigitalAssetLinks.V1.Model.Asset do
  @moduledoc """
  Uniquely identifies an asset. A digital asset is an identifiable and addressable online entity that typically provides some service or content. Examples of assets are websites, Android apps, Twitter feeds, and Plus Pages.

  ## Attributes

  *   `androidApp` (*type:* `GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset.t`, *default:* `nil`) - Set if this is an Android App asset.
  *   `web` (*type:* `GoogleApi.DigitalAssetLinks.V1.Model.WebAsset.t`, *default:* `nil`) - Set if this is a web asset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidApp => GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset.t() | nil,
          :web => GoogleApi.DigitalAssetLinks.V1.Model.WebAsset.t() | nil
        }

  field(:androidApp, as: GoogleApi.DigitalAssetLinks.V1.Model.AndroidAppAsset)
  field(:web, as: GoogleApi.DigitalAssetLinks.V1.Model.WebAsset)
end

defimpl Poison.Decoder, for: GoogleApi.DigitalAssetLinks.V1.Model.Asset do
  def decode(value, options) do
    GoogleApi.DigitalAssetLinks.V1.Model.Asset.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DigitalAssetLinks.V1.Model.Asset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
