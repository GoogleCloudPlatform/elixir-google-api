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

defmodule GoogleApi.AppEngine.V1.Model.EndpointsApiService do
  @moduledoc """
  Cloud Endpoints (https://cloud.google.com/endpoints) configuration. The Endpoints API Service provides tooling for serving Open API and gRPC endpoints via an NGINX proxy.The fields here refer to the name and configuration id of a \&quot;service\&quot; resource in the Service Management API (https://cloud.google.com/service-management/overview).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"configId",
    :"name"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.EndpointsApiService do
  def decode(value, _options) do
    value
  end
end

