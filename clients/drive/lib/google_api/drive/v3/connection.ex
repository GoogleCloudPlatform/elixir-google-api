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

defmodule GoogleApi.Drive.V3.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Drive.V3.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # See, edit, create, and delete all of your Google Drive files
      "https://www.googleapis.com/auth/drive",

      # View and manage its own configuration data in your Google Drive
      "https://www.googleapis.com/auth/drive.appdata",

      # View and manage Google Drive files and folders that you have opened or created with this app
      "https://www.googleapis.com/auth/drive.file",

      # View and manage metadata of files in your Google Drive
      "https://www.googleapis.com/auth/drive.metadata",

      # View metadata for files in your Google Drive
      "https://www.googleapis.com/auth/drive.metadata.readonly",

      # View the photos, videos and albums in your Google Photos
      "https://www.googleapis.com/auth/drive.photos.readonly",

      # See and download all your Google Drive files
      "https://www.googleapis.com/auth/drive.readonly",

      # Modify your Google Apps Script scripts' behavior
      "https://www.googleapis.com/auth/drive.scripts"
    ],
    otp_app: :google_api_drive,
    base_url: "https://www.googleapis.com/"
end
