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

defmodule GoogleApi.Slides.V1.Model.DeleteParagraphBulletsRequest do
  @moduledoc """
  Deletes bullets from all of the paragraphs that overlap with the given text
  index range.

  The nesting level of each paragraph will be visually preserved by adding
  indent to the start of the corresponding paragraph.

  ## Attributes

  - cellLocation (GoogleApi.Slides.V1.Model.TableCellLocation.t): The optional table cell location if the text to be modified is in a table
  cell. If present, the object_id must refer to a table. Defaults to `nil`.
  - objectId (String.t): The object ID of the shape or table containing the text to delete bullets
  from. Defaults to `nil`.
  - textRange (GoogleApi.Slides.V1.Model.Range.t): The range of text to delete bullets from, based on TextElement indexes. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cellLocation => GoogleApi.Slides.V1.Model.TableCellLocation.t(),
          :objectId => String.t(),
          :textRange => GoogleApi.Slides.V1.Model.Range.t()
        }

  field(:cellLocation, as: GoogleApi.Slides.V1.Model.TableCellLocation)
  field(:objectId)
  field(:textRange, as: GoogleApi.Slides.V1.Model.Range)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.DeleteParagraphBulletsRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.DeleteParagraphBulletsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.DeleteParagraphBulletsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
