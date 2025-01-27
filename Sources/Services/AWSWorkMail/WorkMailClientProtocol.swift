// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// WorkMail is a secure, managed business email and calendaring service with support for existing desktop and mobile email clients. You can access your email, contacts, and calendars using Microsoft Outlook, your browser, or other native iOS and Android email applications. You can integrate WorkMail with your existing corporate directory and control both the keys that encrypt your data and the location in which your data is stored. The WorkMail API is designed for the following scenarios:
///
/// * Listing and describing organizations
///
///
///
///
/// * Managing users
///
///
///
///
/// * Managing groups
///
///
///
///
/// * Managing resources
///
///
/// All WorkMail API operations are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the WorkMail site, the IAM user gains full administrative visibility into the entire WorkMail organization (or as set in the IAM policy). This includes, but is not limited to, the ability to create, update, and delete users, groups, and resources. This allows developers to perform the scenarios listed above, as well as give users the ability to grant access on a selective basis using the IAM model.
public protocol WorkMailClientProtocol {
    /// Adds a member (user or group) to the resource's set of delegates.
    func associateDelegateToResource(input: AssociateDelegateToResourceInput) async throws -> AssociateDelegateToResourceOutputResponse
    /// Adds a member (user or group) to the group's set.
    func associateMemberToGroup(input: AssociateMemberToGroupInput) async throws -> AssociateMemberToGroupOutputResponse
    /// Assumes an impersonation role for the given WorkMail organization. This method returns an authentication token you can use to make impersonated calls.
    func assumeImpersonationRole(input: AssumeImpersonationRoleInput) async throws -> AssumeImpersonationRoleOutputResponse
    /// Cancels a mailbox export job. If the mailbox export job is near completion, it might not be possible to cancel it.
    func cancelMailboxExportJob(input: CancelMailboxExportJobInput) async throws -> CancelMailboxExportJobOutputResponse
    /// Adds an alias to the set of a given member (user or group) of WorkMail.
    func createAlias(input: CreateAliasInput) async throws -> CreateAliasOutputResponse
    /// Creates an AvailabilityConfiguration for the given WorkMail organization and domain.
    func createAvailabilityConfiguration(input: CreateAvailabilityConfigurationInput) async throws -> CreateAvailabilityConfigurationOutputResponse
    /// Creates a group that can be used in WorkMail by calling the [RegisterToWorkMail] operation.
    func createGroup(input: CreateGroupInput) async throws -> CreateGroupOutputResponse
    /// Creates an impersonation role for the given WorkMail organization. Idempotency ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries also complete successfully without performing any further actions.
    func createImpersonationRole(input: CreateImpersonationRoleInput) async throws -> CreateImpersonationRoleOutputResponse
    /// Creates a new mobile device access rule for the specified WorkMail organization.
    func createMobileDeviceAccessRule(input: CreateMobileDeviceAccessRuleInput) async throws -> CreateMobileDeviceAccessRuleOutputResponse
    /// Creates a new WorkMail organization. Optionally, you can choose to associate an existing AWS Directory Service directory with your organization. If an AWS Directory Service directory ID is specified, the organization alias must match the directory alias. If you choose not to associate an existing directory with your organization, then we create a new WorkMail directory for you. For more information, see [Adding an organization](https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html) in the WorkMail Administrator Guide. You can associate multiple email domains with an organization, then choose your default email domain from the WorkMail console. You can also associate a domain that is managed in an Amazon Route 53 public hosted zone. For more information, see [Adding a domain](https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html) and [Choosing the default domain](https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html) in the WorkMail Administrator Guide. Optionally, you can use a customer managed key from AWS Key Management Service (AWS KMS) to encrypt email for your organization. If you don't associate an AWS KMS key, WorkMail creates a default, AWS managed key for you.
    func createOrganization(input: CreateOrganizationInput) async throws -> CreateOrganizationOutputResponse
    /// Creates a new WorkMail resource.
    func createResource(input: CreateResourceInput) async throws -> CreateResourceOutputResponse
    /// Creates a user who can be used in WorkMail by calling the [RegisterToWorkMail] operation.
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    /// Deletes an access control rule for the specified WorkMail organization. Deleting already deleted and non-existing rules does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.
    func deleteAccessControlRule(input: DeleteAccessControlRuleInput) async throws -> DeleteAccessControlRuleOutputResponse
    /// Remove one or more specified aliases from a set of aliases for a given user.
    func deleteAlias(input: DeleteAliasInput) async throws -> DeleteAliasOutputResponse
    /// Deletes the AvailabilityConfiguration for the given WorkMail organization and domain.
    func deleteAvailabilityConfiguration(input: DeleteAvailabilityConfigurationInput) async throws -> DeleteAvailabilityConfigurationOutputResponse
    /// Deletes the email monitoring configuration for a specified organization.
    func deleteEmailMonitoringConfiguration(input: DeleteEmailMonitoringConfigurationInput) async throws -> DeleteEmailMonitoringConfigurationOutputResponse
    /// Deletes a group from WorkMail.
    func deleteGroup(input: DeleteGroupInput) async throws -> DeleteGroupOutputResponse
    /// Deletes an impersonation role for the given WorkMail organization.
    func deleteImpersonationRole(input: DeleteImpersonationRoleInput) async throws -> DeleteImpersonationRoleOutputResponse
    /// Deletes permissions granted to a member (user or group).
    func deleteMailboxPermissions(input: DeleteMailboxPermissionsInput) async throws -> DeleteMailboxPermissionsOutputResponse
    /// Deletes the mobile device access override for the given WorkMail organization, user, and device. Deleting already deleted and non-existing overrides does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.
    func deleteMobileDeviceAccessOverride(input: DeleteMobileDeviceAccessOverrideInput) async throws -> DeleteMobileDeviceAccessOverrideOutputResponse
    /// Deletes a mobile device access rule for the specified WorkMail organization. Deleting already deleted and non-existing rules does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.
    func deleteMobileDeviceAccessRule(input: DeleteMobileDeviceAccessRuleInput) async throws -> DeleteMobileDeviceAccessRuleOutputResponse
    /// Deletes an WorkMail organization and all underlying AWS resources managed by WorkMail as part of the organization. You can choose whether to delete the associated directory. For more information, see [Removing an organization](https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html) in the WorkMail Administrator Guide.
    func deleteOrganization(input: DeleteOrganizationInput) async throws -> DeleteOrganizationOutputResponse
    /// Deletes the specified resource.
    func deleteResource(input: DeleteResourceInput) async throws -> DeleteResourceOutputResponse
    /// Deletes the specified retention policy from the specified organization.
    func deleteRetentionPolicy(input: DeleteRetentionPolicyInput) async throws -> DeleteRetentionPolicyOutputResponse
    /// Deletes a user from WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the [DescribeUser] action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.
    func deleteUser(input: DeleteUserInput) async throws -> DeleteUserOutputResponse
    /// Mark a user, group, or resource as no longer used in WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.
    func deregisterFromWorkMail(input: DeregisterFromWorkMailInput) async throws -> DeregisterFromWorkMailOutputResponse
    /// Removes a domain from WorkMail, stops email routing to WorkMail, and removes the authorization allowing WorkMail use. SES keeps the domain because other applications may use it. You must first remove any email address used by WorkMail entities before you remove the domain.
    func deregisterMailDomain(input: DeregisterMailDomainInput) async throws -> DeregisterMailDomainOutputResponse
    /// Describes the current email monitoring configuration for a specified organization.
    func describeEmailMonitoringConfiguration(input: DescribeEmailMonitoringConfigurationInput) async throws -> DescribeEmailMonitoringConfigurationOutputResponse
    /// Returns the data available for the group.
    func describeGroup(input: DescribeGroupInput) async throws -> DescribeGroupOutputResponse
    /// Lists the settings in a DMARC policy for a specified organization.
    func describeInboundDmarcSettings(input: DescribeInboundDmarcSettingsInput) async throws -> DescribeInboundDmarcSettingsOutputResponse
    /// Describes the current status of a mailbox export job.
    func describeMailboxExportJob(input: DescribeMailboxExportJobInput) async throws -> DescribeMailboxExportJobOutputResponse
    /// Provides more information regarding a given organization based on its identifier.
    func describeOrganization(input: DescribeOrganizationInput) async throws -> DescribeOrganizationOutputResponse
    /// Returns the data available for the resource.
    func describeResource(input: DescribeResourceInput) async throws -> DescribeResourceOutputResponse
    /// Provides information regarding the user.
    func describeUser(input: DescribeUserInput) async throws -> DescribeUserOutputResponse
    /// Removes a member from the resource's set of delegates.
    func disassociateDelegateFromResource(input: DisassociateDelegateFromResourceInput) async throws -> DisassociateDelegateFromResourceOutputResponse
    /// Removes a member from a group.
    func disassociateMemberFromGroup(input: DisassociateMemberFromGroupInput) async throws -> DisassociateMemberFromGroupOutputResponse
    /// Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, and user ID or impersonation role ID. You must provide either the user ID or impersonation role ID. Impersonation role ID can only be used with Action EWS.
    func getAccessControlEffect(input: GetAccessControlEffectInput) async throws -> GetAccessControlEffectOutputResponse
    /// Gets the default retention policy details for the specified organization.
    func getDefaultRetentionPolicy(input: GetDefaultRetentionPolicyInput) async throws -> GetDefaultRetentionPolicyOutputResponse
    /// Gets the impersonation role details for the given WorkMail organization.
    func getImpersonationRole(input: GetImpersonationRoleInput) async throws -> GetImpersonationRoleOutputResponse
    /// Tests whether the given impersonation role can impersonate a target user.
    func getImpersonationRoleEffect(input: GetImpersonationRoleEffectInput) async throws -> GetImpersonationRoleEffectOutputResponse
    /// Requests a user's mailbox details for a specified organization and user.
    func getMailboxDetails(input: GetMailboxDetailsInput) async throws -> GetMailboxDetailsOutputResponse
    /// Gets details for a mail domain, including domain records required to configure your domain with recommended security.
    func getMailDomain(input: GetMailDomainInput) async throws -> GetMailDomainOutputResponse
    /// Simulates the effect of the mobile device access rules for the given attributes of a sample access event. Use this method to test the effects of the current set of mobile device access rules for the WorkMail organization for a particular user's attributes.
    func getMobileDeviceAccessEffect(input: GetMobileDeviceAccessEffectInput) async throws -> GetMobileDeviceAccessEffectOutputResponse
    /// Gets the mobile device access override for the given WorkMail organization, user, and device.
    func getMobileDeviceAccessOverride(input: GetMobileDeviceAccessOverrideInput) async throws -> GetMobileDeviceAccessOverrideOutputResponse
    /// Lists the access control rules for the specified organization.
    func listAccessControlRules(input: ListAccessControlRulesInput) async throws -> ListAccessControlRulesOutputResponse
    /// Creates a paginated call to list the aliases associated with a given entity.
    func listAliases(input: ListAliasesInput) async throws -> ListAliasesOutputResponse
    /// List all the AvailabilityConfiguration's for the given WorkMail organization.
    func listAvailabilityConfigurations(input: ListAvailabilityConfigurationsInput) async throws -> ListAvailabilityConfigurationsOutputResponse
    /// Returns an overview of the members of a group. Users and groups can be members of a group.
    func listGroupMembers(input: ListGroupMembersInput) async throws -> ListGroupMembersOutputResponse
    /// Returns summaries of the organization's groups.
    func listGroups(input: ListGroupsInput) async throws -> ListGroupsOutputResponse
    /// Lists all the impersonation roles for the given WorkMail organization.
    func listImpersonationRoles(input: ListImpersonationRolesInput) async throws -> ListImpersonationRolesOutputResponse
    /// Lists the mailbox export jobs started for the specified organization within the last seven days.
    func listMailboxExportJobs(input: ListMailboxExportJobsInput) async throws -> ListMailboxExportJobsOutputResponse
    /// Lists the mailbox permissions associated with a user, group, or resource mailbox.
    func listMailboxPermissions(input: ListMailboxPermissionsInput) async throws -> ListMailboxPermissionsOutputResponse
    /// Lists the mail domains in a given WorkMail organization.
    func listMailDomains(input: ListMailDomainsInput) async throws -> ListMailDomainsOutputResponse
    /// Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device.
    func listMobileDeviceAccessOverrides(input: ListMobileDeviceAccessOverridesInput) async throws -> ListMobileDeviceAccessOverridesOutputResponse
    /// Lists the mobile device access rules for the specified WorkMail organization.
    func listMobileDeviceAccessRules(input: ListMobileDeviceAccessRulesInput) async throws -> ListMobileDeviceAccessRulesOutputResponse
    /// Returns summaries of the customer's organizations.
    func listOrganizations(input: ListOrganizationsInput) async throws -> ListOrganizationsOutputResponse
    /// Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    func listResourceDelegates(input: ListResourceDelegatesInput) async throws -> ListResourceDelegatesOutputResponse
    /// Returns summaries of the organization's resources.
    func listResources(input: ListResourcesInput) async throws -> ListResourcesOutputResponse
    /// Lists the tags applied to an WorkMail organization resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Returns summaries of the organization's users.
    func listUsers(input: ListUsersInput) async throws -> ListUsersOutputResponse
    /// Adds a new access control rule for the specified organization. The rule allows or denies access to the organization for the specified IPv4 addresses, access protocol actions, user IDs and impersonation IDs. Adding a new rule with the same name as an existing rule replaces the older rule.
    func putAccessControlRule(input: PutAccessControlRuleInput) async throws -> PutAccessControlRuleOutputResponse
    /// Creates or updates the email monitoring configuration for a specified organization.
    func putEmailMonitoringConfiguration(input: PutEmailMonitoringConfigurationInput) async throws -> PutEmailMonitoringConfigurationOutputResponse
    /// Enables or disables a DMARC policy for a given organization.
    func putInboundDmarcSettings(input: PutInboundDmarcSettingsInput) async throws -> PutInboundDmarcSettingsOutputResponse
    /// Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.
    func putMailboxPermissions(input: PutMailboxPermissionsInput) async throws -> PutMailboxPermissionsOutputResponse
    /// Creates or updates a mobile device access override for the given WorkMail organization, user, and device.
    func putMobileDeviceAccessOverride(input: PutMobileDeviceAccessOverrideInput) async throws -> PutMobileDeviceAccessOverrideOutputResponse
    /// Puts a retention policy to the specified organization.
    func putRetentionPolicy(input: PutRetentionPolicyInput) async throws -> PutRetentionPolicyOutputResponse
    /// Registers a new domain in WorkMail and SES, and configures it for use by WorkMail. Emails received by SES for this domain are routed to the specified WorkMail organization, and WorkMail has permanent permission to use the specified domain for sending your users' emails.
    func registerMailDomain(input: RegisterMailDomainInput) async throws -> RegisterMailDomainOutputResponse
    /// Registers an existing and disabled user, group, or resource for WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see [Pricing](https://aws.amazon.com/workmail/pricing). The equivalent console functionality for this operation is Enable. Users can either be created by calling the [CreateUser] API operation or they can be synchronized from your directory. For more information, see [DeregisterFromWorkMail].
    func registerToWorkMail(input: RegisterToWorkMailInput) async throws -> RegisterToWorkMailOutputResponse
    /// Allows the administrator to reset the password for a user.
    func resetPassword(input: ResetPasswordInput) async throws -> ResetPasswordOutputResponse
    /// Starts a mailbox export job to export MIME-format email messages and calendar items from the specified mailbox to the specified Amazon Simple Storage Service (Amazon S3) bucket. For more information, see [Exporting mailbox content](https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html) in the WorkMail Administrator Guide.
    func startMailboxExportJob(input: StartMailboxExportJobInput) async throws -> StartMailboxExportJobOutputResponse
    /// Applies the specified tags to the specified WorkMailorganization resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Performs a test on an availability provider to ensure that access is allowed. For EWS, it verifies the provided credentials can be used to successfully log in. For Lambda, it verifies that the Lambda function can be invoked and that the resource access policy was configured to deny anonymous access. An anonymous invocation is one done without providing either a SourceArn or SourceAccount header. The request must contain either one provider definition (EwsProvider or LambdaProvider) or the DomainName parameter. If the DomainName parameter is provided, the configuration stored under the DomainName will be tested.
    func testAvailabilityConfiguration(input: TestAvailabilityConfigurationInput) async throws -> TestAvailabilityConfigurationOutputResponse
    /// Untags the specified tags from the specified WorkMail organization resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an existing AvailabilityConfiguration for the given WorkMail organization and domain.
    func updateAvailabilityConfiguration(input: UpdateAvailabilityConfigurationInput) async throws -> UpdateAvailabilityConfigurationOutputResponse
    /// Updates the default mail domain for an organization. The default mail domain is used by the WorkMail AWS Console to suggest an email address when enabling a mail user. You can only have one default domain.
    func updateDefaultMailDomain(input: UpdateDefaultMailDomainInput) async throws -> UpdateDefaultMailDomainOutputResponse
    /// Updates an impersonation role for the given WorkMail organization.
    func updateImpersonationRole(input: UpdateImpersonationRoleInput) async throws -> UpdateImpersonationRoleOutputResponse
    /// Updates a user's current mailbox quota for a specified organization and user.
    func updateMailboxQuota(input: UpdateMailboxQuotaInput) async throws -> UpdateMailboxQuotaOutputResponse
    /// Updates a mobile device access rule for the specified WorkMail organization.
    func updateMobileDeviceAccessRule(input: UpdateMobileDeviceAccessRuleInput) async throws -> UpdateMobileDeviceAccessRuleOutputResponse
    /// Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.
    func updatePrimaryEmailAddress(input: UpdatePrimaryEmailAddressInput) async throws -> UpdatePrimaryEmailAddressOutputResponse
    /// Updates data for the resource. To have the latest information, it must be preceded by a [DescribeResource] call. The dataset in the request should be the one expected when performing another DescribeResource call.
    func updateResource(input: UpdateResourceInput) async throws -> UpdateResourceOutputResponse
}

public protocol WorkMailClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum WorkMailClientTypes {}
