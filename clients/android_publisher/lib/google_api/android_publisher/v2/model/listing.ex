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

defmodule GoogleApi.AndroidPublisher.V2.Model.Listing do
  @moduledoc """


  ## Attributes

  - fullDescription (String.t): Full description of the app; this may be up to 4000 characters in length. Defaults to `nil`.
  - language (String.t): Language localization code (for example, "de-AT" for Austrian German). Defaults to `nil`.
  - shortDescription (String.t): Short description of the app (previously known as promo text); this may be up to 80 characters in length. Defaults to `nil`.
  - title (String.t): App's localized title. Defaults to `nil`.
  - video (String.t): URL of a promotional YouTube video for the app. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullDescription => String.t(),
          :language => String.t(),
          :shortDescription => String.t(),
          :title => String.t(),
          :video => String.t()
        }

  field(:fullDescription)
  field(:language)
  field(:shortDescription)
  field(:title)
  field(:video)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.Listing do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.Listing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.Listing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
