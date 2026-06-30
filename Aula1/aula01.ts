class ContaBancaria {
    public saldo:number;
    public títular:string;

    constructor(títular:string, saldoInicial:number) {
        this.títular = títular;
        this.saldo = saldoInicial;
    }

    public depositar(valor:number):void{
        this.saldo += valor;
    }
}
    const conta1 = new ContaBancaria("João", 1000);
    
    console.log(conta1.títular);
    console.log(conta1.saldo);
    conta1.depositar(500);
    console.log(conta1.saldo)