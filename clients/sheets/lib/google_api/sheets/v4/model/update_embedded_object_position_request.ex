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

defmodule GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest do
  @moduledoc """
  Update an embedded object's position (such as a moving or resizing a
  chart or image).

  ## Attributes

  - fields (String.t): The fields of OverlayPosition
  that should be updated when setting a new position. Used only if
  newPosition.overlayPosition
  is set, in which case at least one field must
  be specified.  The root `newPosition.overlayPosition` is implied and
  should not be specified.
  A single `"*"` can be used as short-hand for listing every field. Defaults to `nil`.
  - newPosition (GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition.t): An explicit position to move the embedded object to.
  If newPosition.sheetId is set,
  a new sheet with that ID will be created.
  If newPosition.newSheet is set to true,
  a new sheet will be created with an ID that will be chosen for you. Defaults to `nil`.
  - objectId (integer()): The ID of the object to moved. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => String.t(),
          :newPosition => GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition.t(),
          :objectId => integer()
        }

  field(:fields)
  field(:newPosition, as: GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition)
  field(:objectId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
