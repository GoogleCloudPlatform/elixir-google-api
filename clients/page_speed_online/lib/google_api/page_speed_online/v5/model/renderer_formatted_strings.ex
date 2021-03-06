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

defmodule GoogleApi.PageSpeedOnline.V5.Model.RendererFormattedStrings do
  @moduledoc """
  Message holding the formatted strings used in the renderer.

  ## Attributes

  *   `viewTreemapLabel` (*type:* `String.t`, *default:* `nil`) - Label for a button that opens the Treemap App
  *   `runtimeMobileEmulation` (*type:* `String.t`, *default:* `nil`) - Descriptive explanation for emulation setting when emulating a Nexus 5X mobile device.
  *   `dropdownSaveGist` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that saves the current report as a new GitHub Gist.
  *   `manualAuditsGroupTitle` (*type:* `String.t`, *default:* `nil`) - The heading shown above a list of audits that were not computerd in the run.
  *   `crcLongestDurationLabel` (*type:* `String.t`, *default:* `nil`) - The label for values shown in the summary of critical request chains.
  *   `runtimeSettingsUA` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that shows the User Agent that was detected on the Host machine that ran Lighthouse.
  *   `throttlingProvided` (*type:* `String.t`, *default:* `nil`) - Descriptive explanation for environment throttling that was provided by the runtime environment instead of provided by Lighthouse throttling.
  *   `toplevelWarningsMessage` (*type:* `String.t`, *default:* `nil`) - The label shown preceding important warnings that may have invalidated an entire report.
  *   `warningAuditsGroupTitle` (*type:* `String.t`, *default:* `nil`) - The heading that is shown above a list of audits that have warnings
  *   `dropdownPrintSummary` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that opens a small, summary report in a print dialog.
  *   `crcInitialNavigation` (*type:* `String.t`, *default:* `nil`) - The label for the initial request in a critical request chain.
  *   `snippetExpandButtonLabel` (*type:* `String.t`, *default:* `nil`) - The label for the button to show all lines of a snippet
  *   `runtimeSettingsDevice` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that describes the kind of device that was emulated for the Lighthouse run. Example values for row elements: 'No Emulation', 'Emulated Desktop', etc.
  *   `opportunitySavingsColumnLabel` (*type:* `String.t`, *default:* `nil`) - The heading for the estimated page load savings of opportunity audits.
  *   `snippetCollapseButtonLabel` (*type:* `String.t`, *default:* `nil`) - The label for the button to show only a few lines of a snippet
  *   `auditGroupExpandTooltip` (*type:* `String.t`, *default:* `nil`) - The tooltip text on an expandable chevron icon.
  *   `scorescaleLabel` (*type:* `String.t`, *default:* `nil`) - The label that explains the score gauges scale (0-49, 50-89, 90-100).
  *   `runtimeSettingsAxeVersion` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that shows the version of the Axe library used
  *   `thirdPartyResourcesLabel` (*type:* `String.t`, *default:* `nil`) - This label is for a filter checkbox above a table of items
  *   `runtimeUnknown` (*type:* `String.t`, *default:* `nil`) - Descriptive explanation for a runtime setting that is set to an unknown value.
  *   `runtimeSettingsCPUThrottling` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that describes the CPU throttling conditions that were used during a Lighthouse run, if any.
  *   `errorLabel` (*type:* `String.t`, *default:* `nil`) - The label shown next to an audit or metric that has had an error.
  *   `notApplicableAuditsGroupTitle` (*type:* `String.t`, *default:* `nil`) - The heading shown above a list of audits that do not apply to a page.
  *   `dropdownPrintExpanded` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that opens a full Lighthouse report in a print dialog.
  *   `passedAuditsGroupTitle` (*type:* `String.t`, *default:* `nil`) - The heading that is shown above a list of audits that are passing.
  *   `warningHeader` (*type:* `String.t`, *default:* `nil`) - The label shown above a bulleted list of warnings.
  *   `opportunityResourceColumnLabel` (*type:* `String.t`, *default:* `nil`) - The heading for the estimated page load savings opportunity of an audit.
  *   `dropdownDarkTheme` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that toggles the themeing of the report between Light(default) and Dark themes.
  *   `dropdownSaveHTML` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that saves the Lighthouse report HTML locally to the system as a '.html' file.
  *   `footerIssue` (*type:* `String.t`, *default:* `nil`) - Label for button to create an issue against the Lighthouse GitHub project.
  *   `runtimeNoEmulation` (*type:* `String.t`, *default:* `nil`) - Descriptive explanation for emulation setting when no device emulation is set.
  *   `runtimeSettingsUANetwork` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that shows the User Agent that was used to send out all network requests during the Lighthouse run.
  *   `runtimeSettingsTitle` (*type:* `String.t`, *default:* `nil`) - Title of the Runtime settings table in a Lighthouse report. Runtime settings are the environment configurations that a specific report used at auditing time.
  *   `runtimeSettingsFetchTime` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that shows the time at which a Lighthouse run was conducted; formatted as a timestamp, e.g. Jan 1, 1970 12:00 AM UTC.
  *   `runtimeSettingsBenchmark` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that shows the estimated CPU power of the machine running Lighthouse. Example row values: 532, 1492, 783.
  *   `runtimeSettingsUrl` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that shows the URL that was audited during a Lighthouse run.
  *   `showRelevantAudits` (*type:* `String.t`, *default:* `nil`) - Label preceding a radio control for filtering the list of audits. The radio choices are various performance metrics (FCP, LCP, TBT), and if chosen, the audits in the report are hidden if they are not relevant to the selected metric.
  *   `dropdownSaveJSON` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that saves the Lighthouse JSON object to the local system as a '.json' file.
  *   `dropdownCopyJSON` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that copies the Lighthouse JSON object to the system clipboard.
  *   `lsPerformanceCategoryDescription` (*type:* `String.t`, *default:* `nil`) - The disclaimer shown under performance explaining that the network can vary.
  *   `labDataTitle` (*type:* `String.t`, *default:* `nil`) - The title of the lab data performance category.
  *   `varianceDisclaimer` (*type:* `String.t`, *default:* `nil`) - The disclaimer shown below a performance metric value.
  *   `calculatorLink` (*type:* `String.t`, *default:* `nil`) - Text link pointing to the Lighthouse scoring calculator. This link immediately follows a sentence stating the performance score is calculated from the perf metrics.
  *   `runtimeSettingsChannel` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that shows in what tool Lighthouse is being run (e.g. The lighthouse CLI, Chrome DevTools, Lightrider, WebPageTest, etc).
  *   `runtimeSettingsNetworkThrottling` (*type:* `String.t`, *default:* `nil`) - Label for a row in a table that describes the network throttling conditions that were used during a Lighthouse run, if any.
  *   `runtimeDesktopEmulation` (*type:* `String.t`, *default:* `nil`) - Descriptive explanation for emulation setting when emulating a generic desktop form factor, as opposed to a mobile-device like form factor.
  *   `errorMissingAuditInfo` (*type:* `String.t`, *default:* `nil`) - The error string shown next to an erroring audit.
  *   `dropdownViewer` (*type:* `String.t`, *default:* `nil`) - Option in a dropdown menu that opens the current report in the Lighthouse Viewer Application.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :viewTreemapLabel => String.t() | nil,
          :runtimeMobileEmulation => String.t() | nil,
          :dropdownSaveGist => String.t() | nil,
          :manualAuditsGroupTitle => String.t() | nil,
          :crcLongestDurationLabel => String.t() | nil,
          :runtimeSettingsUA => String.t() | nil,
          :throttlingProvided => String.t() | nil,
          :toplevelWarningsMessage => String.t() | nil,
          :warningAuditsGroupTitle => String.t() | nil,
          :dropdownPrintSummary => String.t() | nil,
          :crcInitialNavigation => String.t() | nil,
          :snippetExpandButtonLabel => String.t() | nil,
          :runtimeSettingsDevice => String.t() | nil,
          :opportunitySavingsColumnLabel => String.t() | nil,
          :snippetCollapseButtonLabel => String.t() | nil,
          :auditGroupExpandTooltip => String.t() | nil,
          :scorescaleLabel => String.t() | nil,
          :runtimeSettingsAxeVersion => String.t() | nil,
          :thirdPartyResourcesLabel => String.t() | nil,
          :runtimeUnknown => String.t() | nil,
          :runtimeSettingsCPUThrottling => String.t() | nil,
          :errorLabel => String.t() | nil,
          :notApplicableAuditsGroupTitle => String.t() | nil,
          :dropdownPrintExpanded => String.t() | nil,
          :passedAuditsGroupTitle => String.t() | nil,
          :warningHeader => String.t() | nil,
          :opportunityResourceColumnLabel => String.t() | nil,
          :dropdownDarkTheme => String.t() | nil,
          :dropdownSaveHTML => String.t() | nil,
          :footerIssue => String.t() | nil,
          :runtimeNoEmulation => String.t() | nil,
          :runtimeSettingsUANetwork => String.t() | nil,
          :runtimeSettingsTitle => String.t() | nil,
          :runtimeSettingsFetchTime => String.t() | nil,
          :runtimeSettingsBenchmark => String.t() | nil,
          :runtimeSettingsUrl => String.t() | nil,
          :showRelevantAudits => String.t() | nil,
          :dropdownSaveJSON => String.t() | nil,
          :dropdownCopyJSON => String.t() | nil,
          :lsPerformanceCategoryDescription => String.t() | nil,
          :labDataTitle => String.t() | nil,
          :varianceDisclaimer => String.t() | nil,
          :calculatorLink => String.t() | nil,
          :runtimeSettingsChannel => String.t() | nil,
          :runtimeSettingsNetworkThrottling => String.t() | nil,
          :runtimeDesktopEmulation => String.t() | nil,
          :errorMissingAuditInfo => String.t() | nil,
          :dropdownViewer => String.t() | nil
        }

  field(:viewTreemapLabel)
  field(:runtimeMobileEmulation)
  field(:dropdownSaveGist)
  field(:manualAuditsGroupTitle)
  field(:crcLongestDurationLabel)
  field(:runtimeSettingsUA)
  field(:throttlingProvided)
  field(:toplevelWarningsMessage)
  field(:warningAuditsGroupTitle)
  field(:dropdownPrintSummary)
  field(:crcInitialNavigation)
  field(:snippetExpandButtonLabel)
  field(:runtimeSettingsDevice)
  field(:opportunitySavingsColumnLabel)
  field(:snippetCollapseButtonLabel)
  field(:auditGroupExpandTooltip)
  field(:scorescaleLabel)
  field(:runtimeSettingsAxeVersion)
  field(:thirdPartyResourcesLabel)
  field(:runtimeUnknown)
  field(:runtimeSettingsCPUThrottling)
  field(:errorLabel)
  field(:notApplicableAuditsGroupTitle)
  field(:dropdownPrintExpanded)
  field(:passedAuditsGroupTitle)
  field(:warningHeader)
  field(:opportunityResourceColumnLabel)
  field(:dropdownDarkTheme)
  field(:dropdownSaveHTML)
  field(:footerIssue)
  field(:runtimeNoEmulation)
  field(:runtimeSettingsUANetwork)
  field(:runtimeSettingsTitle)
  field(:runtimeSettingsFetchTime)
  field(:runtimeSettingsBenchmark)
  field(:runtimeSettingsUrl)
  field(:showRelevantAudits)
  field(:dropdownSaveJSON)
  field(:dropdownCopyJSON)
  field(:lsPerformanceCategoryDescription)
  field(:labDataTitle)
  field(:varianceDisclaimer)
  field(:calculatorLink)
  field(:runtimeSettingsChannel)
  field(:runtimeSettingsNetworkThrottling)
  field(:runtimeDesktopEmulation)
  field(:errorMissingAuditInfo)
  field(:dropdownViewer)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V5.Model.RendererFormattedStrings do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V5.Model.RendererFormattedStrings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V5.Model.RendererFormattedStrings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
