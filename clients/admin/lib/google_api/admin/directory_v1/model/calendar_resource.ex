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

defmodule GoogleApi.Admin.Directory_v1.Model.CalendarResource do
  @moduledoc """
  Public API: Resources.calendars

  ## Attributes

  *   `buildingId` (*type:* `String.t`, *default:* `nil`) - Unique ID for the building a resource is located in.
  *   `capacity` (*type:* `integer()`, *default:* `nil`) - Capacity of a resource, number of seats in a room.
  *   `etags` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `featureInstances` (*type:* `any()`, *default:* `nil`) - Instances of features for the calendar resource.
  *   `floorName` (*type:* `String.t`, *default:* `nil`) - Name of the floor a resource is located on.
  *   `floorSection` (*type:* `String.t`, *default:* `nil`) - Name of the section within a floor a resource is located in.
  *   `generatedResourceName` (*type:* `String.t`, *default:* `nil`) - The read-only auto-generated name of the calendar resource which includes metadata about the resource such as building name, floor, capacity, etc. For example, "NYC-2-Training Room 1A (16)".
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#resources#calendars#CalendarResource`) - The type of the resource. For calendar resources, the value is `admin#directory#resources#calendars#CalendarResource`.
  *   `resourceCategory` (*type:* `String.t`, *default:* `nil`) - The category of the calendar resource. Either CONFERENCE_ROOM or OTHER. Legacy data is set to CATEGORY_UNKNOWN.
  *   `resourceDescription` (*type:* `String.t`, *default:* `nil`) - Description of the resource, visible only to admins.
  *   `resourceEmail` (*type:* `String.t`, *default:* `nil`) - The read-only email for the calendar resource. Generated as part of creating a new calendar resource.
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - The unique ID for the calendar resource.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - The name of the calendar resource. For example, "Training Room 1A".
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - The type of the calendar resource, intended for non-room resources.
  *   `userVisibleDescription` (*type:* `String.t`, *default:* `nil`) - Description of the resource, visible to users and admins.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildingId => String.t() | nil,
          :capacity => integer() | nil,
          :etags => String.t() | nil,
          :featureInstances => any() | nil,
          :floorName => String.t() | nil,
          :floorSection => String.t() | nil,
          :generatedResourceName => String.t() | nil,
          :kind => String.t() | nil,
          :resourceCategory => String.t() | nil,
          :resourceDescription => String.t() | nil,
          :resourceEmail => String.t() | nil,
          :resourceId => String.t() | nil,
          :resourceName => String.t() | nil,
          :resourceType => String.t() | nil,
          :userVisibleDescription => String.t() | nil
        }

  field(:buildingId)
  field(:capacity)
  field(:etags)
  field(:featureInstances)
  field(:floorName)
  field(:floorSection)
  field(:generatedResourceName)
  field(:kind)
  field(:resourceCategory)
  field(:resourceDescription)
  field(:resourceEmail)
  field(:resourceId)
  field(:resourceName)
  field(:resourceType)
  field(:userVisibleDescription)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.CalendarResource do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.CalendarResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.CalendarResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
