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

defmodule GoogleApi.Slides.V1.Model.TableBorderProperties do
  @moduledoc """
  The border styling properties of the
  TableBorderCell.

  ## Attributes

  *   `dashStyle` (*type:* `String.t`, *default:* `nil`) - The dash style of the border.
  *   `tableBorderFill` (*type:* `GoogleApi.Slides.V1.Model.TableBorderFill.t`, *default:* `nil`) - The fill of the table border.
  *   `weight` (*type:* `GoogleApi.Slides.V1.Model.Dimension.t`, *default:* `nil`) - The thickness of the border.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dashStyle => String.t(),
          :tableBorderFill => GoogleApi.Slides.V1.Model.TableBorderFill.t(),
          :weight => GoogleApi.Slides.V1.Model.Dimension.t()
        }

  field(:dashStyle)
  field(:tableBorderFill, as: GoogleApi.Slides.V1.Model.TableBorderFill)
  field(:weight, as: GoogleApi.Slides.V1.Model.Dimension)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TableBorderProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.TableBorderProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TableBorderProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
