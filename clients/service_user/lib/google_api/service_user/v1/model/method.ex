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

defmodule GoogleApi.ServiceUser.V1.Model.Method do
  @moduledoc """
  Method represents a method of an API interface.

  ## Attributes

  - name (String.t): The simple name of this method. Defaults to `nil`.
  - options (list(GoogleApi.ServiceUser.V1.Model.Option.t)): Any metadata attached to the method. Defaults to `nil`.
  - requestStreaming (boolean()): If true, the request is streamed. Defaults to `nil`.
  - requestTypeUrl (String.t): A URL of the input message type. Defaults to `nil`.
  - responseStreaming (boolean()): If true, the response is streamed. Defaults to `nil`.
  - responseTypeUrl (String.t): The URL of the output message type. Defaults to `nil`.
  - syntax (String.t): The source syntax of this method. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :options => list(GoogleApi.ServiceUser.V1.Model.Option.t()),
          :requestStreaming => boolean(),
          :requestTypeUrl => String.t(),
          :responseStreaming => boolean(),
          :responseTypeUrl => String.t(),
          :syntax => String.t()
        }

  field(:name)
  field(:options, as: GoogleApi.ServiceUser.V1.Model.Option, type: :list)
  field(:requestStreaming)
  field(:requestTypeUrl)
  field(:responseStreaming)
  field(:responseTypeUrl)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Method do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.Method.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Method do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
