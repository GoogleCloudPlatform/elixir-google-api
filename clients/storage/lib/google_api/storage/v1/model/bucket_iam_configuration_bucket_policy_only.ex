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

defmodule GoogleApi.Storage.V1.Model.BucketIamConfigurationBucketPolicyOnly do
  @moduledoc """
  The bucket's Bucket Policy Only configuration.

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - If set, access checks only use bucket-level IAM policies or above.
  *   `lockedTime` (*type:* `DateTime.t`, *default:* `nil`) - The deadline time for changing iamConfiguration.bucketPolicyOnly.enabled from true to false in RFC 3339 format. iamConfiguration.bucketPolicyOnly.enabled may be changed from true to false until the locked time, after which the field is immutable.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean(),
          :lockedTime => DateTime.t()
        }

  field(:enabled)
  field(:lockedTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.BucketIamConfigurationBucketPolicyOnly do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.BucketIamConfigurationBucketPolicyOnly.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.BucketIamConfigurationBucketPolicyOnly do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
