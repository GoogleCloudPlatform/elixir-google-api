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

defmodule GoogleApi.Dataflow.V1b3.Model.SdkHarnessContainerImage do
  @moduledoc """
  Defines a SDK harness container for executing Dataflow pipelines.

  ## Attributes

  *   `containerImage` (*type:* `String.t`, *default:* `nil`) - A docker container image that resides in Google Container Registry.
  *   `useSingleCorePerContainer` (*type:* `boolean()`, *default:* `nil`) - If true, recommends the Dataflow service to use only one core per SDK
      container instance with this image. If false (or unset) recommends using
      more than one core per SDK container instance with this image for
      efficiency. Note that Dataflow service may choose to override this property
      if needed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerImage => String.t(),
          :useSingleCorePerContainer => boolean()
        }

  field(:containerImage)
  field(:useSingleCorePerContainer)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SdkHarnessContainerImage do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SdkHarnessContainerImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SdkHarnessContainerImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
