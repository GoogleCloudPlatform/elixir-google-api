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

defmodule GoogleApi.YouTubeReporting.V1.Model.GdataMedia do
  @moduledoc """
  gdata

  ## Attributes

  *   `algorithm` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `bigstoreObjectRef` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `blobRef` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `blobstore2Info` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataBlobstore2Info.t`, *default:* `nil`) - gdata
  *   `compositeMedia` (*type:* `list(GoogleApi.YouTubeReporting.V1.Model.GdataCompositeMedia.t)`, *default:* `nil`) - gdata
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `contentTypeInfo` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataContentTypeInfo.t`, *default:* `nil`) - gdata
  *   `cosmoBinaryReference` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `crc32cHash` (*type:* `integer()`, *default:* `nil`) - gdata
  *   `diffChecksumsResponse` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataDiffChecksumsResponse.t`, *default:* `nil`) - gdata
  *   `diffDownloadResponse` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataDiffDownloadResponse.t`, *default:* `nil`) - gdata
  *   `diffUploadRequest` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadRequest.t`, *default:* `nil`) - gdata
  *   `diffUploadResponse` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadResponse.t`, *default:* `nil`) - gdata
  *   `diffVersionResponse` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataDiffVersionResponse.t`, *default:* `nil`) - gdata
  *   `downloadParameters` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataDownloadParameters.t`, *default:* `nil`) - gdata
  *   `filename` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `hash` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `hashVerified` (*type:* `boolean()`, *default:* `nil`) - gdata
  *   `inline` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `isPotentialRetry` (*type:* `boolean()`, *default:* `nil`) - gdata
  *   `length` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `md5Hash` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `mediaId` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `objectId` (*type:* `GoogleApi.YouTubeReporting.V1.Model.GdataObjectId.t`, *default:* `nil`) - gdata
  *   `path` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `referenceType` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `sha1Hash` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `sha256Hash` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `timestamp` (*type:* `String.t`, *default:* `nil`) - gdata
  *   `token` (*type:* `String.t`, *default:* `nil`) - gdata
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => String.t(),
          :bigstoreObjectRef => String.t(),
          :blobRef => String.t(),
          :blobstore2Info => GoogleApi.YouTubeReporting.V1.Model.GdataBlobstore2Info.t(),
          :compositeMedia => list(GoogleApi.YouTubeReporting.V1.Model.GdataCompositeMedia.t()),
          :contentType => String.t(),
          :contentTypeInfo => GoogleApi.YouTubeReporting.V1.Model.GdataContentTypeInfo.t(),
          :cosmoBinaryReference => String.t(),
          :crc32cHash => integer(),
          :diffChecksumsResponse =>
            GoogleApi.YouTubeReporting.V1.Model.GdataDiffChecksumsResponse.t(),
          :diffDownloadResponse =>
            GoogleApi.YouTubeReporting.V1.Model.GdataDiffDownloadResponse.t(),
          :diffUploadRequest => GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadRequest.t(),
          :diffUploadResponse => GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadResponse.t(),
          :diffVersionResponse =>
            GoogleApi.YouTubeReporting.V1.Model.GdataDiffVersionResponse.t(),
          :downloadParameters => GoogleApi.YouTubeReporting.V1.Model.GdataDownloadParameters.t(),
          :filename => String.t(),
          :hash => String.t(),
          :hashVerified => boolean(),
          :inline => String.t(),
          :isPotentialRetry => boolean(),
          :length => String.t(),
          :md5Hash => String.t(),
          :mediaId => String.t(),
          :objectId => GoogleApi.YouTubeReporting.V1.Model.GdataObjectId.t(),
          :path => String.t(),
          :referenceType => String.t(),
          :sha1Hash => String.t(),
          :sha256Hash => String.t(),
          :timestamp => String.t(),
          :token => String.t()
        }

  field(:algorithm)
  field(:bigstoreObjectRef)
  field(:blobRef)
  field(:blobstore2Info, as: GoogleApi.YouTubeReporting.V1.Model.GdataBlobstore2Info)
  field(:compositeMedia, as: GoogleApi.YouTubeReporting.V1.Model.GdataCompositeMedia, type: :list)
  field(:contentType)
  field(:contentTypeInfo, as: GoogleApi.YouTubeReporting.V1.Model.GdataContentTypeInfo)
  field(:cosmoBinaryReference)
  field(:crc32cHash)

  field(
    :diffChecksumsResponse,
    as: GoogleApi.YouTubeReporting.V1.Model.GdataDiffChecksumsResponse
  )

  field(:diffDownloadResponse, as: GoogleApi.YouTubeReporting.V1.Model.GdataDiffDownloadResponse)
  field(:diffUploadRequest, as: GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadRequest)
  field(:diffUploadResponse, as: GoogleApi.YouTubeReporting.V1.Model.GdataDiffUploadResponse)
  field(:diffVersionResponse, as: GoogleApi.YouTubeReporting.V1.Model.GdataDiffVersionResponse)
  field(:downloadParameters, as: GoogleApi.YouTubeReporting.V1.Model.GdataDownloadParameters)
  field(:filename)
  field(:hash)
  field(:hashVerified)
  field(:inline)
  field(:isPotentialRetry)
  field(:length)
  field(:md5Hash)
  field(:mediaId)
  field(:objectId, as: GoogleApi.YouTubeReporting.V1.Model.GdataObjectId)
  field(:path)
  field(:referenceType)
  field(:sha1Hash)
  field(:sha256Hash)
  field(:timestamp)
  field(:token)
end

defimpl Poison.Decoder, for: GoogleApi.YouTubeReporting.V1.Model.GdataMedia do
  def decode(value, options) do
    GoogleApi.YouTubeReporting.V1.Model.GdataMedia.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTubeReporting.V1.Model.GdataMedia do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
