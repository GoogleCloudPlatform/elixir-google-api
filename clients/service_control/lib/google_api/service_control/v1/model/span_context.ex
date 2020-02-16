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

defmodule GoogleApi.ServiceControl.V1.Model.SpanContext do
  @moduledoc """
  The context of a span, attached to
  Exemplars
  in Distribution values during aggregation.

  It contains the name of a span with format:

      projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]

  ## Attributes

  *   `spanName` (*type:* `String.t`, *default:* `nil`) - The resource name of the span. The format is:

          projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID]

      `[TRACE_ID]` is a unique identifier for a trace within a project;
      it is a 32-character hexadecimal encoding of a 16-byte array.

      `[SPAN_ID]` is a unique identifier for a span within a trace; it
      is a 16-character hexadecimal encoding of an 8-byte array.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spanName => String.t()
        }

  field(:spanName)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.SpanContext do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.SpanContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.SpanContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
