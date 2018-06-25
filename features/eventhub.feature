Feature: Exercising EventHub SDK

#  Scenario: Just sends for 3 days, no receives. Focus on send failures only.

  @long-running
  Scenario: Generic send and receive on client for 3 days.
    Given the EventHub SDK is installed
    And an EventHub is created with credentials retrieved
    When I send and receive messages for 72 hours
    Then I should receive no errors
    And I can shutdown the sender and receiver cleanly.

#  Scenario: Sender stays idle for 45 minutes and sends some number of messages after each idle duration.

#  Scenario: Sends on partition senders.

#  Scenario: Send and receive to/from a multiple consumer group entity.

#  Scenario: Sends and receives 246KB size messages.

  @long-running
  Scenario: Runs on a 100TU namespace and saturates ingress.
    Given the EventHub SDK is installed
    And an EventHub with 100TU is created with credentials retrieved
    When I send messages for 2 hours
    Then I should achieve throughput of greater than 3600000 messages
    And I should receive no errors
    And I can shutdown the sender cleanly.

  @long-running
  Scenario: Runs on a 100TU namespace and saturates ingress with partition senders for 3 days.
    Given the EventHub SDK is installed
    And an EventHub with 100TU is created with credentials retrieved
    When I send messages to partitions for 2 hours
    Then I should achieve throughput of greater than 1800000 messages to each partition
    And I should receive no errors
    And I can shutdown the sender cleanly.

#  Scenario: Sends and receives 1 byte size messages.

#  Scenario: Single clients parks 500 async sends.

#  Scenario: Sends a set of messages and keeps receiving same set of messages again and again.

#  Scenario: Receives with 60 minutes of receive timeout.

#  Scenario: Receives with 3 seconds of receive timeout.

#  Scenario: Recreates receivers at the beginning of each iteration.

#  Scenario: Recreates receivers with the last known sequence number at the beginning of each iteration.

#  Scenario: Uses epoch receivers.

#  Scenario: Introduces a short idle time after each receive attempt. We use 50 seconds of sleep here.

#  Scenario: Uses pump receivers to receive messages.

#  Scenario: Sends messages with partition key set.

#  Scenario: Issues runtime information API calls as part of send and receive.

#  Scenario: Uses batch sender to send messages.

#  Scenario: Sends and receives by enabling web sockets over AMQP.

#  Scenario: Issues runtime information API calls over web sockets as part of send and receive.
