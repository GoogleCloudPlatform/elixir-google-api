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

defmodule GoogleApi.StorageTransfer.V1.Model.UpdateTransferJobRequest do
  @moduledoc """
  Request passed to UpdateTransferJob.

  ## Attributes

  - projectId (String.t): Required. The ID of the Google Cloud Platform Console project that owns the
  job. Defaults to `nil`.
  - transferJob (GoogleApi.StorageTransfer.V1.Model.TransferJob.t): Required. The job to update. `transferJob` is expected to specify only
  three fields: `description`, `transferSpec`, and `status`.  An
  UpdateTransferJobRequest that specifies other fields will be rejected with
  an error `INVALID_ARGUMENT`. Defaults to `nil`.
  - updateTransferJobFieldMask (String.t): The field mask of the fields in `transferJob` that are to be updated in
  this request.  Fields in `transferJob` that can be updated are:
  `description`, `transferSpec`, and `status`.  To update the `transferSpec`
  of the job, a complete transfer specification has to be provided. An
  incomplete specification which misses any required fields will be rejected
  with the error `INVALID_ARGUMENT`. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :projectId => String.t(),
          :transferJob => GoogleApi.StorageTransfer.V1.Model.TransferJob.t(),
          :updateTransferJobFieldMask => String.t()
        }

  field(:projectId)
  field(:transferJob, as: GoogleApi.StorageTransfer.V1.Model.TransferJob)
  field(:updateTransferJobFieldMask)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.UpdateTransferJobRequest do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.UpdateTransferJobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.UpdateTransferJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
