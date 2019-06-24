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

defmodule GoogleApi.DeploymentManager.V2.Model.LogConfigCloudAuditOptions do
  @moduledoc """
  Write a Cloud Audit log

  ## Attributes

  *   `authorizationLoggingOptions` (*type:* `GoogleApi.DeploymentManager.V2.Model.AuthorizationLoggingOptions.t`, *default:* `nil`) - Information used by the Cloud Audit Logging pipeline.
  *   `logName` (*type:* `String.t`, *default:* `nil`) - The log_name to populate in the Cloud Audit Record.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizationLoggingOptions =>
            GoogleApi.DeploymentManager.V2.Model.AuthorizationLoggingOptions.t(),
          :logName => String.t()
        }

  field(
    :authorizationLoggingOptions,
    as: GoogleApi.DeploymentManager.V2.Model.AuthorizationLoggingOptions
  )

  field(:logName)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.LogConfigCloudAuditOptions do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.LogConfigCloudAuditOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.LogConfigCloudAuditOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
