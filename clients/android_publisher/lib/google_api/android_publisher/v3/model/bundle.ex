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

defmodule GoogleApi.AndroidPublisher.V3.Model.Bundle do
  @moduledoc """


  ## Attributes

  - sha1 (String.t): A sha1 hash of the upload payload, encoded as a hex string and matching the output of the sha1sum command. Defaults to `nil`.
  - sha256 (String.t): A sha256 hash of the upload payload, encoded as a hex string and matching the output of the sha256sum command. Defaults to `nil`.
  - versionCode (integer()): The version code of the Android App Bundle. As specified in the Android App Bundle's base module APK manifest file. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sha1 => String.t(),
          :sha256 => String.t(),
          :versionCode => integer()
        }

  field(:sha1)
  field(:sha256)
  field(:versionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.Bundle do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.Bundle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.Bundle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
