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

defmodule GoogleApi.Mirror.V1.Model.Location do
  @moduledoc """
  A geographic location that can be associated with a timeline item.

  ## Attributes

  - accuracy (float()): The accuracy of the location fix in meters. Defaults to `nil`.
  - address (String.t): The full address of the location. Defaults to `nil`.
  - displayName (String.t): The name to be displayed. This may be a business name or a user-defined place, such as "Home". Defaults to `nil`.
  - id (String.t): The ID of the location. Defaults to `nil`.
  - kind (String.t): The type of resource. This is always mirror#location. Defaults to `mirror#location`.
  - latitude (float()): The latitude, in degrees. Defaults to `nil`.
  - longitude (float()): The longitude, in degrees. Defaults to `nil`.
  - timestamp (DateTime.t): The time at which this location was captured, formatted according to RFC 3339. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accuracy => float(),
          :address => String.t(),
          :displayName => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :latitude => float(),
          :longitude => float(),
          :timestamp => DateTime.t()
        }

  field(:accuracy)
  field(:address)
  field(:displayName)
  field(:id)
  field(:kind)
  field(:latitude)
  field(:longitude)
  field(:timestamp, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Mirror.V1.Model.Location do
  def decode(value, options) do
    GoogleApi.Mirror.V1.Model.Location.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Mirror.V1.Model.Location do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
