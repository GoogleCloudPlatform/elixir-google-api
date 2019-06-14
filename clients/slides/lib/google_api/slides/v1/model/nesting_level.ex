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

defmodule GoogleApi.Slides.V1.Model.NestingLevel do
  @moduledoc """
  Contains properties describing the look and feel of a list bullet at a given
  level of nesting.

  ## Attributes

  - bulletStyle (GoogleApi.Slides.V1.Model.TextStyle.t): The style of a bullet at this level of nesting. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bulletStyle => GoogleApi.Slides.V1.Model.TextStyle.t()
        }

  field(:bulletStyle, as: GoogleApi.Slides.V1.Model.TextStyle)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.NestingLevel do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.NestingLevel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.NestingLevel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
