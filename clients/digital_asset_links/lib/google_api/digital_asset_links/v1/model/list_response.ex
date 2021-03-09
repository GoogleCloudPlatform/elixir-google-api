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

defmodule GoogleApi.DigitalAssetLinks.V1.Model.ListResponse do
  @moduledoc """
  Response message for the List call.

  ## Attributes

  *   `debugString` (*type:* `String.t`, *default:* `nil`) - Human-readable message containing information intended to help end users understand, reproduce and debug the result. The message will be in English and we are currently not planning to offer any translations. Please note that no guarantees are made about the contents or format of this string. Any aspect of it may be subject to change without notice. You should not attempt to programmatically parse this data. For programmatic access, use the error_code field below.
  *   `errorCode` (*type:* `list(String.t)`, *default:* `nil`) - Error codes that describe the result of the List operation.
  *   `maxAge` (*type:* `String.t`, *default:* `nil`) - From serving time, how much longer the response should be considered valid barring further updates. REQUIRED
  *   `statements` (*type:* `list(GoogleApi.DigitalAssetLinks.V1.Model.Statement.t)`, *default:* `nil`) - A list of all the matching statements that have been found.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugString => String.t() | nil,
          :errorCode => list(String.t()) | nil,
          :maxAge => String.t() | nil,
          :statements => list(GoogleApi.DigitalAssetLinks.V1.Model.Statement.t()) | nil
        }

  field(:debugString)
  field(:errorCode, type: :list)
  field(:maxAge)
  field(:statements, as: GoogleApi.DigitalAssetLinks.V1.Model.Statement, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DigitalAssetLinks.V1.Model.ListResponse do
  def decode(value, options) do
    GoogleApi.DigitalAssetLinks.V1.Model.ListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DigitalAssetLinks.V1.Model.ListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
