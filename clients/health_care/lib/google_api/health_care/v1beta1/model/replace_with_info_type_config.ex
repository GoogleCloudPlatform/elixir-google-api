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

defmodule GoogleApi.HealthCare.V1beta1.Model.ReplaceWithInfoTypeConfig do
  @moduledoc """
  When using the INSPECT_AND_TRANSFORM action, each match is replaced with the name of the info_type. For example, "My name is Jane" becomes "My name is [PERSON_NAME]." The TRANSFORM action is equivalent to redacting.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ReplaceWithInfoTypeConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ReplaceWithInfoTypeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ReplaceWithInfoTypeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
