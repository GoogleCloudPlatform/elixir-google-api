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

defmodule GoogleApi.Compute.V1.Model.HostRule do
  @moduledoc """
  UrlMaps A host-matching rule for a URL. If matched, will use the named PathMatcher to select the BackendService.

  ## Attributes

  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to `nil`.
  - hosts (list(String.t)): The list of host patterns to match. They must be valid hostnames, except * will match any string of ([a-z0-9-.]*). In that case, * must be the first character and must be followed in the pattern by either - or .. Defaults to `nil`.
  - pathMatcher (String.t): The name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :hosts => list(String.t()),
          :pathMatcher => String.t()
        }

  field(:description)
  field(:hosts, type: :list)
  field(:pathMatcher)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HostRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HostRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HostRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
