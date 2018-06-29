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

defmodule GoogleApi.Dataflow.V1b3.Model.WorkerMessageCode do
  @moduledoc """
  A message code is used to report status and error messages to the service. The message codes are intended to be machine readable. The service will take care of translating these into user understandable messages if necessary.  Example use cases:   1. Worker processes reporting successful startup.   2. Worker processes reporting specific errors (e.g. package staging      failure).

  ## Attributes

  - parameters (%{optional(String.t) &#x3D;&gt; String.t}): Parameters contains specific information about the code.  This is a struct to allow parameters of different types.  Examples:  1. For a \&quot;HARNESS_STARTED\&quot; message parameters might provide the name     of the worker and additional data like timing information.  2. For a \&quot;GCS_DOWNLOAD_ERROR\&quot; parameters might contain fields listing     the GCS objects being downloaded and fields containing errors.  In general complex data structures should be avoided. If a worker needs to send a specific and complicated data structure then please consider defining a new proto and adding it to the data oneof in WorkerMessageResponse.  Conventions:  Parameters should only be used for information that isn&#39;t typically passed  as a label.  hostname and other worker identifiers should almost always be passed  as labels since they will be included on most messages. Defaults to: `null`.
  - code (String.t): The code is a string intended for consumption by a machine that identifies the type of message being sent. Examples:  1. \&quot;HARNESS_STARTED\&quot; might be used to indicate the worker harness has      started.  2. \&quot;GCS_DOWNLOAD_ERROR\&quot; might be used to indicate an error downloading     a GCS file as part of the boot process of one of the worker containers.  This is a string and not an enum to make it easy to add new codes without waiting for an API change. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => map(),
          :code => any()
        }

  field(:parameters, type: :map)
  field(:code)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerMessageCode do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkerMessageCode.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerMessageCode do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
