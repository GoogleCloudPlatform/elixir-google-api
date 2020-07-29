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

defmodule GoogleApi.Dataproc.V1.Model.AcceleratorConfig do
  @moduledoc """
  Specifies the type and number of accelerator cards attached to the instances of an instance. See GPUs on Compute Engine (https://cloud.google.com/compute/docs/gpus/).

  ## Attributes

  *   `acceleratorCount` (*type:* `integer()`, *default:* `nil`) - The number of the accelerator cards of this type exposed to this instance.
  *   `acceleratorTypeUri` (*type:* `String.t`, *default:* `nil`) - Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See Compute Engine AcceleratorTypes (https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes).Examples: https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80 nvidia-tesla-k80Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, nvidia-tesla-k80.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorCount => integer(),
          :acceleratorTypeUri => String.t()
        }

  field(:acceleratorCount)
  field(:acceleratorTypeUri)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.AcceleratorConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.AcceleratorConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.AcceleratorConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
