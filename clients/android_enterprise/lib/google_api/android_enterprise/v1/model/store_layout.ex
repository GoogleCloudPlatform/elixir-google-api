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

defmodule GoogleApi.AndroidEnterprise.V1.Model.StoreLayout do
  @moduledoc """
  General setting for the managed Google Play store layout,
  currently only specifying the page to display the first time
  the store is opened.

  ## Attributes

  *   `homepageId` (*type:* `String.t`, *default:* `nil`) - The ID of the store page to be used as the homepage. The homepage is the
      first page shown in the managed Google Play Store.

      Not specifying a homepage is equivalent to setting the store layout
      type to "basic".
  *   `storeLayoutType` (*type:* `String.t`, *default:* `nil`) - The store layout type. By default, this value is set to "basic"
      if the homepageId field is not set, and to "custom" otherwise.
      If set to "basic", the layout will consist of all approved apps that
      have been whitelisted for the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :homepageId => String.t(),
          :storeLayoutType => String.t()
        }

  field(:homepageId)
  field(:storeLayoutType)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.StoreLayout do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.StoreLayout.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.StoreLayout do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
