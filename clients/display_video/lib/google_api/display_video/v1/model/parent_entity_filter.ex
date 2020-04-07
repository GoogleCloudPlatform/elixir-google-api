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

defmodule GoogleApi.DisplayVideo.V1.Model.ParentEntityFilter do
  @moduledoc """
  A filtering option that filters on selected file types belonging to a chosen
  set of filter entities.

  ## Attributes

  *   `fileType` (*type:* `list(String.t)`, *default:* `nil`) - Required. File types that will be returned.
  *   `filterIds` (*type:* `list(String.t)`, *default:* `nil`) - The IDs of the specified filter type. This is used to filter entities to
      fetch. If filter type is not `FILTER_TYPE_NONE`, at least one ID must be
      specified.
  *   `filterType` (*type:* `String.t`, *default:* `nil`) - Required. Filter type used to filter fetched entities.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileType => list(String.t()),
          :filterIds => list(String.t()),
          :filterType => String.t()
        }

  field(:fileType, type: :list)
  field(:filterIds, type: :list)
  field(:filterType)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.ParentEntityFilter do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ParentEntityFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.ParentEntityFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
