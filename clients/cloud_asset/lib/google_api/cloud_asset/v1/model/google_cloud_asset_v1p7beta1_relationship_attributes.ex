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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1p7beta1RelationshipAttributes do
  @moduledoc """
  The relationship attributes which include `type`, `source_resource_type`, `target_resource_type` and `action`.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - The detail of the relationship, e.g. `contains`, `attaches`
  *   `sourceResourceType` (*type:* `String.t`, *default:* `nil`) - The source asset type. Example: `compute.googleapis.com/Instance`
  *   `targetResourceType` (*type:* `String.t`, *default:* `nil`) - The target asset type. Example: `compute.googleapis.com/Disk`
  *   `type` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the relationship type. Example: `INSTANCE_TO_INSTANCEGROUP`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :sourceResourceType => String.t(),
          :targetResourceType => String.t(),
          :type => String.t()
        }

  field(:action)
  field(:sourceResourceType)
  field(:targetResourceType)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1p7beta1RelationshipAttributes do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1p7beta1RelationshipAttributes.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1p7beta1RelationshipAttributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
