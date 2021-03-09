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

defmodule GoogleApi.DoubleClickSearch.V2.Model.SavedColumn do
  @moduledoc """
  A saved column

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies this as a SavedColumn resource. Value: the fixed string doubleclicksearch#savedColumn.
  *   `savedColumnName` (*type:* `String.t`, *default:* `nil`) - The name of the saved column.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of data this saved column will produce.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :savedColumnName => String.t() | nil,
          :type => String.t() | nil
        }

  field(:kind)
  field(:savedColumnName)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.SavedColumn do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.SavedColumn.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.SavedColumn do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
