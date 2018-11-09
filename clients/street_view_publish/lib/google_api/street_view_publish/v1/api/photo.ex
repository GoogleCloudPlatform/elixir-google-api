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

defmodule GoogleApi.StreetViewPublish.V1.Api.Photo do
  @moduledoc """
  API calls for all endpoints tagged `Photo`.
  """

  alias GoogleApi.StreetViewPublish.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  After the client finishes uploading the photo with the returned UploadRef, CreatePhoto publishes the uploaded Photo to Street View on Google Maps.  Currently, the only way to set heading, pitch, and roll in CreatePhoto is through the [Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata) in the photo bytes. The &#x60;pose.heading&#x60;, &#x60;pose.pitch&#x60;, &#x60;pose.roll&#x60;, &#x60;pose.altitude&#x60;, and &#x60;pose.level&#x60; fields in Pose are ignored for CreatePhoto.  This method returns the following error codes:  * google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if the uploaded photo is not a 360 photo. * google.rpc.Code.NOT_FOUND if the upload reference does not exist. * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the storage limit.

  ## Parameters

  - connection (GoogleApi.StreetViewPublish.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :body (Photo): 

  ## Returns

  {:ok, %GoogleApi.StreetViewPublish.V1.Model.Photo{}} on success
  {:error, info} on failure
  """
  @spec streetviewpublish_photo_create(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Photo.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/photo")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Photo{}])
  end

  @doc """
  Deletes a Photo and its metadata.  This method returns the following error codes:  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo. * google.rpc.Code.NOT_FOUND if the photo ID does not exist.

  ## Parameters

  - connection (GoogleApi.StreetViewPublish.V1.Connection): Connection to server
  - photo_id (String.t): Required. ID of the Photo.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.

  ## Returns

  {:ok, %GoogleApi.StreetViewPublish.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec streetviewpublish_photo_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_delete(connection, photo_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/photo/{photoId}", %{
        "photoId" => URI.encode_www_form(photo_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Empty{}])
  end

  @doc """
  Gets the metadata of the specified Photo.  This method returns the following error codes:  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested Photo. * google.rpc.Code.NOT_FOUND if the requested Photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.

  ## Parameters

  - connection (GoogleApi.StreetViewPublish.V1.Connection): Connection to server
  - photo_id (String.t): Required. ID of the Photo.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :languageCode (String.t): The BCP-47 language code, such as \&quot;en-US\&quot; or \&quot;sr-Latn\&quot;. For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. If language_code is unspecified, the user&#39;s language preference for Google services will be used.
    - :view (String.t): Specifies if a download URL for the photo bytes should be returned in the Photo response.

  ## Returns

  {:ok, %GoogleApi.StreetViewPublish.V1.Model.Photo{}} on success
  {:error, info} on failure
  """
  @spec streetviewpublish_photo_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Photo.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_get(connection, photo_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :languageCode => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/photo/{photoId}", %{
        "photoId" => URI.encode_www_form(photo_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Photo{}])
  end

  @doc """
  Creates an upload session to start uploading photo bytes. The upload URL of the returned UploadRef is used to upload the bytes for the Photo.  In addition to the photo requirements shown in https://support.google.com/maps/answer/7012050?hl&#x3D;en&amp;ref_topic&#x3D;6275604, the photo must also meet the following requirements:  * Photo Sphere XMP metadata must be included in the photo medadata. See https://developers.google.com/streetview/spherical-metadata for the required fields. * The pixel size of the photo must meet the size requirements listed in https://support.google.com/maps/answer/7012050?hl&#x3D;en&amp;ref_topic&#x3D;6275604, and the photo must be a full 360 horizontally.  After the upload is complete, the UploadRef is used with CreatePhoto to create the Photo object entry.

  ## Parameters

  - connection (GoogleApi.StreetViewPublish.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :body (Empty): 

  ## Returns

  {:ok, %GoogleApi.StreetViewPublish.V1.Model.UploadRef{}} on success
  {:error, info} on failure
  """
  @spec streetviewpublish_photo_start_upload(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.UploadRef.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_start_upload(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/photo:startUpload")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.UploadRef{}])
  end

  @doc """
  Updates the metadata of a Photo, such as pose, place association, connections, etc. Changing the pixels of a photo is not supported.  Only the fields specified in the updateMask field are used. If &#x60;updateMask&#x60; is not present, the update applies to all fields.  &lt;aside class&#x3D;\&quot;note\&quot;&gt;&lt;b&gt;Note:&lt;/b&gt; To update Pose.altitude, Pose.latLngPair has to be filled as well. Otherwise, the request will fail.&lt;/aside&gt;  This method returns the following error codes:  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo. * google.rpc.Code.INVALID_ARGUMENT if the request is malformed. * google.rpc.Code.NOT_FOUND if the requested photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.

  ## Parameters

  - connection (GoogleApi.StreetViewPublish.V1.Connection): Connection to server
  - id (String.t): Required. A unique identifier for a photo.
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :updateMask (String.t): Mask that identifies fields on the photo metadata to update. If not present, the old Photo metadata will be entirely replaced with the new Photo metadata in this request. The update fails if invalid fields are specified. Multiple fields can be specified in a comma-delimited list.  The following fields are valid:  * &#x60;pose.heading&#x60; * &#x60;pose.latLngPair&#x60; * &#x60;pose.pitch&#x60; * &#x60;pose.roll&#x60; * &#x60;pose.level&#x60; * &#x60;pose.altitude&#x60; * &#x60;connections&#x60; * &#x60;places&#x60;   &lt;aside class&#x3D;\&quot;note\&quot;&gt;&lt;b&gt;Note:&lt;/b&gt; Repeated fields in updateMask mean the entire set of repeated values will be replaced with the new contents. For example, if updateMask contains &#x60;connections&#x60; and &#x60;UpdatePhotoRequest.photo.connections&#x60; is empty, all connections will be removed.&lt;/aside&gt;
    - :body (Photo): 

  ## Returns

  {:ok, %GoogleApi.StreetViewPublish.V1.Model.Photo{}} on success
  {:error, info} on failure
  """
  @spec streetviewpublish_photo_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Photo.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_update(connection, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1/photo/{id}", %{
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Photo{}])
  end
end
