# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Calendar.V3.Model.Settings do
  @moduledoc """


  ## Attributes

  - etag (String.t): Etag of the collection. Defaults to: `null`.
  - items ([Setting]): List of user settings. Defaults to: `null`.
  - kind (String.t): Type of the collection (\&quot;calendar#settings\&quot;). Defaults to: `null`.
  - nextPageToken (String.t): Token used to access the next page of this result. Omitted if no further results are available, in which case nextSyncToken is provided. Defaults to: `null`.
  - nextSyncToken (String.t): Token used at a later point in time to retrieve only the entries that have changed since this result was returned. Omitted if further results are available, in which case nextPageToken is provided. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => any(),
          :items => list(GoogleApi.Calendar.V3.Model.Setting.t()),
          :kind => any(),
          :nextPageToken => any(),
          :nextSyncToken => any()
        }

  field(:etag)
  field(:items, as: GoogleApi.Calendar.V3.Model.Setting, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:nextSyncToken)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.Settings do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.Settings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.Settings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
