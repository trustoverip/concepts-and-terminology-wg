## Term/Phrase
Wallet

## Definition
the capability to securely store data as requested by Colleague Agents, and to provide stored data to Colleague Agents or Peer Agents, all in compliance with the rules of its Principal's Wallet Policy.

## Short Description
A **Wallet** is is an (architectural) function (a functional component in the [eSSIF-Lab functional architecture](../functional-architecture)) that provides (secure) storage of credentials - regardless of the Party that has issued them (i.e. so-called self-signed credentials may be stored there, too). Another task of the wallet is to (securely) store (private) keys that can be used to sign or seal data on behalf of its Owner. Perhaps the most important task of the Wallet is to ensure that credentials and keys can only become available to another component if they have the same (single) Owner, and will become available if such other component implements a functionality that needs it.

## Functionality

The primary purpose of the Wallet Component is to (securely) store data, and in particular:

-   credentials - both those that have been issued by the issuer (i.e. self-signed credentials) and those that have been obtained from issuers of other Parties, and
-   (private) keys e.g. for signing/sealing data on behalf of its Owner.

Other kinds of data may be stored by a wallet as well - we will have to see what is practical and makes sense.

By ‘securely storing data’ we mean that such data

-   remains available until a request is received from an electronic Colleague that is entitled to request deletion of such data;
-   remains unchanged during the time in which it is stored;

-   can only become available to electronic Colleagues that implement a functionality that requires such access (e.g. a Colleague Holder component);
-   can only be stored by electronic Colleagues that implement a functionality that require such data to be stored (e.g. a Colleague Holder or Issuer component).

It is expected that components other than the Holder and Issuer will (arise and) need access. One example could be a component that is capable of securely signing data on behalf of the Owner. Another example could be a component that implements some kind of credential revocation functionality.

Human beings cannot directly access any Wallet component, not even the ones they own. They need an electronic Agent that is capable of authenticating them as (an Agent of) the Party that owns the Wallet component, and upon successful authentication provides a User Interface through which the Human Being can instruct this electronic Agent to manage the Wallet’s contents.

In order to make the Wallet component work, a Wallet Policy/Preferences object is created by, or on behalf of the Owner, the contents of which remains to be specified.

## Relevant Communities
- eSSIF-Lab

## Tags

