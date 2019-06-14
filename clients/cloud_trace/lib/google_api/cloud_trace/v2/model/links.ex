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

defmodule GoogleApi.CloudTrace.V2.Model.Links do
  @moduledoc """
  A collection of links, which are references from this span to a span
  in the same or different trace.

  ## Attributes

  - droppedLinksCount (integer()): The number of dropped links after the maximum size was enforced. If
  this value is 0, then no links were dropped. Defaults to `nil`.
  - link (list(GoogleApi.CloudTrace.V2.Model.Link.t)): A collection of links. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :droppedLinksCount => integer(),
          :link => list(GoogleApi.CloudTrace.V2.Model.Link.t())
        }

  field(:droppedLinksCount)
  field(:link, as: GoogleApi.CloudTrace.V2.Model.Link, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V2.Model.Links do
  def decode(value, options) do
    GoogleApi.CloudTrace.V2.Model.Links.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V2.Model.Links do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
