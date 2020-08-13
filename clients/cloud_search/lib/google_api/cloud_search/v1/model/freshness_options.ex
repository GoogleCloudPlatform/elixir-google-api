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

defmodule GoogleApi.CloudSearch.V1.Model.FreshnessOptions do
  @moduledoc """
  Indicates which freshness property to use when adjusting search ranking for an item. Fresher, more recent dates indicate higher quality. Use the freshness option property that best works with your data. For fileshare documents, last modified time is most relevant. For calendar event data, the time when the event occurs is a more relevant freshness indicator. In this way, calendar events that occur closer to the time of the search query are considered higher quality and ranked accordingly.

  ## Attributes

  *   `freshnessDuration` (*type:* `String.t`, *default:* `nil`) - The duration after which an object should be considered stale. The default value is 180 days (in seconds).
  *   `freshnessProperty` (*type:* `String.t`, *default:* `nil`) - This property indicates the freshness level of the object in the index. If set, this property must be a top-level property within the property definitions and it must be a timestamp type or date type. Otherwise, the Indexing API uses updateTime as the freshness indicator. The maximum length is 256 characters. When a property is used to calculate freshness, the value defaults to 2 years from the current time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :freshnessDuration => String.t(),
          :freshnessProperty => String.t()
        }

  field(:freshnessDuration)
  field(:freshnessProperty)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.FreshnessOptions do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.FreshnessOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.FreshnessOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
