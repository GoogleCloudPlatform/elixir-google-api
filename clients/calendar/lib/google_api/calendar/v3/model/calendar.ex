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

defmodule GoogleApi.Calendar.V3.Model.Calendar do
  @moduledoc """
  

  ## Attributes

  - description (String): Description of the calendar. Optional. Defaults to: `null`.
  - etag (String): ETag of the resource. Defaults to: `null`.
  - id (String): Identifier of the calendar. To retrieve IDs call the calendarList.list() method. Defaults to: `null`.
  - kind (String): Type of the resource (\&quot;calendar#calendar\&quot;). Defaults to: `null`.
  - location (String): Geographic location of the calendar as free-form text. Optional. Defaults to: `null`.
  - summary (String): Title of the calendar. Defaults to: `null`.
  - timeZone (String): The time zone of the calendar. (Formatted as an IANA Time Zone Database name, e.g. \&quot;Europe/Zurich\&quot;.) Optional. Defaults to: `null`.
  """

  defstruct [
    :"description",
    :"etag",
    :"id",
    :"kind",
    :"location",
    :"summary",
    :"timeZone"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.Calendar do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.Calendar do
  def encode(value, options) do
    GoogleApi.Calendar.V3.Deserializer.serialize_non_nil(value, options)
  end
end

