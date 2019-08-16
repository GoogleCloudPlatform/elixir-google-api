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

defmodule GoogleApi.Drive.V3.Model.FileImageMediaMetadata do
  @moduledoc """
  Additional metadata about image media, if available.

  ## Attributes

  *   `aperture` (*type:* `number()`, *default:* `nil`) - The aperture used to create the photo (f-number).
  *   `cameraMake` (*type:* `String.t`, *default:* `nil`) - The make of the camera used to create the photo.
  *   `cameraModel` (*type:* `String.t`, *default:* `nil`) - The model of the camera used to create the photo.
  *   `colorSpace` (*type:* `String.t`, *default:* `nil`) - The color space of the photo.
  *   `exposureBias` (*type:* `number()`, *default:* `nil`) - The exposure bias of the photo (APEX value).
  *   `exposureMode` (*type:* `String.t`, *default:* `nil`) - The exposure mode used to create the photo.
  *   `exposureTime` (*type:* `number()`, *default:* `nil`) - The length of the exposure, in seconds.
  *   `flashUsed` (*type:* `boolean()`, *default:* `nil`) - Whether a flash was used to create the photo.
  *   `focalLength` (*type:* `number()`, *default:* `nil`) - The focal length used to create the photo, in millimeters.
  *   `height` (*type:* `integer()`, *default:* `nil`) - The height of the image in pixels.
  *   `isoSpeed` (*type:* `integer()`, *default:* `nil`) - The ISO speed used to create the photo.
  *   `lens` (*type:* `String.t`, *default:* `nil`) - The lens used to create the photo.
  *   `location` (*type:* `GoogleApi.Drive.V3.Model.FileImageMediaMetadataLocation.t`, *default:* `nil`) - Geographic location information stored in the image.
  *   `maxApertureValue` (*type:* `number()`, *default:* `nil`) - The smallest f-number of the lens at the focal length used to create the photo (APEX value).
  *   `meteringMode` (*type:* `String.t`, *default:* `nil`) - The metering mode used to create the photo.
  *   `rotation` (*type:* `integer()`, *default:* `nil`) - The rotation in clockwise degrees from the image's original orientation.
  *   `sensor` (*type:* `String.t`, *default:* `nil`) - The type of sensor used to create the photo.
  *   `subjectDistance` (*type:* `integer()`, *default:* `nil`) - The distance to the subject of the photo, in meters.
  *   `time` (*type:* `String.t`, *default:* `nil`) - The date and time the photo was taken (EXIF DateTime).
  *   `whiteBalance` (*type:* `String.t`, *default:* `nil`) - The white balance mode used to create the photo.
  *   `width` (*type:* `integer()`, *default:* `nil`) - The width of the image in pixels.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aperture => number(),
          :cameraMake => String.t(),
          :cameraModel => String.t(),
          :colorSpace => String.t(),
          :exposureBias => number(),
          :exposureMode => String.t(),
          :exposureTime => number(),
          :flashUsed => boolean(),
          :focalLength => number(),
          :height => integer(),
          :isoSpeed => integer(),
          :lens => String.t(),
          :location => GoogleApi.Drive.V3.Model.FileImageMediaMetadataLocation.t(),
          :maxApertureValue => number(),
          :meteringMode => String.t(),
          :rotation => integer(),
          :sensor => String.t(),
          :subjectDistance => integer(),
          :time => String.t(),
          :whiteBalance => String.t(),
          :width => integer()
        }

  field(:aperture)
  field(:cameraMake)
  field(:cameraModel)
  field(:colorSpace)
  field(:exposureBias)
  field(:exposureMode)
  field(:exposureTime)
  field(:flashUsed)
  field(:focalLength)
  field(:height)
  field(:isoSpeed)
  field(:lens)
  field(:location, as: GoogleApi.Drive.V3.Model.FileImageMediaMetadataLocation)
  field(:maxApertureValue)
  field(:meteringMode)
  field(:rotation)
  field(:sensor)
  field(:subjectDistance)
  field(:time)
  field(:whiteBalance)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.FileImageMediaMetadata do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.FileImageMediaMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.FileImageMediaMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
