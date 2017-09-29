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

defmodule GoogleApi.Slides.V1.Model.Presentation do
  @moduledoc """
  A Google Slides presentation.

  ## Attributes

  - layouts (List[Page]): The layouts in the presentation. A layout is a template that determines how content is arranged and styled on the slides that inherit from that layout. Defaults to: `null`.
  - locale (String): The locale of the presentation, as an IETF BCP 47 language tag. Defaults to: `null`.
  - masters (List[Page]): The slide masters in the presentation. A slide master contains all common page elements and the common properties for a set of layouts. They serve three purposes:  - Placeholder shapes on a master contain the default text styles and shape   properties of all placeholder shapes on pages that use that master. - The master page properties define the common page properties inherited by   its layouts. - Any other shapes on the master slide will appear on all slides using that   master, regardless of their layout. Defaults to: `null`.
  - notesMaster (Page): The notes master in the presentation. It serves three purposes:  - Placeholder shapes on a notes master contain the default text styles and   shape properties of all placeholder shapes on notes pages. Specifically,   a &#x60;SLIDE_IMAGE&#x60; placeholder shape contains the slide thumbnail, and a   &#x60;BODY&#x60; placeholder shape contains the speaker notes. - The notes master page properties define the common page properties   inherited by all notes pages. - Any other shapes on the notes master will appear on all notes pages.  The notes master is read-only. Defaults to: `null`.
  - pageSize (Size): The size of pages in the presentation. Defaults to: `null`.
  - presentationId (String): The ID of the presentation. Defaults to: `null`.
  - revisionId (String): The revision ID of the presentation. Can be used in update requests to assert that the presentation revision hasn&#39;t changed since the last read operation. Only populated if the user has edit access to the presentation.  The format of the revision ID may change over time, so it should be treated opaquely. A returned revision ID is only guaranteed to be valid for 24 hours after it has been returned and cannot be shared across users. If the revision ID is unchanged between calls, then the presentation has not changed. Conversely, a changed ID (for the same presentation and user) usually means the presentation has been updated; however, a changed ID can also be due to internal factors such as ID format changes. Defaults to: `null`.
  - slides (List[Page]): The slides in the presentation. A slide inherits properties from a slide layout. Defaults to: `null`.
  - title (String): The title of the presentation. Defaults to: `null`.
  """

  defstruct [
    :"layouts",
    :"locale",
    :"masters",
    :"notesMaster",
    :"pageSize",
    :"presentationId",
    :"revisionId",
    :"slides",
    :"title"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Presentation do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"layouts", :list, GoogleApi.Slides.V1.Model.Page, options)
    |> deserialize(:"masters", :list, GoogleApi.Slides.V1.Model.Page, options)
    |> deserialize(:"notesMaster", :struct, GoogleApi.Slides.V1.Model.Page, options)
    |> deserialize(:"pageSize", :struct, GoogleApi.Slides.V1.Model.Size, options)
    |> deserialize(:"slides", :list, GoogleApi.Slides.V1.Model.Page, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Presentation do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

