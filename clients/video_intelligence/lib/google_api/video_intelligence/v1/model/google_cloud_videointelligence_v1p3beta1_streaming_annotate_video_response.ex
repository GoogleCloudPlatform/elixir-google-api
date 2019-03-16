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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse do
  @moduledoc """
  &#x60;StreamingAnnotateVideoResponse&#x60; is the only message returned to the client by &#x60;StreamingAnnotateVideo&#x60;. A series of zero or more &#x60;StreamingAnnotateVideoResponse&#x60; messages are streamed back to the client.

  ## Attributes

  - annotationResults (GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults): Streaming annotation results. Defaults to: `null`.
  - annotationResultsUri (String.t): GCS URI that stores annotation results of one streaming session. It is a directory that can hold multiple files in JSON format. Example uri format: gs://bucket_id/object_id/cloud_project_name-session_id Defaults to: `null`.
  - error (GoogleRpcStatus): If set, returns a google.rpc.Status message that specifies the error for the operation. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationResults =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults.t(),
          :annotationResultsUri => any(),
          :error => GoogleApi.VideoIntelligence.V1.Model.GoogleRpcStatus.t()
        }

  field(
    :annotationResults,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1StreamingVideoAnnotationResults
  )

  field(:annotationResultsUri)
  field(:error, as: GoogleApi.VideoIntelligence.V1.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1StreamingAnnotateVideoResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
