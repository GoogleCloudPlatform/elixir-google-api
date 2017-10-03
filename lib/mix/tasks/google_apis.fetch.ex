# Copyright 2017 Google Inc.
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

defmodule Mix.Tasks.GoogleApis.Fetch do
  use Mix.Task

  @shortdoc "Create GoogleApi clients"

  def run([only]) do
    only
    |> GoogleApis.ApiConfig.load()
    |> Enum.each(&GoogleApis.fetch/1)
  end
  def run(_) do
    max_concurrency = Application.get_env(:google_apis, :max_concurrency, System.schedulers_online())

    GoogleApis.ApiConfig.load_all()
    |> Task.async_stream(&GoogleApis.fetch/1, [max_concurrency: max_concurrency, timeout: :infinity])
    |> Enum.to_list()
  end
end
