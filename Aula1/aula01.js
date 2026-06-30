"use strict";
class ContaBancaria {
    saldo;
    títular;
    constructor(títular, saldoInicial) {
        this.títular = títular;
        this.saldo = saldoInicial;
    }
    depositar(valor) {
        this.saldo += valor;
    }
}
const conta1 = new ContaBancaria("João", 1000);
console.log(conta1.títular);
console.log(conta1.saldo);
conta1.depositar(500);
console.log(conta1.saldo);
