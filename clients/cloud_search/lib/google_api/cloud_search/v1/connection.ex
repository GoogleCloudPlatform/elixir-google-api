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

defmodule GoogleApi.CloudSearch.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.CloudSearch.V1.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search",

      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search.debug",

      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search.indexing",

      # Search your organization's data in the Cloud Search index
      "https://www.googleapis.com/auth/cloud_search.query",

      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search.settings",

      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search.settings.indexing",

      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search.settings.query",

      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search.stats",

      # Index and serve your organization's data with Cloud Search
      "https://www.googleapis.com/auth/cloud_search.stats.indexing"
    ],
    otp_app: :google_api_cloud_search,
    base_url: "https://cloudsearch.googleapis.com/"
end
