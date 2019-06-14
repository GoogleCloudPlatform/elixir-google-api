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

defmodule GoogleApi.UrlShortener.V1.Model.StringCount do
  @moduledoc """


  ## Attributes

  - count (String.t): Number of clicks for this top entry, e.g. for this particular country or browser. Defaults to `nil`.
  - id (String.t): Label assigned to this top entry, e.g. "US" or "Chrome". Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t(),
          :id => String.t()
        }

  field(:count)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.UrlShortener.V1.Model.StringCount do
  def decode(value, options) do
    GoogleApi.UrlShortener.V1.Model.StringCount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.UrlShortener.V1.Model.StringCount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
