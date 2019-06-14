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

defmodule GoogleApi.Slides.V1.Model.SlideProperties do
  @moduledoc """
  The properties of Page that are only
  relevant for pages with page_type SLIDE.

  ## Attributes

  - layoutObjectId (String.t): The object ID of the layout that this slide is based on. This property is
  read-only. Defaults to `nil`.
  - masterObjectId (String.t): The object ID of the master that this slide is based on. This property is
  read-only. Defaults to `nil`.
  - notesPage (GoogleApi.Slides.V1.Model.Page.t): The notes page that this slide is associated with. It defines the visual
  appearance of a notes page when printing or exporting slides with speaker
  notes. A notes page inherits properties from the
  notes master.
  The placeholder shape with type BODY on the notes page contains the speaker
  notes for this slide. The ID of this shape is identified by the
  speakerNotesObjectId field.
  The notes page is read-only except for the text content and styles of the
  speaker notes shape. This property is read-only. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :layoutObjectId => String.t(),
          :masterObjectId => String.t(),
          :notesPage => GoogleApi.Slides.V1.Model.Page.t()
        }

  field(:layoutObjectId)
  field(:masterObjectId)
  field(:notesPage, as: GoogleApi.Slides.V1.Model.Page)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.SlideProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.SlideProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.SlideProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
