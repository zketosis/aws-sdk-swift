// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

/// Pinpoint SMS and Voice Messaging public facing APIs
public protocol PinpointSMSVoiceClientProtocol {
    /// Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    func createConfigurationSet(input: CreateConfigurationSetInput) async throws -> CreateConfigurationSetOutputResponse
    /// Create a new event destination in a configuration set.
    func createConfigurationSetEventDestination(input: CreateConfigurationSetEventDestinationInput) async throws -> CreateConfigurationSetEventDestinationOutputResponse
    /// Deletes an existing configuration set.
    func deleteConfigurationSet(input: DeleteConfigurationSetInput) async throws -> DeleteConfigurationSetOutputResponse
    /// Deletes an event destination in a configuration set.
    func deleteConfigurationSetEventDestination(input: DeleteConfigurationSetEventDestinationInput) async throws -> DeleteConfigurationSetEventDestinationOutputResponse
    /// Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    func getConfigurationSetEventDestinations(input: GetConfigurationSetEventDestinationsInput) async throws -> GetConfigurationSetEventDestinationsOutputResponse
    /// List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    func listConfigurationSets(input: ListConfigurationSetsInput) async throws -> ListConfigurationSetsOutputResponse
    /// Create a new voice message and send it to a recipient's phone number.
    func sendVoiceMessage(input: SendVoiceMessageInput) async throws -> SendVoiceMessageOutputResponse
    /// Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    func updateConfigurationSetEventDestination(input: UpdateConfigurationSetEventDestinationInput) async throws -> UpdateConfigurationSetEventDestinationOutputResponse
}

public protocol PinpointSMSVoiceClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum PinpointSMSVoiceClientTypes {}
