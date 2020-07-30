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

defmodule GoogleApi.DoubleClickBidManager.V11.Model.PathFilter do
  @moduledoc """
  Path filters specify which paths to include in a report. A path is the result of combining DV360 events based on User ID to create a workflow of users' actions.

  When a path filter is set, the resulting report will only include paths that match the specified event at the specified position. All other paths will be excluded.

  ## Attributes

  *   `eventFilters` (*type:* `list(GoogleApi.DoubleClickBidManager.V11.Model.EventFilter.t)`, *default:* `nil`) - Filter on an event to be applied to some part of the path.
  *   `pathMatchPosition` (*type:* `String.t`, *default:* `nil`) - Indicates the position of the path the filter should match to (first, last, or any event in path).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventFilters => list(GoogleApi.DoubleClickBidManager.V11.Model.EventFilter.t()),
          :pathMatchPosition => String.t()
        }

  field(:eventFilters, as: GoogleApi.DoubleClickBidManager.V11.Model.EventFilter, type: :list)
  field(:pathMatchPosition)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V11.Model.PathFilter do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V11.Model.PathFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V11.Model.PathFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
