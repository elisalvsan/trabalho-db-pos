create view contasNaopagas AS
select CR.ID, C.Nome, C.CPF, CR.DataVencimento, CR.Valor
from contareceber as CR
inner join cliente as C
on CR.Cliente_ID = C.ID
where CR.Situacao = 1;

select * from contasNaopagas;