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

defmodule GoogleApi.Translate.V3.Model.SupportedLanguage do
  @moduledoc """
  A single supported language response corresponds to information related to one supported language.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Human readable name of the language localized in the display language specified in the request.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Supported language code, generally consisting of its ISO 639-1 identifier, for example, 'en', 'ja'. In certain cases, BCP-47 codes including language and region identifiers are returned (for example, 'zh-TW' and 'zh-CN')
  *   `supportSource` (*type:* `boolean()`, *default:* `nil`) - Can be used as source language.
  *   `supportTarget` (*type:* `boolean()`, *default:* `nil`) - Can be used as target language.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :languageCode => String.t(),
          :supportSource => boolean(),
          :supportTarget => boolean()
        }

  field(:displayName)
  field(:languageCode)
  field(:supportSource)
  field(:supportTarget)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.SupportedLanguage do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.SupportedLanguage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.SupportedLanguage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
