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

defmodule GoogleApi.Sheets.V4.Model.AddDimensionGroupRequest do
  @moduledoc """
  Creates a group over the specified range. If the requested range is a superset of the range of an existing group G, then the depth of G is incremented and this new group G' has the depth of that group. For example, a group [C:D, depth 1] + [B:E] results in groups [B:E, depth 1] and [C:D, depth 2]. If the requested range is a subset of the range of an existing group G, then the depth of the new group G' becomes one greater than the depth of G. For example, a group [B:E, depth 1] + [C:D] results in groups [B:E, depth 1] and [C:D, depth 2]. If the requested range starts before and ends within, or starts within and ends after, the range of an existing group G, then the range of the existing group G becomes the union of the ranges, and the new group G' has depth one greater than the depth of G and range as the intersection of the ranges. For example, a group [B:D, depth 1] + [C:E] results in groups [B:E, depth 1] and [C:D, depth 2].

  ## Attributes

  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.DimensionRange.t`, *default:* `nil`) - The range over which to create a group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :range => GoogleApi.Sheets.V4.Model.DimensionRange.t() | nil
        }

  field(:range, as: GoogleApi.Sheets.V4.Model.DimensionRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AddDimensionGroupRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AddDimensionGroupRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AddDimensionGroupRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
