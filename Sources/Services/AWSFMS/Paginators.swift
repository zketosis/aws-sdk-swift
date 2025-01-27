// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension FMSClient {
    /// Paginate over `[ListAdminAccountsForOrganizationOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAdminAccountsForOrganizationInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAdminAccountsForOrganizationOutputResponse`
    public func listAdminAccountsForOrganizationPaginated(input: ListAdminAccountsForOrganizationInput) -> ClientRuntime.PaginatorSequence<ListAdminAccountsForOrganizationInput, ListAdminAccountsForOrganizationOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAdminAccountsForOrganizationInput, ListAdminAccountsForOrganizationOutputResponse>(input: input, inputKey: \ListAdminAccountsForOrganizationInput.nextToken, outputKey: \ListAdminAccountsForOrganizationOutputResponse.nextToken, paginationFunction: self.listAdminAccountsForOrganization(input:))
    }
}

extension ListAdminAccountsForOrganizationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAdminAccountsForOrganizationInput {
        return ListAdminAccountsForOrganizationInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAdminAccountsForOrganizationInput, Output == ListAdminAccountsForOrganizationOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAdminAccountsForOrganizationPaginated`
    /// to access the nested member `[FMSClientTypes.AdminAccountSummary]`
    /// - Returns: `[FMSClientTypes.AdminAccountSummary]`
    public func adminAccounts() async throws -> [FMSClientTypes.AdminAccountSummary] {
        return try await self.asyncCompactMap { item in item.adminAccounts }
    }
}
extension FMSClient {
    /// Paginate over `[ListAdminsManagingAccountOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAdminsManagingAccountInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAdminsManagingAccountOutputResponse`
    public func listAdminsManagingAccountPaginated(input: ListAdminsManagingAccountInput) -> ClientRuntime.PaginatorSequence<ListAdminsManagingAccountInput, ListAdminsManagingAccountOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAdminsManagingAccountInput, ListAdminsManagingAccountOutputResponse>(input: input, inputKey: \ListAdminsManagingAccountInput.nextToken, outputKey: \ListAdminsManagingAccountOutputResponse.nextToken, paginationFunction: self.listAdminsManagingAccount(input:))
    }
}

extension ListAdminsManagingAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAdminsManagingAccountInput {
        return ListAdminsManagingAccountInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAdminsManagingAccountInput, Output == ListAdminsManagingAccountOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAdminsManagingAccountPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func adminAccounts() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.adminAccounts }
    }
}
extension FMSClient {
    /// Paginate over `[ListAppsListsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAppsListsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAppsListsOutputResponse`
    public func listAppsListsPaginated(input: ListAppsListsInput) -> ClientRuntime.PaginatorSequence<ListAppsListsInput, ListAppsListsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppsListsInput, ListAppsListsOutputResponse>(input: input, inputKey: \ListAppsListsInput.nextToken, outputKey: \ListAppsListsOutputResponse.nextToken, paginationFunction: self.listAppsLists(input:))
    }
}

extension ListAppsListsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppsListsInput {
        return ListAppsListsInput(
            defaultLists: self.defaultLists,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAppsListsInput, Output == ListAppsListsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAppsListsPaginated`
    /// to access the nested member `[FMSClientTypes.AppsListDataSummary]`
    /// - Returns: `[FMSClientTypes.AppsListDataSummary]`
    public func appsLists() async throws -> [FMSClientTypes.AppsListDataSummary] {
        return try await self.asyncCompactMap { item in item.appsLists }
    }
}
extension FMSClient {
    /// Paginate over `[ListComplianceStatusOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListComplianceStatusInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListComplianceStatusOutputResponse`
    public func listComplianceStatusPaginated(input: ListComplianceStatusInput) -> ClientRuntime.PaginatorSequence<ListComplianceStatusInput, ListComplianceStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListComplianceStatusInput, ListComplianceStatusOutputResponse>(input: input, inputKey: \ListComplianceStatusInput.nextToken, outputKey: \ListComplianceStatusOutputResponse.nextToken, paginationFunction: self.listComplianceStatus(input:))
    }
}

extension ListComplianceStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComplianceStatusInput {
        return ListComplianceStatusInput(
            maxResults: self.maxResults,
            nextToken: token,
            policyId: self.policyId
        )}
}

extension PaginatorSequence where Input == ListComplianceStatusInput, Output == ListComplianceStatusOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listComplianceStatusPaginated`
    /// to access the nested member `[FMSClientTypes.PolicyComplianceStatus]`
    /// - Returns: `[FMSClientTypes.PolicyComplianceStatus]`
    public func policyComplianceStatusList() async throws -> [FMSClientTypes.PolicyComplianceStatus] {
        return try await self.asyncCompactMap { item in item.policyComplianceStatusList }
    }
}
extension FMSClient {
    /// Paginate over `[ListMemberAccountsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMemberAccountsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMemberAccountsOutputResponse`
    public func listMemberAccountsPaginated(input: ListMemberAccountsInput) -> ClientRuntime.PaginatorSequence<ListMemberAccountsInput, ListMemberAccountsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMemberAccountsInput, ListMemberAccountsOutputResponse>(input: input, inputKey: \ListMemberAccountsInput.nextToken, outputKey: \ListMemberAccountsOutputResponse.nextToken, paginationFunction: self.listMemberAccounts(input:))
    }
}

extension ListMemberAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMemberAccountsInput {
        return ListMemberAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListMemberAccountsInput, Output == ListMemberAccountsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listMemberAccountsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func memberAccounts() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.memberAccounts }
    }
}
extension FMSClient {
    /// Paginate over `[ListPoliciesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPoliciesOutputResponse`
    public func listPoliciesPaginated(input: ListPoliciesInput) -> ClientRuntime.PaginatorSequence<ListPoliciesInput, ListPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPoliciesInput, ListPoliciesOutputResponse>(input: input, inputKey: \ListPoliciesInput.nextToken, outputKey: \ListPoliciesOutputResponse.nextToken, paginationFunction: self.listPolicies(input:))
    }
}

extension ListPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPoliciesInput {
        return ListPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPoliciesInput, Output == ListPoliciesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPoliciesPaginated`
    /// to access the nested member `[FMSClientTypes.PolicySummary]`
    /// - Returns: `[FMSClientTypes.PolicySummary]`
    public func policyList() async throws -> [FMSClientTypes.PolicySummary] {
        return try await self.asyncCompactMap { item in item.policyList }
    }
}
extension FMSClient {
    /// Paginate over `[ListProtocolsListsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProtocolsListsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProtocolsListsOutputResponse`
    public func listProtocolsListsPaginated(input: ListProtocolsListsInput) -> ClientRuntime.PaginatorSequence<ListProtocolsListsInput, ListProtocolsListsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProtocolsListsInput, ListProtocolsListsOutputResponse>(input: input, inputKey: \ListProtocolsListsInput.nextToken, outputKey: \ListProtocolsListsOutputResponse.nextToken, paginationFunction: self.listProtocolsLists(input:))
    }
}

extension ListProtocolsListsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProtocolsListsInput {
        return ListProtocolsListsInput(
            defaultLists: self.defaultLists,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListProtocolsListsInput, Output == ListProtocolsListsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listProtocolsListsPaginated`
    /// to access the nested member `[FMSClientTypes.ProtocolsListDataSummary]`
    /// - Returns: `[FMSClientTypes.ProtocolsListDataSummary]`
    public func protocolsLists() async throws -> [FMSClientTypes.ProtocolsListDataSummary] {
        return try await self.asyncCompactMap { item in item.protocolsLists }
    }
}
extension FMSClient {
    /// Paginate over `[ListThirdPartyFirewallFirewallPoliciesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListThirdPartyFirewallFirewallPoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListThirdPartyFirewallFirewallPoliciesOutputResponse`
    public func listThirdPartyFirewallFirewallPoliciesPaginated(input: ListThirdPartyFirewallFirewallPoliciesInput) -> ClientRuntime.PaginatorSequence<ListThirdPartyFirewallFirewallPoliciesInput, ListThirdPartyFirewallFirewallPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListThirdPartyFirewallFirewallPoliciesInput, ListThirdPartyFirewallFirewallPoliciesOutputResponse>(input: input, inputKey: \ListThirdPartyFirewallFirewallPoliciesInput.nextToken, outputKey: \ListThirdPartyFirewallFirewallPoliciesOutputResponse.nextToken, paginationFunction: self.listThirdPartyFirewallFirewallPolicies(input:))
    }
}

extension ListThirdPartyFirewallFirewallPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListThirdPartyFirewallFirewallPoliciesInput {
        return ListThirdPartyFirewallFirewallPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token,
            thirdPartyFirewall: self.thirdPartyFirewall
        )}
}

extension PaginatorSequence where Input == ListThirdPartyFirewallFirewallPoliciesInput, Output == ListThirdPartyFirewallFirewallPoliciesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listThirdPartyFirewallFirewallPoliciesPaginated`
    /// to access the nested member `[FMSClientTypes.ThirdPartyFirewallFirewallPolicy]`
    /// - Returns: `[FMSClientTypes.ThirdPartyFirewallFirewallPolicy]`
    public func thirdPartyFirewallFirewallPolicies() async throws -> [FMSClientTypes.ThirdPartyFirewallFirewallPolicy] {
        return try await self.asyncCompactMap { item in item.thirdPartyFirewallFirewallPolicies }
    }
}
