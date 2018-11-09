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

defmodule GoogleApi.StreetViewPublish.V1.Model.Pose do
  @moduledoc """
  Raw pose measurement for an entity.

  ## Attributes

  - accuracyMeters (float()): The estimated horizontal accuracy of this pose in meters with 68% confidence (one standard deviation). For example, on Android, this value is available from this method: https://developer.android.com/reference/android/location/Location#getAccuracy(). Other platforms have different methods of obtaining similar accuracy estimations. Defaults to: `null`.
  - altitude (float()): Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an unmeasured quantity. Defaults to: `null`.
  - heading (float()): Compass heading, measured at the center of the photo in degrees clockwise from North. Value must be &gt;&#x3D;0 and &lt;360. NaN indicates an unmeasured quantity. Defaults to: `null`.
  - latLngPair (LatLng): Latitude and longitude pair of the pose, as explained here: https://cloud.google.com/datastore/docs/reference/rest/Shared.Types/LatLng When creating a Photo, if the latitude and longitude pair are not provided here, the geolocation from the exif header will be used. If the latitude and longitude pair is not provided and cannot be found in the exif header, the create photo process will fail. Defaults to: `null`.
  - level (Level): Level (the floor in a building) used to configure vertical navigation. Defaults to: `null`.
  - pitch (float()): Pitch, measured at the center of the photo in degrees. Value must be &gt;&#x3D;-90 and &lt;&#x3D; 90. A value of -90 means looking directly down, and a value of 90 means looking directly up. NaN indicates an unmeasured quantity. Defaults to: `null`.
  - roll (float()): Roll, measured in degrees. Value must be &gt;&#x3D; 0 and &lt;360. A value of 0 means level with the horizon. NaN indicates an unmeasured quantity. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accuracyMeters => any(),
          :altitude => any(),
          :heading => any(),
          :latLngPair => GoogleApi.StreetViewPublish.V1.Model.LatLng.t(),
          :level => GoogleApi.StreetViewPublish.V1.Model.Level.t(),
          :pitch => any(),
          :roll => any()
        }

  field(:accuracyMeters)
  field(:altitude)
  field(:heading)
  field(:latLngPair, as: GoogleApi.StreetViewPublish.V1.Model.LatLng)
  field(:level, as: GoogleApi.StreetViewPublish.V1.Model.Level)
  field(:pitch)
  field(:roll)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.Pose do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.Pose.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.Pose do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
