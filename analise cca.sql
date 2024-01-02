-- criar tabela 
DROP TABLE IF EXISTS ANALISE_CCA; 

CREATE SCHEMA IF NOT EXISTS CONSIGNADO_ERRO_CCA;
USE CONSIGNADO_ERRO_CCA;
CREATE TABLE ANALISE_CCA(
PRODUTO	CHAR(8),
CONTRATO VARCHAR(50), 
CLIENTE	VARCHAR(50),
CPFCNPJ	VARCHAR(18),
DT_DA_EMISSAO VARCHAR(8),
INDEX idx_contrato (Contrato),
INDEX idx_CpfCnpj (CpfCnpj)
) CHARSET=latin1;

LOAD DATA LOCAL INFILE

	'F:/USERS/GERAT/COOCA/ADMINISTRATIVO/PASTAS PESSOAIS/Isabel/Analise_CCA.TXT'

INTO TABLE 

	`ANALISE_CCA`
    
CHARACTER SET latin1
fields terminated by '\t'
ESCAPED BY '\b'
IGNORE 1 Lines;

update ANALISE_CCA set contrato = lpad(replace(contrato, '-', ''), 20, '0');

select *, situacao from analise_cca A
left join `27112023` B
on a.contrato = b.contrato
where b.id is not null;

select * from analise_cca A
left join `27112023` B
on a.contrato = b.contrato
where b.id is null;