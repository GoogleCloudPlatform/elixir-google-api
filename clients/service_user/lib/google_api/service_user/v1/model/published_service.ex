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

defmodule GoogleApi.ServiceUser.V1.Model.PublishedService do
  @moduledoc """
  The published version of a Service that is managed by Google Service Management.

  ## Attributes

  - name (String.t): The resource name of the service.  A valid name would be: - services/serviceuser.googleapis.com Defaults to: `null`.
  - service (Service): The service&#39;s published configuration. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => any(),
          :service => GoogleApi.ServiceUser.V1.Model.Service.t()
        }

  field(:name)
  field(:service, as: GoogleApi.ServiceUser.V1.Model.Service)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.PublishedService do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.PublishedService.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.PublishedService do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
