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

defmodule GoogleApi.Vision.V1.Model.TextProperty do
  @moduledoc """
  Additional information detected on the structural component.

  ## Attributes

  - detectedBreak (GoogleApi.Vision.V1.Model.DetectedBreak.t): Detected start or end of a text segment. Defaults to `nil`.
  - detectedLanguages (list(GoogleApi.Vision.V1.Model.DetectedLanguage.t)): A list of detected languages together with confidence. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectedBreak => GoogleApi.Vision.V1.Model.DetectedBreak.t(),
          :detectedLanguages => list(GoogleApi.Vision.V1.Model.DetectedLanguage.t())
        }

  field(:detectedBreak, as: GoogleApi.Vision.V1.Model.DetectedBreak)
  field(:detectedLanguages, as: GoogleApi.Vision.V1.Model.DetectedLanguage, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.TextProperty do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.TextProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.TextProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
