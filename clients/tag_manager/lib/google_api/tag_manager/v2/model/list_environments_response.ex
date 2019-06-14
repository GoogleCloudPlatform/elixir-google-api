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

defmodule GoogleApi.TagManager.V2.Model.ListEnvironmentsResponse do
  @moduledoc """
  List Environments Response.

  ## Attributes

  - environment (list(GoogleApi.TagManager.V2.Model.Environment.t)): All Environments of a GTM Container. Defaults to `nil`.
  - nextPageToken (String.t): Continuation token for fetching the next page of results. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :environment => list(GoogleApi.TagManager.V2.Model.Environment.t()),
          :nextPageToken => String.t()
        }

  field(:environment, as: GoogleApi.TagManager.V2.Model.Environment, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.ListEnvironmentsResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.ListEnvironmentsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.ListEnvironmentsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
