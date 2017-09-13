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

defmodule GoogleApi.ServiceUser.V1.Model.MonitoredResourceDescriptor do
  @moduledoc """
  An object that describes the schema of a MonitoredResource object using a type name and a set of labels.  For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of &#x60;\&quot;gce_instance\&quot;&#x60; and specifies the use of the labels &#x60;\&quot;instance_id\&quot;&#x60; and &#x60;\&quot;zone\&quot;&#x60; to identify particular VM instances.  Different APIs can support different monitored resource types. APIs generally provide a &#x60;list&#x60; method that returns the monitored resource descriptors used by the API.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"displayName",
    :"labels",
    :"name",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.MonitoredResourceDescriptor do
  import GoogleApi.ServiceUser.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"labels", :list, GoogleApi.ServiceUser.V1.Model.LabelDescriptor, options)
  end
end

