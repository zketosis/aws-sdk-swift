// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Amazon EventBridge Scheduler is a serverless scheduler that allows you to create, run, and manage tasks from one central, managed service. EventBridge Scheduler delivers your tasks reliably, with built-in mechanisms that adjust your schedules based on the availability of downstream targets. The following reference lists the available API actions, and data types for EventBridge Scheduler.
public protocol SchedulerClientProtocol {
    /// Creates the specified schedule.
    func createSchedule(input: CreateScheduleInput) async throws -> CreateScheduleOutputResponse
    /// Creates the specified schedule group.
    func createScheduleGroup(input: CreateScheduleGroupInput) async throws -> CreateScheduleGroupOutputResponse
    /// Deletes the specified schedule.
    func deleteSchedule(input: DeleteScheduleInput) async throws -> DeleteScheduleOutputResponse
    /// Deletes the specified schedule group. Deleting a schedule group results in EventBridge Scheduler deleting all schedules associated with the group. When you delete a group, it remains in a DELETING state until all of its associated schedules are deleted. Schedules associated with the group that are set to run while the schedule group is in the process of being deleted might continue to invoke their targets until the schedule group and its associated schedules are deleted. This operation is eventually consistent.
    func deleteScheduleGroup(input: DeleteScheduleGroupInput) async throws -> DeleteScheduleGroupOutputResponse
    /// Retrieves the specified schedule.
    func getSchedule(input: GetScheduleInput) async throws -> GetScheduleOutputResponse
    /// Retrieves the specified schedule group.
    func getScheduleGroup(input: GetScheduleGroupInput) async throws -> GetScheduleGroupOutputResponse
    /// Returns a paginated list of your schedule groups.
    func listScheduleGroups(input: ListScheduleGroupsInput) async throws -> ListScheduleGroupsOutputResponse
    /// Returns a paginated list of your EventBridge Scheduler schedules.
    func listSchedules(input: ListSchedulesInput) async throws -> ListSchedulesOutputResponse
    /// Lists the tags associated with the Scheduler resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Assigns one or more tags (key-value pairs) to the specified EventBridge Scheduler resource. You can only assign tags to schedule groups.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from the specified EventBridge Scheduler schedule group.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the specified schedule. When you call UpdateSchedule, EventBridge Scheduler uses all values, including empty values, specified in the request and overrides the existing schedule. This is by design. This means that if you do not set an optional field in your request, that field will be set to its system-default value after the update. Before calling this operation, we recommend that you call the GetSchedule API operation and make a note of all optional parameters for your UpdateSchedule call.
    func updateSchedule(input: UpdateScheduleInput) async throws -> UpdateScheduleOutputResponse
}

public protocol SchedulerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SchedulerClientTypes {}
