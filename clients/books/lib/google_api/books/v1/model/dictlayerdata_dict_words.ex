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

defmodule GoogleApi.Books.V1.Model.DictlayerdataDictWords do
  @moduledoc """


  ## Attributes

  *   `derivatives` (*type:* `list(GoogleApi.Books.V1.Model.DictlayerdataDictWordsDerivatives.t)`, *default:* `nil`) - 
  *   `examples` (*type:* `list(GoogleApi.Books.V1.Model.DictlayerdataDictWordsExamples.t)`, *default:* `nil`) - 
  *   `senses` (*type:* `list(GoogleApi.Books.V1.Model.DictlayerdataDictWordsSenses.t)`, *default:* `nil`) - 
  *   `source` (*type:* `GoogleApi.Books.V1.Model.DictlayerdataDictWordsSource.t`, *default:* `nil`) - The words with different meanings but not related words, e.g. "go"
      (game) and "go" (verb).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :derivatives => list(GoogleApi.Books.V1.Model.DictlayerdataDictWordsDerivatives.t()),
          :examples => list(GoogleApi.Books.V1.Model.DictlayerdataDictWordsExamples.t()),
          :senses => list(GoogleApi.Books.V1.Model.DictlayerdataDictWordsSenses.t()),
          :source => GoogleApi.Books.V1.Model.DictlayerdataDictWordsSource.t()
        }

  field(:derivatives, as: GoogleApi.Books.V1.Model.DictlayerdataDictWordsDerivatives, type: :list)
  field(:examples, as: GoogleApi.Books.V1.Model.DictlayerdataDictWordsExamples, type: :list)
  field(:senses, as: GoogleApi.Books.V1.Model.DictlayerdataDictWordsSenses, type: :list)
  field(:source, as: GoogleApi.Books.V1.Model.DictlayerdataDictWordsSource)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.DictlayerdataDictWords do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.DictlayerdataDictWords.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.DictlayerdataDictWords do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
