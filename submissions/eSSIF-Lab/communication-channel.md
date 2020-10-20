## Term/Phrase
Communication Channel

## Definition
a (digital or non-digital) means by which two Actors can exchange messages with one another.

## Notes

A Communication Channel is said to be **digital** if it uses a digital means to exchange (digital) messages between two Digital actors.

A Communication Channel is said to be **secure** if it provides the following guarantees:
- every of its endpoint is being used by precisely one Actor;
- during its entire lifetime, each endpoint will only be used by this Actor (endpoint authentication; note that identification of the Actor that uses an endpoint, or its Principal is NOT required);
- only the Actors that use an endpoint are capable of transmitting and reading messages through that channel (message secrecy - typically obtained by encrypting the messages);
- the receiver of a message can determine whether or not the message has been received as it was transmitted (message integrity).

## Relevant Communities
- eSSIF-Lab

## Tags

