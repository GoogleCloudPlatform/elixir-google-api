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

defmodule GoogleApi.CloudRun.V1alpha1.Model.TCPSocketAction do
  @moduledoc """
  TCPSocketAction describes an action based on opening a socket

  ## Attributes

  *   `host` (*type:* `String.t`, *default:* `nil`) - Optional: Host name to connect to, defaults to the pod IP. +optional
  *   `port` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.IntOrString.t`, *default:* `nil`) - Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => String.t(),
          :port => GoogleApi.CloudRun.V1alpha1.Model.IntOrString.t()
        }

  field(:host)
  field(:port, as: GoogleApi.CloudRun.V1alpha1.Model.IntOrString)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.TCPSocketAction do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.TCPSocketAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.TCPSocketAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
