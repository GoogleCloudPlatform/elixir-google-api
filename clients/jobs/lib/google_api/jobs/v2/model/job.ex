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

defmodule GoogleApi.Jobs.V2.Model.Job do
  @moduledoc """
  A Job resource represents a job posting (also referred to as a "job listing"
  or "job requisition"). A job belongs to a Company, which is the hiring
  entity responsible for the job.

  ## Attributes

  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this job was last updated.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when this job was created.
  *   `jobLocations` (*type:* `list(GoogleApi.Jobs.V2.Model.JobLocation.t)`, *default:* `nil`) - Output only. Structured locations of the job, resolved from locations.
  *   `customAttributes` (*type:* `%{optional(String.t) => GoogleApi.Jobs.V2.Model.CustomAttribute.t}`, *default:* `nil`) - Optional. A map of fields to hold both filterable and non-filterable custom job
      attributes that are not covered by the provided structured fields.

      This field is a more general combination of the deprecated id-based
      filterable_custom_fields and string-based
      non_filterable_custom_fields.

      The keys of the map are strings up to 64 bytes and must match the
      pattern: a-zA-Z*.

      At most 100 filterable and at most 100 unfilterable keys are supported.
      For filterable `string_values`, across all keys at most 200 values are
      allowed, with each string no more than 255 characters. For unfilterable
      `string_values`, the maximum total size of `string_values` across all keys
      is 50KB.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Required. The description of the job, which typically includes a multi-paragraph
      description of the company and related information. Separate fields are
      provided on the job object for responsibilities,
      qualifications, and other job characteristics. Use of
      these separate job fields is recommended.

      This field accepts and sanitizes HTML input, and also accepts
      bold, italic, ordered list, and unordered list markup tags.

      The maximum number of allowed characters is 100,000.
  *   `employmentTypes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The employment type(s) of a job, for example,
      full time or
      part time.
  *   `referenceUrl` (*type:* `String.t`, *default:* `nil`) - Output only. The URL of a web page that displays job details.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required during job update.

      Resource name assigned to a job by the API, for example, "/jobs/foo". Use
      of this field in job queries and API calls is preferred over the use of
      requisition_id since this value is unique.
  *   `promotionValue` (*type:* `integer()`, *default:* `nil`) - Optional. A promotion value of the job, as determined by the client.
      The value determines the sort order of the jobs returned when searching for
      jobs using the featured jobs search call, with higher promotional values
      being returned first and ties being resolved by relevance sort. Only the
      jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH.

      Default value is 0, and negative values are treated as 0.
  *   `incentives` (*type:* `String.t`, *default:* `nil`) - Optional. A description of bonus, commission, and other compensation
      incentives associated with the job not including salary or pay.

      The maximum number of allowed characters is 10,000.
  *   `jobTitle` (*type:* `String.t`, *default:* `nil`) - Required. The title of the job, such as "Software Engineer"

      The maximum number of allowed characters is 500.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Optional. The job Region (for example, state, country) throughout which the job
      is available. If this field is set, a
      LocationFilter in a search query within the job region
      finds this job if an exact location match is not specified.
      If this field is set, setting job locations
      to the same location level as this field is strongly recommended.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - Optional. The visibility of the job.
      Defaults to JobVisibility.PRIVATE if not specified.
      Currently only JobVisibility.PRIVATE is supported.
  *   `locations` (*type:* `list(String.t)`, *default:* `nil`) - Optional but strongly recommended for the best service experience.

      Location(s) where the emploeyer is looking to hire for this job posting.

      Specifying the full street address(es) of the hiring location enables
      better API results, especially job searches by commute time.

      At most 50 locations are allowed for best search performance. If a job has
      more locations, it is suggested to split it into multiple jobs with unique
      requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as
      multiple jobs with the same requisition_id, company_name and
      language_code are not allowed. If the original requisition_id must
      be preserved, a custom field should be used for storage. It is also
      suggested to group the locations that close to each other in the same job
      for better search experience.

      The maximum number of allowed characters is 500.
  *   `publishDate` (*type:* `GoogleApi.Jobs.V2.Model.Date.t`, *default:* `nil`) - Optional. The date this job was most recently published in UTC format. The default
      value is the time the request arrives at the server.
  *   `responsibilities` (*type:* `String.t`, *default:* `nil`) - Optional. A description of job responsibilities. The use of this field is
      recommended as an alternative to using the more general description
      field.

      This field accepts and sanitizes HTML input, and also accepts
      bold, italic, ordered list, and unordered list markup tags.

      The maximum number of allowed characters is 10,000.
  *   `qualifications` (*type:* `String.t`, *default:* `nil`) - Optional. A description of the qualifications required to perform the
      job. The use of this field is recommended
      as an alternative to using the more general description field.

      This field accepts and sanitizes HTML input, and also accepts
      bold, italic, ordered list, and unordered list markup tags.

      The maximum number of allowed characters is 10,000.
  *   `unindexedCustomFields` (*type:* `%{optional(String.t) => GoogleApi.Jobs.V2.Model.CustomField.t}`, *default:* `nil`) - Deprecated. Use custom_attributes instead.

      Optional.

      A map of fields to hold non-filterable custom job attributes, similar to
      filterable_custom_fields. These fields are distinct in that the data
      in these fields are not indexed. Therefore, the client cannot search
      against them, nor can the client use them to list jobs.

      The key of the map can be any valid string.
  *   `endDate` (*type:* `GoogleApi.Jobs.V2.Model.Date.t`, *default:* `nil`) - Optional. The end date of the job in UTC time zone. Typically this field
      is used for contracting engagements.
      Dates prior to 1970/1/1 and invalid date formats are ignored.
  *   `department` (*type:* `String.t`, *default:* `nil`) - Optional. The department or functional area within the company with the open
      position.

      The maximum number of allowed characters is 255.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional but strongly recommended for the best service
      experience.

      The expiration timestamp of the job. After this timestamp, the
      job is marked as expired, and it no longer appears in search results. The
      expired job can't be deleted or listed by the DeleteJob and
      ListJobs APIs, but it can be retrieved with the GetJob API or
      updated with the UpdateJob API. An expired job can be updated and
      opened again by using a future expiration timestamp. Updating an expired
      job fails if there is another existing open job with same
      requisition_id, company_name and language_code.

      The expired jobs are retained in our system for 90 days. However, the
      overall expired job count cannot exceed 3 times the maximum of open jobs
      count over the past week, otherwise jobs with earlier expire time are
      cleaned first. Expired jobs are no longer accessible after they are cleaned
      out.
      The format of this field is RFC 3339 date strings. Example:
      2000-01-01T00:00:00.999999999Z
      See
      [https://www.ietf.org/rfc/rfc3339.txt](https://www.ietf.org/rfc/rfc3339.txt).

      A valid date range is between 1970-01-01T00:00:00.0Z and
      2100-12-31T23:59:59.999Z. Invalid dates are ignored and treated as expire
      time not provided.

      If this value is not provided at the time of job creation or is invalid,
      the job posting expires after 30 days from the job's creation time. For
      example, if the job was created on 2017/01/01 13:00AM UTC with an
      unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC.

      If this value is not provided but expiry_date is, expiry_date is
      used.

      If this value is not provided on job update, it depends on the field masks
      set by UpdateJobRequest.update_job_fields. If the field masks include
      expiry_time, or the masks are empty meaning that every field is
      updated, the job posting expires after 30 days from the job's last
      update time. Otherwise the expiration date isn't updated.
  *   `applicationUrls` (*type:* `list(String.t)`, *default:* `nil`) - Optional but at least one of application_urls,
      application_email_list or application_instruction must be
      specified.

      Use this URL field to direct an applicant to a website, for example to
      link to an online application form.

      The maximum number of allowed characters is 2,000.
  *   `compensationInfo` (*type:* `GoogleApi.Jobs.V2.Model.CompensationInfo.t`, *default:* `nil`) - Optional. Job compensation information.
  *   `distributorCompanyId` (*type:* `String.t`, *default:* `nil`) - Optional but one of company_name or distributor_company_id must be
      provided.

      A unique company identifier used by job distributors to identify an
      employer's company entity. company_name takes precedence over
      this field, and is the recommended field to use to identify companies.

      The maximum number of allowed characters is 255.
  *   `expiryDate` (*type:* `GoogleApi.Jobs.V2.Model.Date.t`, *default:* `nil`) - Deprecated. Use expire_time instead.

      Optional but strongly recommended to be provided for the best service
      experience.

      The expiration date of the job in UTC time. After 12 am on this date, the
      job is marked as expired, and it no longer appears in search results.
      The expired job can't be deleted or listed by the DeleteJob and
      ListJobs APIs, but it can be retrieved with the GetJob API or
      updated with the UpdateJob API. An expired job can be updated and
      opened again by using a future expiration date. It can also remain expired.
      Updating an expired job to be open fails if there is another existing open
      job with same requisition_id, company_name and language_code.

      The expired jobs are retained in our system for 90 days. However, the
      overall expired job count cannot exceed 3 times the maximum of open jobs
      count over the past week, otherwise jobs with earlier expire time are
      removed first. Expired jobs are no longer accessible after they are cleaned
      out.

      A valid date range is between 1970/1/1 and 2100/12/31. Invalid dates are
      ignored and treated as expiry date not provided.

      If this value is not provided on job creation or is invalid, the job
      posting expires after 30 days from the job's creation time. For example, if
      the job was created on 2017/01/01 13:00AM UTC with an unspecified
      expiration date, the job expires after 2017/01/31 13:00AM UTC.

      If this value is not provided on job update, it depends on the field masks
      set by UpdateJobRequest.update_job_fields. If the field masks include
      expiry_date, or the masks are empty meaning that every field is
      updated, the job expires after 30 days from the job's last update time.
      Otherwise the expiration date isn't updated.
  *   `applicationInstruction` (*type:* `String.t`, *default:* `nil`) - Optional but at least one of application_urls,
      application_email_list or application_instruction must be
      specified.

      Use this field to provide instructions, such as "Mail your application
      to ...", that a candidate can follow to apply for the job.

      This field accepts and sanitizes HTML input, and also accepts
      bold, italic, ordered list, and unordered list markup tags.

      The maximum number of allowed characters is 3,000.
  *   `extendedCompensationInfo` (*type:* `GoogleApi.Jobs.V2.Model.ExtendedCompensationInfo.t`, *default:* `nil`) - Deprecated. Always use compensation_info.

      Optional.

      Job compensation information.

      This field replaces compensation_info. Only
      CompensationInfo.entries or extended_compensation_info can be set,
      otherwise an exception is thrown.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The language of the posting. This field is distinct from
      any requirements for fluency that are associated with the job.

      Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn".
      For more information, see
      [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){:
      class="external" target="_blank" }.

      If this field is unspecified and Job.description is present, detected
      language code based on Job.description is assigned, otherwise
      defaults to 'en_US'.
  *   `educationLevels` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The desired education level for the job, such as
      "Bachelors", "Masters", "Doctorate".
  *   `level` (*type:* `String.t`, *default:* `nil`) - Optional. The experience level associated with the job, such as "Entry Level".
  *   `companyName` (*type:* `String.t`, *default:* `nil`) - Optional but one of company_name or distributor_company_id must be
      provided.

      The resource name of the company listing the job, such as
      /companies/foo. This field takes precedence over the
      distributor-assigned company identifier, distributor_company_id.
  *   `applicationEmailList` (*type:* `list(String.t)`, *default:* `nil`) - Optional but at least one of application_urls,
      application_email_list or application_instruction must be
      specified.

      Use this field to specify email address(es) to which resumes or
      applications can be sent.

      The maximum number of allowed characters is 255.
  *   `companyDisplayName` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the company listing the job.
  *   `companyTitle` (*type:* `String.t`, *default:* `nil`) - Deprecated. Use company_display_name instead.

      Output only.

      The name of the company listing the job.
  *   `filterableCustomFields` (*type:* `%{optional(String.t) => GoogleApi.Jobs.V2.Model.CustomField.t}`, *default:* `nil`) - Deprecated. Use custom_attributes instead.

      Optional.

      A map of fields to hold filterable custom job attributes not captured by
      the standard fields such as job_title, company_name, or
      level. These custom fields store arbitrary
      string values, and can be used for purposes not covered by
      the structured fields. For the best search experience, use of the
      structured rather than custom fields is recommended.

      Data stored in these custom fields fields are indexed and
      searched against by keyword searches (see
      SearchJobsRequest.custom_field_filters][]).

      The map key must be a number between 1-20. If an invalid key is
      provided on job create or update, an error is returned.
  *   `benefits` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The benefits included with the job.
  *   `startDate` (*type:* `GoogleApi.Jobs.V2.Model.Date.t`, *default:* `nil`) - Optional. The start date of the job in UTC time zone. Typically this field
      is used for contracting engagements.
      Dates prior to 1970/1/1 and invalid date formats are ignored.
  *   `requisitionId` (*type:* `String.t`, *default:* `nil`) - Required. The requisition ID, also referred to as the posting ID, assigned by the
      client to identify a job. This field is intended to be used by clients
      for client identification and tracking of listings. A job is not allowed
      to be created if there is another job with the same requisition_id,
      company_name and language_code.

      The maximum number of allowed characters is 255.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :updateTime => DateTime.t(),
          :createTime => DateTime.t(),
          :jobLocations => list(GoogleApi.Jobs.V2.Model.JobLocation.t()),
          :customAttributes => %{
            optional(String.t()) => GoogleApi.Jobs.V2.Model.CustomAttribute.t()
          },
          :description => String.t(),
          :employmentTypes => list(String.t()),
          :referenceUrl => String.t(),
          :name => String.t(),
          :promotionValue => integer(),
          :incentives => String.t(),
          :jobTitle => String.t(),
          :region => String.t(),
          :visibility => String.t(),
          :locations => list(String.t()),
          :publishDate => GoogleApi.Jobs.V2.Model.Date.t(),
          :responsibilities => String.t(),
          :qualifications => String.t(),
          :unindexedCustomFields => %{
            optional(String.t()) => GoogleApi.Jobs.V2.Model.CustomField.t()
          },
          :endDate => GoogleApi.Jobs.V2.Model.Date.t(),
          :department => String.t(),
          :expireTime => DateTime.t(),
          :applicationUrls => list(String.t()),
          :compensationInfo => GoogleApi.Jobs.V2.Model.CompensationInfo.t(),
          :distributorCompanyId => String.t(),
          :expiryDate => GoogleApi.Jobs.V2.Model.Date.t(),
          :applicationInstruction => String.t(),
          :extendedCompensationInfo => GoogleApi.Jobs.V2.Model.ExtendedCompensationInfo.t(),
          :languageCode => String.t(),
          :educationLevels => list(String.t()),
          :level => String.t(),
          :companyName => String.t(),
          :applicationEmailList => list(String.t()),
          :companyDisplayName => String.t(),
          :companyTitle => String.t(),
          :filterableCustomFields => %{
            optional(String.t()) => GoogleApi.Jobs.V2.Model.CustomField.t()
          },
          :benefits => list(String.t()),
          :startDate => GoogleApi.Jobs.V2.Model.Date.t(),
          :requisitionId => String.t()
        }

  field(:updateTime, as: DateTime)
  field(:createTime, as: DateTime)
  field(:jobLocations, as: GoogleApi.Jobs.V2.Model.JobLocation, type: :list)
  field(:customAttributes, as: GoogleApi.Jobs.V2.Model.CustomAttribute, type: :map)
  field(:description)
  field(:employmentTypes, type: :list)
  field(:referenceUrl)
  field(:name)
  field(:promotionValue)
  field(:incentives)
  field(:jobTitle)
  field(:region)
  field(:visibility)
  field(:locations, type: :list)
  field(:publishDate, as: GoogleApi.Jobs.V2.Model.Date)
  field(:responsibilities)
  field(:qualifications)
  field(:unindexedCustomFields, as: GoogleApi.Jobs.V2.Model.CustomField, type: :map)
  field(:endDate, as: GoogleApi.Jobs.V2.Model.Date)
  field(:department)
  field(:expireTime, as: DateTime)
  field(:applicationUrls, type: :list)
  field(:compensationInfo, as: GoogleApi.Jobs.V2.Model.CompensationInfo)
  field(:distributorCompanyId)
  field(:expiryDate, as: GoogleApi.Jobs.V2.Model.Date)
  field(:applicationInstruction)
  field(:extendedCompensationInfo, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfo)
  field(:languageCode)
  field(:educationLevels, type: :list)
  field(:level)
  field(:companyName)
  field(:applicationEmailList, type: :list)
  field(:companyDisplayName)
  field(:companyTitle)
  field(:filterableCustomFields, as: GoogleApi.Jobs.V2.Model.CustomField, type: :map)
  field(:benefits, type: :list)
  field(:startDate, as: GoogleApi.Jobs.V2.Model.Date)
  field(:requisitionId)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.Job do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
