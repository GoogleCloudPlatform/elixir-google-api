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

defmodule GoogleApi.IAP.V1.Model.Resource do
  @moduledoc """


  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - The service defined labels of the resource on which the conditions will be
      evaluated. The semantics - including the key names - are vague to IAM.
      If the effective condition has a reference to a `resource.labels[foo]`
      construct, IAM consults with this map to retrieve the values associated
      with `foo` key for Conditions evaluation. If the provided key is not found
      in the labels map, the condition would evaluate to false.

      This field is in limited use. If your intended use case is not expected
      to express resource.labels attribute in IAM Conditions, leave this field
      empty. Before planning on using this attribute please:
      * Read go/iam-conditions-labels-comm and ensure your service can meet the
        data availability and management requirements.
      * Talk to iam-conditions-eng@ about your use case.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource on which conditions will be evaluated.
      Must use the Relative Resource Name of the resource, which is the URI
      path of the resource without the leading "/". Examples are
      "projects/_/buckets/[BUCKET-ID]" for storage buckets or
      "projects/[PROJECT-ID]/global/firewalls/[FIREWALL-ID]" for a firewall.

      This field is required for evaluating conditions with rules on resource
      names. For a `list` permission check, the resource.name value must be set
      to the parent resource. If the parent resource is a project, this field
      should be left unset.
  *   `service` (*type:* `String.t`, *default:* `nil`) - The name of the service this resource belongs to. It is configured using
      the official_service_name of the Service as defined in service
      configurations under //configs/cloud/resourcetypes.
      For example, the official_service_name of cloud resource manager service
      is set as 'cloudresourcemanager.googleapis.com' according to
      //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml
  *   `type` (*type:* `String.t`, *default:* `nil`) - The public resource type name of the resource on which conditions will be
      evaluated. It is configured using the official_name of the ResourceType as
      defined in service configurations under //configs/cloud/resourcetypes.
      For example, the official_name for GCP projects is set as
      'cloudresourcemanager.googleapis.com/Project' according to
      //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml
      For details see go/iam-conditions-integration-guide.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map(),
          :name => String.t(),
          :service => String.t(),
          :type => String.t()
        }

  field(:labels, type: :map)
  field(:name)
  field(:service)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.Resource do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.Resource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.Resource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
