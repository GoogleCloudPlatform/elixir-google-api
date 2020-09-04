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

defmodule GoogleApi.Jobs.V3.Model.CommuteFilter do
  @moduledoc """
  Input only. Parameters needed for commute search.

  ## Attributes

  *   `allowImpreciseAddresses` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, jobs without "precise" addresses (street level addresses or GPS coordinates) might also be returned. For city and coarser level addresses, text matching is used. If this field is set to false or is not specified, only jobs that include precise addresses are returned by Commute Search. Note: If `allow_imprecise_addresses` is set to true, Commute Search is not able to calculate accurate commute times to jobs with city level and coarser address information. Jobs with imprecise addresses will return a `travel_duration` time of 0 regardless of distance from the job seeker.
  *   `commuteMethod` (*type:* `String.t`, *default:* `nil`) - Required. The method of transportation for which to calculate the commute time.
  *   `departureTime` (*type:* `GoogleApi.Jobs.V3.Model.TimeOfDay.t`, *default:* `nil`) - Optional. The departure time used to calculate traffic impact, represented as google.type.TimeOfDay in local time zone. Currently traffic model is restricted to hour level resolution.
  *   `roadTraffic` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the traffic density to use when calculating commute time.
  *   `startCoordinates` (*type:* `GoogleApi.Jobs.V3.Model.LatLng.t`, *default:* `nil`) - Required. The latitude and longitude of the location from which to calculate the commute time.
  *   `travelDuration` (*type:* `String.t`, *default:* `nil`) - Required. The maximum travel time in seconds. The maximum allowed value is `3600s` (one hour). Format is `123s`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowImpreciseAddresses => boolean(),
          :commuteMethod => String.t(),
          :departureTime => GoogleApi.Jobs.V3.Model.TimeOfDay.t(),
          :roadTraffic => String.t(),
          :startCoordinates => GoogleApi.Jobs.V3.Model.LatLng.t(),
          :travelDuration => String.t()
        }

  field(:allowImpreciseAddresses)
  field(:commuteMethod)
  field(:departureTime, as: GoogleApi.Jobs.V3.Model.TimeOfDay)
  field(:roadTraffic)
  field(:startCoordinates, as: GoogleApi.Jobs.V3.Model.LatLng)
  field(:travelDuration)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.CommuteFilter do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.CommuteFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.CommuteFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
