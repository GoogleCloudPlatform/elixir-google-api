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

defmodule GoogleApi.YouTube.V3.Model.I18nLanguageSnippet do
  @moduledoc """
  Basic details about an i18n language, such as language code and human-readable name.

  ## Attributes

  - hl (String.t): A short BCP-47 code that uniquely identifies a language. Defaults to `nil`.
  - name (String.t): The human-readable name of the language in the language itself. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hl => String.t(),
          :name => String.t()
        }

  field(:hl)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.I18nLanguageSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.I18nLanguageSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.I18nLanguageSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
