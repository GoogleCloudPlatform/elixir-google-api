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

defmodule GoogleApi.Dataproc.V1.Model.WorkflowTemplate do
  @moduledoc """
  A Dataproc workflow template resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time template was created.
  *   `id` (*type:* `String.t`, *default:* `nil`) - 
  *   `jobs` (*type:* `list(GoogleApi.Dataproc.V1.Model.OrderedJob.t)`, *default:* `nil`) - Required. The Directed Acyclic Graph of Jobs to submit.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance.Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt).No more than 32 labels can be associated with a template.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names.
      For projects.regions.workflowTemplates, the resource name of the  template has the following format:  projects/{project_id}/regions/{region}/workflowTemplates/{template_id}
      For projects.locations.workflowTemplates, the resource name of the  template has the following format:  projects/{project_id}/locations/{location}/workflowTemplates/{template_id}
  *   `parameters` (*type:* `list(GoogleApi.Dataproc.V1.Model.TemplateParameter.t)`, *default:* `nil`) - Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated.
  *   `placement` (*type:* `GoogleApi.Dataproc.V1.Model.WorkflowTemplatePlacement.t`, *default:* `nil`) - Required. WorkflowTemplate scheduling information.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time template was last updated.
  *   `version` (*type:* `integer()`, *default:* `nil`) - Optional. Used to perform a consistent read-modify-write.This field should be left blank for a CreateWorkflowTemplate request. It is required for an UpdateWorkflowTemplate request, and must match the current server version. A typical update template flow would fetch the current template with a GetWorkflowTemplate request, which will return the current template with the version field filled in with the current server version. The user updates other fields in the template, then returns it as part of the UpdateWorkflowTemplate request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :id => String.t(),
          :jobs => list(GoogleApi.Dataproc.V1.Model.OrderedJob.t()),
          :labels => map(),
          :name => String.t(),
          :parameters => list(GoogleApi.Dataproc.V1.Model.TemplateParameter.t()),
          :placement => GoogleApi.Dataproc.V1.Model.WorkflowTemplatePlacement.t(),
          :updateTime => DateTime.t(),
          :version => integer()
        }

  field(:createTime, as: DateTime)
  field(:id)
  field(:jobs, as: GoogleApi.Dataproc.V1.Model.OrderedJob, type: :list)
  field(:labels, type: :map)
  field(:name)
  field(:parameters, as: GoogleApi.Dataproc.V1.Model.TemplateParameter, type: :list)
  field(:placement, as: GoogleApi.Dataproc.V1.Model.WorkflowTemplatePlacement)
  field(:updateTime, as: DateTime)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.WorkflowTemplate do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.WorkflowTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.WorkflowTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
