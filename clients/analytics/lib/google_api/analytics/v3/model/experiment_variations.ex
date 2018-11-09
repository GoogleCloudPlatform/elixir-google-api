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

defmodule GoogleApi.Analytics.V3.Model.ExperimentVariations do
  @moduledoc """


  ## Attributes

  - name (String.t): The name of the variation. This field is required when creating an experiment. This field may not be changed for an experiment whose status is ENDED. Defaults to: `null`.
  - status (String.t): Status of the variation. Possible values: \&quot;ACTIVE\&quot;, \&quot;INACTIVE\&quot;. INACTIVE variations are not served. This field may not be changed for an experiment whose status is ENDED. Defaults to: `null`.
  - url (String.t): The URL of the variation. This field may not be changed for an experiment whose status is RUNNING or ENDED. Defaults to: `null`.
  - weight (float()): Weight that this variation should receive. Only present if the experiment is running. This field is read-only. Defaults to: `null`.
  - won (boolean()): True if the experiment has ended and this variation performed (statistically) significantly better than the original. This field is read-only. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => any(),
          :status => any(),
          :url => any(),
          :weight => any(),
          :won => any()
        }

  field(:name)
  field(:status)
  field(:url)
  field(:weight)
  field(:won)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.ExperimentVariations do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.ExperimentVariations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.ExperimentVariations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
