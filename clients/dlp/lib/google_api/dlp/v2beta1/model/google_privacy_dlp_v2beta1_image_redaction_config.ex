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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1ImageRedactionConfig do
  @moduledoc """
  Configuration for determing how redaction of images should occur.

  ## Attributes

  - infoType (GooglePrivacyDlpV2beta1InfoType): Only one per info_type should be provided per request. If not specified, and redact_all_text is false, the DLP API will redact all text that it matches against all info_types that are found, but not specified in another ImageRedactionConfig. Defaults to: `null`.
  - redactAllText (Boolean): If true, all text found in the image, regardless whether it matches an info_type, is redacted. Defaults to: `null`.
  - redactionColor (GooglePrivacyDlpV2beta1Color): The color to use when redacting content from an image. If not specified, the default is black. Defaults to: `null`.
  """

  defstruct [
    :"infoType",
    :"redactAllText",
    :"redactionColor"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1ImageRedactionConfig do
  import GoogleApi.DLP.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"infoType", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1InfoType, options)
    |> deserialize(:"redactionColor", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1Color, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1ImageRedactionConfig do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

