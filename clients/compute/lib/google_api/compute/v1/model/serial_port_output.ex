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

defmodule GoogleApi.Compute.V1.Model.SerialPortOutput do
  @moduledoc """
  An instance's serial console output.

  ## Attributes

  *   `contents` (*type:* `String.t`, *default:* `nil`) - [Output Only] The contents of the console output.
  *   `kind` (*type:* `String.t`, *default:* `compute#serialPortOutput`) - [Output Only] Type of the resource. Always compute#serialPortOutput for serial port output.
  *   `next` (*type:* `String.t`, *default:* `nil`) - [Output Only] The position of the next byte of content, regardless of whether the content exists, following the output returned in the `contents` property. Use this value in the next request as the start parameter.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource.
  *   `start` (*type:* `String.t`, *default:* `nil`) - The starting byte position of the output that was returned. This should match the start parameter sent with the request. If the serial console output exceeds the size of the buffer (1 MB), older output is overwritten by newer content. The output start value will indicate the byte position of the output that was returned, which might be different than the `start` value that was specified in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contents => String.t(),
          :kind => String.t(),
          :next => String.t(),
          :selfLink => String.t(),
          :start => String.t()
        }

  field(:contents)
  field(:kind)
  field(:next)
  field(:selfLink)
  field(:start)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SerialPortOutput do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SerialPortOutput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SerialPortOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
