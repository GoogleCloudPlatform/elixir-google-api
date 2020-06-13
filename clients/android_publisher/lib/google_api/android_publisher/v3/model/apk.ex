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

defmodule GoogleApi.AndroidPublisher.V3.Model.Apk do
  @moduledoc """
  Information about an APK. The resource for ApksService.

  ## Attributes

  *   `binary` (*type:* `GoogleApi.AndroidPublisher.V3.Model.ApkBinary.t`, *default:* `nil`) - Information about the binary payload of this APK.
  *   `versionCode` (*type:* `integer()`, *default:* `nil`) - The version code of the APK, as specified in the manifest file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binary => GoogleApi.AndroidPublisher.V3.Model.ApkBinary.t(),
          :versionCode => integer()
        }

  field(:binary, as: GoogleApi.AndroidPublisher.V3.Model.ApkBinary)
  field(:versionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.Apk do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.Apk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.Apk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
