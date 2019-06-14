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

defmodule GoogleApi.Slides.V1.Model.Page do
  @moduledoc """
  A page in a presentation.

  ## Attributes

  - layoutProperties (GoogleApi.Slides.V1.Model.LayoutProperties.t): Layout specific properties. Only set if page_type = LAYOUT. Defaults to `nil`.
  - masterProperties (GoogleApi.Slides.V1.Model.MasterProperties.t): Master specific properties. Only set if page_type = MASTER. Defaults to `nil`.
  - notesProperties (GoogleApi.Slides.V1.Model.NotesProperties.t): Notes specific properties. Only set if page_type = NOTES. Defaults to `nil`.
  - objectId (String.t): The object ID for this page. Object IDs used by
  Page and
  PageElement share the same namespace. Defaults to `nil`.
  - pageElements (list(GoogleApi.Slides.V1.Model.PageElement.t)): The page elements rendered on the page. Defaults to `nil`.
  - pageProperties (GoogleApi.Slides.V1.Model.PageProperties.t): The properties of the page. Defaults to `nil`.
  - pageType (String.t): The type of the page. Defaults to `nil`.
  - revisionId (String.t): The revision ID of the presentation containing this page. Can be used in
  update requests to assert that the presentation revision hasn't changed
  since the last read operation. Only populated if the user has edit access
  to the presentation.

  The format of the revision ID may change over time, so it should be treated
  opaquely. A returned revision ID is only guaranteed to be valid for 24
  hours after it has been returned and cannot be shared across users. If the
  revision ID is unchanged between calls, then the presentation has not
  changed. Conversely, a changed ID (for the same presentation and user)
  usually means the presentation has been updated; however, a changed ID can
  also be due to internal factors such as ID format changes. Defaults to `nil`.
  - slideProperties (GoogleApi.Slides.V1.Model.SlideProperties.t): Slide specific properties. Only set if page_type = SLIDE. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :layoutProperties => GoogleApi.Slides.V1.Model.LayoutProperties.t(),
          :masterProperties => GoogleApi.Slides.V1.Model.MasterProperties.t(),
          :notesProperties => GoogleApi.Slides.V1.Model.NotesProperties.t(),
          :objectId => String.t(),
          :pageElements => list(GoogleApi.Slides.V1.Model.PageElement.t()),
          :pageProperties => GoogleApi.Slides.V1.Model.PageProperties.t(),
          :pageType => String.t(),
          :revisionId => String.t(),
          :slideProperties => GoogleApi.Slides.V1.Model.SlideProperties.t()
        }

  field(:layoutProperties, as: GoogleApi.Slides.V1.Model.LayoutProperties)
  field(:masterProperties, as: GoogleApi.Slides.V1.Model.MasterProperties)
  field(:notesProperties, as: GoogleApi.Slides.V1.Model.NotesProperties)
  field(:objectId)
  field(:pageElements, as: GoogleApi.Slides.V1.Model.PageElement, type: :list)
  field(:pageProperties, as: GoogleApi.Slides.V1.Model.PageProperties)
  field(:pageType)
  field(:revisionId)
  field(:slideProperties, as: GoogleApi.Slides.V1.Model.SlideProperties)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Page do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Page.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Page do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
