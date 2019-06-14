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

defmodule GoogleApi.Slides.V1.Model.TextStyle do
  @moduledoc """
  Represents the styling that can be applied to a TextRun.

  If this text is contained in a shape with a parent placeholder, then these text styles may be
  inherited from the parent. Which text styles are inherited depend on the
  nesting level of lists:

  * A text run in a paragraph that is not in a list will inherit its text style
  from the the newline character in the paragraph at the 0 nesting level of
  the list inside the parent placeholder.
  * A text run in a paragraph that is in a list will inherit its text style
  from the newline character in the paragraph at its corresponding nesting
  level of the list inside the parent placeholder.

  Inherited text styles are represented as unset fields in this message. If
  text is contained in a shape without a parent placeholder, unsetting these
  fields will revert the style to a value matching the defaults in the Slides
  editor.

  ## Attributes

  - backgroundColor (GoogleApi.Slides.V1.Model.OptionalColor.t): The background color of the text. If set, the color is either opaque or
  transparent, depending on if the `opaque_color` field in it is set. Defaults to `nil`.
  - baselineOffset (String.t): The text's vertical offset from its normal position.

  Text with `SUPERSCRIPT` or `SUBSCRIPT` baseline offsets is automatically
  rendered in a smaller font size, computed based on the `font_size` field.
  The `font_size` itself is not affected by changes in this field. Defaults to `nil`.
  - bold (boolean()): Whether or not the text is rendered as bold. Defaults to `nil`.
  - fontFamily (String.t): The font family of the text.

  The font family can be any font from the Font menu in Slides or from
  [Google Fonts] (https://fonts.google.com/). If the font name is
  unrecognized, the text is rendered in `Arial`.

  Some fonts can affect the weight of the text. If an update request
  specifies values for both `font_family` and `bold`, the explicitly-set
  `bold` value is used. Defaults to `nil`.
  - fontSize (GoogleApi.Slides.V1.Model.Dimension.t): The size of the text's font. When read, the `font_size` will specified in
  points. Defaults to `nil`.
  - foregroundColor (GoogleApi.Slides.V1.Model.OptionalColor.t): The color of the text itself. If set, the color is either opaque or
  transparent, depending on if the `opaque_color` field in it is set. Defaults to `nil`.
  - italic (boolean()): Whether or not the text is italicized. Defaults to `nil`.
  - link (GoogleApi.Slides.V1.Model.Link.t): The hyperlink destination of the text. If unset, there is no link. Links
  are not inherited from parent text.

  Changing the link in an update request causes some other changes to the
  text style of the range:

  * When setting a link, the text foreground color will be set to
  ThemeColorType.HYPERLINK and the text will
  be underlined. If these fields are modified in the same
  request, those values will be used instead of the link defaults.
  * Setting a link on a text range that overlaps with an existing link will
  also update the existing link to point to the new URL.
  * Links are not settable on newline characters. As a result, setting a link
  on a text range that crosses a paragraph boundary, such as `"ABC\n123"`,
  will separate the newline character(s) into their own text runs. The
  link will be applied separately to the runs before and after the newline.
  * Removing a link will update the text style of the range to match the
  style of the preceding text (or the default text styles if the preceding
  text is another link) unless different styles are being set in the same
  request. Defaults to `nil`.
  - smallCaps (boolean()): Whether or not the text is in small capital letters. Defaults to `nil`.
  - strikethrough (boolean()): Whether or not the text is struck through. Defaults to `nil`.
  - underline (boolean()): Whether or not the text is underlined. Defaults to `nil`.
  - weightedFontFamily (GoogleApi.Slides.V1.Model.WeightedFontFamily.t): The font family and rendered weight of the text.

  This field is an extension of `font_family` meant to support explicit font
  weights without breaking backwards compatibility. As such, when reading the
  style of a range of text, the value of `weighted_font_family#font_family`
  will always be equal to that of `font_family`. However, when writing, if
  both fields are included in the field mask (either explicitly or through
  the wildcard `"*"`), their values are reconciled as follows:

  * If `font_family` is set and `weighted_font_family` is not, the value of
  `font_family` is applied with weight `400` ("normal").
  * If both fields are set, the value of `font_family` must match that of
  `weighted_font_family#font_family`. If so, the font family and weight of
  `weighted_font_family` is applied. Otherwise, a 400 bad request error is
  returned.
  * If `weighted_font_family` is set and `font_family` is not, the font
  family and weight of `weighted_font_family` is applied.
  * If neither field is set, the font family and weight of the text inherit
  from the parent. Note that these properties cannot inherit separately
  from each other.

  If an update request specifies values for both `weighted_font_family` and
  `bold`, the `weighted_font_family` is applied first, then `bold`.

  If `weighted_font_family#weight` is not set, it defaults to `400`.

  If `weighted_font_family` is set, then `weighted_font_family#font_family`
  must also be set with a non-empty value. Otherwise, a 400 bad request error
  is returned. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundColor => GoogleApi.Slides.V1.Model.OptionalColor.t(),
          :baselineOffset => String.t(),
          :bold => boolean(),
          :fontFamily => String.t(),
          :fontSize => GoogleApi.Slides.V1.Model.Dimension.t(),
          :foregroundColor => GoogleApi.Slides.V1.Model.OptionalColor.t(),
          :italic => boolean(),
          :link => GoogleApi.Slides.V1.Model.Link.t(),
          :smallCaps => boolean(),
          :strikethrough => boolean(),
          :underline => boolean(),
          :weightedFontFamily => GoogleApi.Slides.V1.Model.WeightedFontFamily.t()
        }

  field(:backgroundColor, as: GoogleApi.Slides.V1.Model.OptionalColor)
  field(:baselineOffset)
  field(:bold)
  field(:fontFamily)
  field(:fontSize, as: GoogleApi.Slides.V1.Model.Dimension)
  field(:foregroundColor, as: GoogleApi.Slides.V1.Model.OptionalColor)
  field(:italic)
  field(:link, as: GoogleApi.Slides.V1.Model.Link)
  field(:smallCaps)
  field(:strikethrough)
  field(:underline)
  field(:weightedFontFamily, as: GoogleApi.Slides.V1.Model.WeightedFontFamily)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TextStyle do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.TextStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TextStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
