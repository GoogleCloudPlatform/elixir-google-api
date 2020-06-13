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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Alias do
  @moduledoc """
  A reference to a certificate or key, certificate pair.

  ## Attributes

  *   `alias` (*type:* `String.t`, *default:* `nil`) - The resource ID for this alias. Values must match regular expression
      `[^/]{1,255}`.
  *   `certsInfo` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Certificate.t`, *default:* `nil`) - The chain of certificates under this alias.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of alias.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alias => String.t(),
          :certsInfo => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Certificate.t(),
          :type => String.t()
        }

  field(:alias)
  field(:certsInfo, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Certificate)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Alias do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Alias.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Alias do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
