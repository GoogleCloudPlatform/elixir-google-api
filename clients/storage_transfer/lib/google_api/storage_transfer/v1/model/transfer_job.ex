# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.StorageTransfer.V1.Model.TransferJob do
  @moduledoc """
  This resource represents the configuration of a transfer job that runs periodically.

  ## Attributes

  - creationTime (DateTime.t): This field cannot be changed by user requests. Defaults to: `null`.
  - deletionTime (DateTime.t): This field cannot be changed by user requests. Defaults to: `null`.
  - description (String.t): A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded. Defaults to: `null`.
  - lastModificationTime (DateTime.t): This field cannot be changed by user requests. Defaults to: `null`.
  - name (String.t): A globally unique name assigned by Storage Transfer Service when the job is created. This field should be left empty in requests to create a new transfer job; otherwise, the requests result in an &#x60;INVALID_ARGUMENT&#x60; error. Defaults to: `null`.
  - projectId (String.t): The ID of the Google Cloud Platform Project that owns the job. Defaults to: `null`.
  - schedule (Schedule): Schedule specification. Defaults to: `null`.
  - status (String.t): Status of the job. This value MUST be specified for &#x60;CreateTransferJobRequests&#x60;.  NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from &#x60;ENABLED&#x60; to &#x60;DISABLED&#x60;, and an operation spawned by the transfer is running, the status change would not affect the current operation. Defaults to: `null`.
    - Enum - one of [STATUS_UNSPECIFIED, ENABLED, DISABLED, DELETED]
  - transferSpec (TransferSpec): Transfer specification. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => DateTime.t(),
          :deletionTime => DateTime.t(),
          :description => any(),
          :lastModificationTime => DateTime.t(),
          :name => any(),
          :projectId => any(),
          :schedule => GoogleApi.StorageTransfer.V1.Model.Schedule.t(),
          :status => any(),
          :transferSpec => GoogleApi.StorageTransfer.V1.Model.TransferSpec.t()
        }

  field(:creationTime, as: DateTime)
  field(:deletionTime, as: DateTime)
  field(:description)
  field(:lastModificationTime, as: DateTime)
  field(:name)
  field(:projectId)
  field(:schedule, as: GoogleApi.StorageTransfer.V1.Model.Schedule)
  field(:status)
  field(:transferSpec, as: GoogleApi.StorageTransfer.V1.Model.TransferSpec)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.TransferJob do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.TransferJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.TransferJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
