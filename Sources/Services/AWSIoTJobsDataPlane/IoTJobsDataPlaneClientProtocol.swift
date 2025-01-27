// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform remote troubleshooting operations. To create a job, you make a job document which is a description of the remote operations to be performed, and you specify a list of targets that should perform the operations. The targets can be individual things, thing groups or both. AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the execution of the job by downloading the job document, performing the operations it specifies, and reporting its progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and for all the targets of the job
public protocol IoTJobsDataPlaneClientProtocol {
    /// Gets details of a job execution.
    func describeJobExecution(input: DescribeJobExecutionInput) async throws -> DescribeJobExecutionOutputResponse
    /// Gets the list of all jobs for a thing that are not in a terminal status.
    func getPendingJobExecutions(input: GetPendingJobExecutionsInput) async throws -> GetPendingJobExecutionsOutputResponse
    /// Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.
    func startNextPendingJobExecution(input: StartNextPendingJobExecutionInput) async throws -> StartNextPendingJobExecutionOutputResponse
    /// Updates the status of a job execution.
    func updateJobExecution(input: UpdateJobExecutionInput) async throws -> UpdateJobExecutionOutputResponse
}

public protocol IoTJobsDataPlaneClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoTJobsDataPlaneClientTypes {}
