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

defmodule GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry do
  @moduledoc """


  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - The ID of the request entry to which this entry responds.
  *   `errors` (*type:* `GoogleApi.Content.V2.Model.Errors.t`, *default:* `nil`) - A list of errors defined if, and only if, the request failed.
  *   `gmbAccounts` (*type:* `GoogleApi.Content.V2.Model.GmbAccounts.t`, *default:* `nil`) - The the list of accessible GMB accounts.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#liasettingsCustomBatchResponseEntry`"
  *   `liaSettings` (*type:* `GoogleApi.Content.V2.Model.LiaSettings.t`, *default:* `nil`) - The retrieved or updated Lia settings.
  *   `posDataProviders` (*type:* `list(GoogleApi.Content.V2.Model.PosDataProviders.t)`, *default:* `nil`) - The list of POS data providers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer(),
          :errors => GoogleApi.Content.V2.Model.Errors.t(),
          :gmbAccounts => GoogleApi.Content.V2.Model.GmbAccounts.t(),
          :kind => String.t(),
          :liaSettings => GoogleApi.Content.V2.Model.LiaSettings.t(),
          :posDataProviders => list(GoogleApi.Content.V2.Model.PosDataProviders.t())
        }

  field(:batchId)
  field(:errors, as: GoogleApi.Content.V2.Model.Errors)
  field(:gmbAccounts, as: GoogleApi.Content.V2.Model.GmbAccounts)
  field(:kind)
  field(:liaSettings, as: GoogleApi.Content.V2.Model.LiaSettings)
  field(:posDataProviders, as: GoogleApi.Content.V2.Model.PosDataProviders, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.LiasettingsCustomBatchResponseEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
