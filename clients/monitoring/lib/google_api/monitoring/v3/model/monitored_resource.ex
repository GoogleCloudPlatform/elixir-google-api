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

defmodule GoogleApi.Monitoring.V3.Model.MonitoredResource do
  @moduledoc """
  An object representing a resource that can be used for monitoring, logging, billing, or other purposes. Examples include virtual machine instances, databases, and storage devices such as disks. The type field identifies a MonitoredResourceDescriptor object that describes the resource's schema. Information in the labels field identifies the actual resource and its attributes according to the schema. For example, a particular Compute Engine VM instance could be represented by the following object, because the MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and "zone":
  { "type": "gce_instance",
    "labels": { "instance_id": "12345678901234",
                "zone": "us-central1-a" }}


  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - Required. Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels "project_id", "instance_id", and "zone".
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The monitored resource type. This field must match the type field of a MonitoredResourceDescriptor object. For example, the type of a Compute Engine VM instance is gce_instance. For a list of types, see Monitoring resource types and Logging resource types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map(),
          :type => String.t()
        }

  field(:labels, type: :map)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.MonitoredResource do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.MonitoredResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.MonitoredResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
