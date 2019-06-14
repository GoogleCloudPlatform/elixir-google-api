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

defmodule GoogleApi.AndroidPublisher.V3.Model.LocalizedText do
  @moduledoc """


  ## Attributes

  - language (String.t): The language code, in BCP 47 format (eg "en-US"). Defaults to `nil`.
  - text (String.t): The text in the given `language`. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :language => String.t(),
          :text => String.t()
        }

  field(:language)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.LocalizedText do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.LocalizedText.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.LocalizedText do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
