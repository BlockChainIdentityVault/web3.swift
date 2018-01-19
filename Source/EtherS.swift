//
//  EtherS.swift
//  EtherS
//
//  Created by Sameer Khavanekar on 1/18/18.
//  Copyright © 2018 Radical App LLC. All rights reserved.
//

import Foundation
import Geth

public func encode(_ function: EthFunction) -> Data {
    return EthFunctionEncoder.default.encode(function)
}

public func sign(address: GethAddress, encodedFunctionData: Data, nonce: Int64, gasLimit: GethBigInt, gasPrice: GethBigInt, keystore: GethKeyStore, account: GethAccount, passphrase: String) -> GethTransaction? {
    return EthAcount.sign(address: address, encodedFunctionData: encodedFunctionData, nonce: nonce, gasLimit: gasLimit, gasPrice: gasPrice, keystore: keystore, account: account, passphrase: passphrase)
}
