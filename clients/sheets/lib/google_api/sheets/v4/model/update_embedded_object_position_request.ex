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

defmodule GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest do
  @moduledoc """
  Update an embedded object&#39;s position (such as a moving or resizing a chart or image).

  ## Attributes

  - fields (String.t): The fields of OverlayPosition that should be updated when setting a new position. Used only if newPosition.overlayPosition is set, in which case at least one field must be specified.  The root &#x60;newPosition.overlayPosition&#x60; is implied and should not be specified. A single &#x60;\&quot;*\&quot;&#x60; can be used as short-hand for listing every field. Defaults to: `null`.
  - newPosition (EmbeddedObjectPosition): An explicit position to move the embedded object to. If newPosition.sheetId is set, a new sheet with that ID will be created. If newPosition.newSheet is set to true, a new sheet will be created with an ID that will be chosen for you. Defaults to: `null`.
  - objectId (integer()): The ID of the object to moved. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          fields: any(),
          newPosition: GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition.t(),
          objectId: any()
        }

  defstruct [
    :fields,
    :newPosition,
    :objectId
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :newPosition,
      :struct,
      GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
