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

defmodule GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSource do
  @moduledoc """
  The CloudStorageSource resource.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "events.cloud.google.com/v1alpha1".
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource, in this case "CloudStorageSource".
  *   `metadata` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta.t`, *default:* `nil`) - Metadata associated with this CloudStorageSource.
  *   `spec` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSourceSpec.t`, *default:* `nil`) - Spec defines the desired state of the CloudStorageSource.
  *   `status` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSourceStatus.t`, *default:* `nil`) - Status represents the current state of the CloudStorageSource. This data may be out of date.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :kind => String.t(),
          :metadata => GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta.t(),
          :spec => GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSourceSpec.t(),
          :status => GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSourceStatus.t()
        }

  field(:apiVersion)
  field(:kind)
  field(:metadata, as: GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta)
  field(:spec, as: GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSourceSpec)
  field(:status, as: GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSourceStatus)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSource do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.CloudStorageSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
