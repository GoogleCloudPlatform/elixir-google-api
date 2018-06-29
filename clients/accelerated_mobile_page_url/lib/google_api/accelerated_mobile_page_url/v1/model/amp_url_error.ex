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

defmodule GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrlError do
  @moduledoc """
  AMP URL Error resource for a requested URL that couldn&#39;t be found.

  ## Attributes

  - errorCode (String.t): The error code of an API call. Defaults to: `null`.
    - Enum - one of [ERROR_CODE_UNSPECIFIED, INPUT_URL_NOT_FOUND, NO_AMP_URL, APPLICATION_ERROR, URL_IS_VALID_AMP, URL_IS_INVALID_AMP]
  - errorMessage (String.t): An optional descriptive error message. Defaults to: `null`.
  - originalUrl (String.t): The original non-AMP URL. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorCode => any(),
          :errorMessage => any(),
          :originalUrl => any()
        }

  field(:errorCode)
  field(:errorMessage)
  field(:originalUrl)
end

defimpl Poison.Decoder, for: GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrlError do
  def decode(value, options) do
    GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrlError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AcceleratedMobilePageUrl.V1.Model.AmpUrlError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
