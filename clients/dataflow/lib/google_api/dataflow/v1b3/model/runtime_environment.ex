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

defmodule GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment do
  @moduledoc """
  The environment values to set at runtime.

  ## Attributes

  *   `additionalExperiments` (*type:* `list(String.t)`, *default:* `nil`) - Additional experiment flags for the job.
  *   `additionalUserLabels` (*type:* `map()`, *default:* `nil`) - Additional user labels to be specified for the job.
      Keys and values should follow the restrictions specified in the [labeling
      restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
      page.
  *   `bypassTempDirValidation` (*type:* `boolean()`, *default:* `nil`) - Whether to bypass the safety checks for the job's temporary directory.
      Use with caution.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. Name for the Cloud KMS key for the job.
      Key format is:
      projects/<project>/locations/<location>/keyRings/<keyring>/cryptoKeys/<key>
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - The machine type to use for the job. Defaults to the value from the
      template if not specified.
  *   `maxWorkers` (*type:* `integer()`, *default:* `nil`) - The maximum number of Google Compute Engine instances to be made
      available to your pipeline during execution, from 1 to 1000.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Network to which VMs will be assigned.  If empty or unspecified,
      the service will use the network "default".
  *   `numWorkers` (*type:* `integer()`, *default:* `nil`) - The initial number of Google Compute Engine instnaces for the job.
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - The email address of the service account to run the job as.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - Subnetwork to which VMs will be assigned, if desired.  Expected to be of
      the form "regions/REGION/subnetworks/SUBNETWORK".
  *   `tempLocation` (*type:* `String.t`, *default:* `nil`) - The Cloud Storage path to use for temporary files.
      Must be a valid Cloud Storage URL, beginning with `gs://`.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine [availability
      zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
      for launching worker instances to run your pipeline.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalExperiments => list(String.t()),
          :additionalUserLabels => map(),
          :bypassTempDirValidation => boolean(),
          :kmsKeyName => String.t(),
          :machineType => String.t(),
          :maxWorkers => integer(),
          :network => String.t(),
          :numWorkers => integer(),
          :serviceAccountEmail => String.t(),
          :subnetwork => String.t(),
          :tempLocation => String.t(),
          :zone => String.t()
        }

  field(:additionalExperiments, type: :list)
  field(:additionalUserLabels, type: :map)
  field(:bypassTempDirValidation)
  field(:kmsKeyName)
  field(:machineType)
  field(:maxWorkers)
  field(:network)
  field(:numWorkers)
  field(:serviceAccountEmail)
  field(:subnetwork)
  field(:tempLocation)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
