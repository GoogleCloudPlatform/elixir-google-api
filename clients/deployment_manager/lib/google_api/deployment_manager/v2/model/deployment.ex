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

defmodule GoogleApi.DeploymentManager.V2.Model.Deployment do
  @moduledoc """


  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional user-provided description of the deployment.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Provides a fingerprint to use in requests to modify a deployment, such as update(), stop(), and cancelPreview() requests. A fingerprint is a randomly generated value that must be provided with update(), stop(), and cancelPreview() requests to perform optimistic locking. This ensures optimistic concurrency so that only one request happens at a time.

      The fingerprint is initially generated by Deployment Manager and changes after every request to modify data. To get the latest fingerprint value, perform a get() request to a deployment.
  *   `id` (*type:* `String.t`, *default:* `nil`) - 
  *   `insertTime` (*type:* `String.t`, *default:* `nil`) - Output only. Creation timestamp in RFC3339 text format.
  *   `labels` (*type:* `list(GoogleApi.DeploymentManager.V2.Model.DeploymentLabelEntry.t)`, *default:* `nil`) - Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: [a-z]([-a-z0-9]*[a-z0-9])? Label values must be between 0 and 63 characters long and must conform to the regular expression ([a-z]([-a-z0-9]*[a-z0-9])?)?
  *   `manifest` (*type:* `String.t`, *default:* `nil`) - Output only. URL of the manifest representing the last manifest that was successfully deployed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `operation` (*type:* `GoogleApi.DeploymentManager.V2.Model.Operation.t`, *default:* `nil`) - Output only. The Operation that most recently ran, or is currently running, on this deployment.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Output only. Server defined URL for the resource.
  *   `target` (*type:* `GoogleApi.DeploymentManager.V2.Model.TargetConfiguration.t`, *default:* `nil`) - [Input Only] The parameters that define your deployment, including the deployment configuration and relevant templates.
  *   `update` (*type:* `GoogleApi.DeploymentManager.V2.Model.DeploymentUpdate.t`, *default:* `nil`) - Output only. If Deployment Manager is currently updating or previewing an update to this deployment, the updated configuration appears here.
  *   `updateTime` (*type:* `String.t`, *default:* `nil`) - Output only. Update timestamp in RFC3339 text format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :fingerprint => String.t(),
          :id => String.t(),
          :insertTime => String.t(),
          :labels => list(GoogleApi.DeploymentManager.V2.Model.DeploymentLabelEntry.t()),
          :manifest => String.t(),
          :name => String.t(),
          :operation => GoogleApi.DeploymentManager.V2.Model.Operation.t(),
          :selfLink => String.t(),
          :target => GoogleApi.DeploymentManager.V2.Model.TargetConfiguration.t(),
          :update => GoogleApi.DeploymentManager.V2.Model.DeploymentUpdate.t(),
          :updateTime => String.t()
        }

  field(:description)
  field(:fingerprint)
  field(:id)
  field(:insertTime)
  field(:labels, as: GoogleApi.DeploymentManager.V2.Model.DeploymentLabelEntry, type: :list)
  field(:manifest)
  field(:name)
  field(:operation, as: GoogleApi.DeploymentManager.V2.Model.Operation)
  field(:selfLink)
  field(:target, as: GoogleApi.DeploymentManager.V2.Model.TargetConfiguration)
  field(:update, as: GoogleApi.DeploymentManager.V2.Model.DeploymentUpdate)
  field(:updateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DeploymentManager.V2.Model.Deployment do
  def decode(value, options) do
    GoogleApi.DeploymentManager.V2.Model.Deployment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeploymentManager.V2.Model.Deployment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
