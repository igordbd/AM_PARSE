-- Gerado por Oracle SQL Developer Data Modeler 4.1.1.888
--   em:        2016-08-06 14:25:39 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE ADMINISTRADORA_CARTAO
  (
    cd_admi_cart NUMBER (2) NOT NULL ,
    nm_admi_cart VARCHAR2 (50) NOT NULL ,
    cd_cred      NUMBER (2) NOT NULL ,
    cd_rede_cont NUMBER (5) NOT NULL ,
    nm_rede_cont VARCHAR2 (50) NOT NULL ,
    nu_parc      NUMBER (1) NOT NULL ,
    bl_acei_parc CHAR (1) NOT NULL ,
    qt_parc      NUMBER (1) NOT NULL ,
    dt_venc_parc DATE NOT NULL
  ) ;
COMMENT ON COLUMN ADMINISTRADORA_CARTAO.cd_admi_cart
IS
  'Este atributo recebe o c�digo da entidade ADMINISTRADORA_CARTAO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.nm_admi_cart
IS
  'Este atributo recebe o nome da administradora de cartao da entidade ADMINISTRADORA_CARTAO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 50.' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.cd_cred
IS
  'Este atributo recebe o c�digo da credeciadora de cart�es da entidade ADMINISTRADORA_CARTAO,� mandatorio da tabela , tipo de dado � NUMERIC 2.' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.cd_rede_cont
IS
  'Este atributo recebe o c�digo da controladora  de cart�es da entidade ADMINISTRADORA_CARTAO,� mandatorio da tabela , tipo de dado � NUMERIC 5.' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.nm_rede_cont
IS
  'Este atributo recebe o nome da controladora de cart�es da entidade ADMINISTRADORA_CARTAO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 50.' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.nu_parc
IS
  'Este atributo recebe o quantidade de parcelas da entidade ADMINISTRADORA_CARTAO,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 5.' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.bl_acei_parc
IS
  'Este atributo recebe valor binario do entidade ADMINISTRADORA_CARTAO, � mandat�rio da tabela, tipo de dado � BOOLEAN, tamanho 1.
Valor = 0 para Reprovado | Valor = 1 para Aprovado' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.qt_parc
IS
  'Este atributo recebe o quantidade de parcelas da entidade ADMINISTRADORA_CARTAO,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 1.' ;
  COMMENT ON COLUMN ADMINISTRADORA_CARTAO.dt_venc_parc
IS
  'Este atributo recebe a data do vencimento da entidade ADMINISTRADORA_CARTAO,�  mandatorio da tabela , tipo de dado � DATE.' ;
ALTER TABLE ADMINISTRADORA_CARTAO ADD CONSTRAINT ADMINSTRADORAS_CARTAO_PK PRIMARY KEY ( cd_admi_cart ) ;


CREATE TABLE CARGO
  (
    cd_carg  NUMBER (2) NOT NULL ,
    nm_carg  VARCHAR2 (30) NOT NULL ,
    ds_cargo VARCHAR2 (100)
  ) ;
COMMENT ON COLUMN CARGO.cd_carg
IS
  'Este atributo recebe o c�digo da entidade CARGO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 2.' ;
  COMMENT ON COLUMN CARGO.nm_carg
IS
  'Este atributo recebe o nome do cargo da entidade CARGO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 30.' ;
ALTER TABLE CARGO ADD CONSTRAINT CARGO_PK PRIMARY KEY ( cd_carg ) ;


CREATE TABLE CATEGORIA
  (
    cd_cate  NUMBER (8) NOT NULL ,
    nm_cate  VARCHAR2 (30) NOT NULL ,
    cd_cate1 NUMBER (8) NOT NULL
  ) ;
COMMENT ON COLUMN CATEGORIA.cd_cate
IS
  'Este atributo recebe o c�digo da entidade CATEGORIA,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN CATEGORIA.nm_cate
IS
  'Este atributo recebe o nome da categoria da entidade CATEGORIA,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 30.' ;
ALTER TABLE CATEGORIA ADD CONSTRAINT "{entity}_PK" PRIMARY KEY ( cd_cate ) ;


CREATE TABLE CIDADE
  (
    cd_cida NUMBER (4) NOT NULL ,
    nm_cida VARCHAR2 (100) NOT NULL ,
    cd_esta NUMBER (3) NOT NULL ,
    ds_zona VARCHAR2 (10)
  ) ;
COMMENT ON COLUMN CIDADE.cd_cida
IS
  'Este atributo recebe o c�digo da entidade CIDADE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 4.' ;
  COMMENT ON COLUMN CIDADE.nm_cida
IS
  'Este atributo recebe o nome do cidade da entidade CIDADE,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN CIDADE.ds_zona
IS
  'Este atributo recebe zona que se situa a cidadeda entidade CIDADE, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 10.' ;
ALTER TABLE CIDADE ADD CONSTRAINT CIDADE_PK PRIMARY KEY ( cd_cida ) ;


CREATE TABLE CLIENTE
  (
    cd_clie      NUMBER (7) NOT NULL ,
    nm_clie      VARCHAR2 (100) NOT NULL ,
    nu_rg_clie   CHAR (13) NOT NULL ,
    nu_cpf_clie  VARCHAR2 (14) ,
    nu_cnpj_clie CHAR (18) NOT NULL ,
    tp_pess_clie CHAR (08) NOT NULL ,
    dt_nasc_clie DATE NOT NULL ,
    bl_sexo_clie CHAR (1) NOT NULL ,
    ds_mail      VARCHAR2 (100) NOT NULL ,
    cd_ende      NUMBER (3)
  ) ;
ALTER TABLE CLIENTE ADD CHECK ( tp_pess_clie IN ('Fisica', 'Juridica')) ;
COMMENT ON COLUMN CLIENTE.cd_clie
IS
  'Este atributo recebe o c�digo da entidade CLIENTE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 7.' ;
  COMMENT ON COLUMN CLIENTE.nm_clie
IS
  'Este atributo recebe o nome do cliente da entidade CLIENTE,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN CLIENTE.nu_rg_clie
IS
  'Este atributo recebe o n�mero de rg da entidade CLIENTE,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 13.' ;
  COMMENT ON COLUMN CLIENTE.nu_cpf_clie
IS
  'Este atributo recebe o n�mero do cnpj da entidade CLIENTE,� mand�tori da tabela , tipo de dado � NUMERIC tamanho de 14.' ;
  COMMENT ON COLUMN CLIENTE.nu_cnpj_clie
IS
  'Este atributo recebe o numero do fornecedor da entidade CLIENTE,� mand�torio da tabela , tipo de dado � CHAR, tamanho 18.' ;
  COMMENT ON COLUMN CLIENTE.tp_pess_clie
IS
  'Este atributo recebe o tipo de pessoa da entidade CLIENTE,� mand�tori da tabela , tipo de dado � CHAR tamanho de  8.' ;
  COMMENT ON COLUMN CLIENTE.dt_nasc_clie
IS
  'Este atributo recebe a data de nascimento do cliente da entidade CLIENTE,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN CLIENTE.bl_sexo_clie
IS
  'Este atributo recebe valor binario do entidade CLIENTE, � mandat�rio da tabela, tipo de dado � BOOLEAN, tamanho 1.
Valor = 0 para Masculino | Valor = 1 para Feminino' ;
  COMMENT ON COLUMN CLIENTE.ds_mail
IS
  'Este atributo recebe o e-mail do cliente entidade CLIENTE, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_PK PRIMARY KEY ( cd_clie ) ;


CREATE TABLE COMPRA
  (
    cd_comp NUMBER (8) NOT NULL ,
    vl_comp NUMBER (7,2) NOT NULL ,
    dt_comp DATE NOT NULL ,
    cd_func NUMBER (5) NOT NULL ,
    cd_forn NUMBER (4) NOT NULL
  ) ;
COMMENT ON COLUMN COMPRA.cd_comp
IS
  'Este atributo recebe o c�digo da entidade COMPRA,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN COMPRA.vl_comp
IS
  'Este atributo recebe o valor da compra da entidade COMPRA,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
  COMMENT ON COLUMN COMPRA.dt_comp
IS
  'Este atributo recebe a data da compra da entidade COMPRA,�  mandatorio da tabela , tipo de dado � DATE.' ;
ALTER TABLE COMPRA ADD CONSTRAINT "{entity}_PKv1" PRIMARY KEY ( cd_comp ) ;


CREATE TABLE COMPRA_ITEM
  (
    cd_comp_item  NUMBER (8) NOT NULL ,
    qt_comp_item  NUMBER (3) NOT NULL ,
    cd_comp       NUMBER (8) NOT NULL ,
    cd_prod       NUMBER (6) ,
    cd_entr_esto  NUMBER (8) NOT NULL ,
    vl_uni_compra NUMBER (7,2)
  ) ;
COMMENT ON COLUMN COMPRA_ITEM.cd_comp_item
IS
  'Este atributo recebe o c�digo da entidade COMPRA_ITEM,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN COMPRA_ITEM.qt_comp_item
IS
  'Este atributo recebe o quantidade de compras por item da entidade COMPRA_ITEM,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 3.' ;
CREATE UNIQUE INDEX COMPRA_ITEM__IDX ON COMPRA_ITEM
  (
    cd_entr_esto ASC
  )
  ;
ALTER TABLE COMPRA_ITEM ADD CONSTRAINT "{entity}_PKv2" PRIMARY KEY ( cd_comp_item, cd_comp ) ;


CREATE TABLE ENDERECO
  (
    cd_ende NUMBER (3) NOT NULL ,
    tp_logr CHAR (11) NOT NULL ,
    nm_logr VARCHAR2 (100) NOT NULL ,
    ds_comp VARCHAR2 (100) ,
    nm_bair VARCHAR2 (100) NOT NULL ,
    cd_cida NUMBER (4) NOT NULL ,
    nu_logr NUMBER (5)
  ) ;
COMMENT ON COLUMN ENDERECO.cd_ende
IS
  'Este atributo recebe o c�digo da entidade endere�o,� UID e mandatorio da tabela , tipo de dado � NUMERIC 3.' ;
  COMMENT ON COLUMN ENDERECO.tp_logr
IS
  'Este atributo recebe o tipo do logradouro da entidade ENDERECO,� mand�tori da tabela , tipo de dado � CHAR, tamanho 11.' ;
  COMMENT ON COLUMN ENDERECO.nm_logr
IS
  'Este atributo recebe o nome do logradouro da entidade ENDERECO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN ENDERECO.ds_comp
IS
  'Este atributo recebe um observa��es do complemento da entidade ENDERECO, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN ENDERECO.nm_bair
IS
  'Este atributo recebe o nome do bairro da entidade ENDERECO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN ENDERECO.nu_logr
IS
  'Este atributo recebe o n�mero do logradouro da entidade ENDERECO, � um atributo m�ndat�rio da tabela , tipo de dado � NUMERIC, tamanho 5.' ;
ALTER TABLE ENDERECO ADD CONSTRAINT ENDERECO_PK PRIMARY KEY ( cd_ende ) ;


CREATE TABLE ENTRADA_ESTOQUE
  (
    cd_entr_esto NUMBER (8) NOT NULL ,
    qt_entr_esto NUMBER (7) NOT NULL ,
    dt_entr_esto DATE NOT NULL ,
    ds_entr_esto VARCHAR2 (100) ,
    cd_comp_item NUMBER (8) NOT NULL ,
    cd_esto      NUMBER (8) NOT NULL ,
    cd_comp      NUMBER (8) NOT NULL
  ) ;
COMMENT ON COLUMN ENTRADA_ESTOQUE.cd_entr_esto
IS
  'Este atributo recebe o c�digo da entidade ENTRADA_ESTOQUE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN ENTRADA_ESTOQUE.qt_entr_esto
IS
  'Este atributo recebe o quantidade de itens/lote que entrou no estoque da entidade ENTRADA_ESTOQUE,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7.' ;
  COMMENT ON COLUMN ENTRADA_ESTOQUE.dt_entr_esto
IS
  'Este atributo recebe a data da entrada do produto da entidade ENTRADA_ESTOQUE,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN ENTRADA_ESTOQUE.ds_entr_esto
IS
  'Este atributo recebe a descri��o do item/lote que entrou no estoque entidade ENTRADA_ESTOQUE, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
CREATE UNIQUE INDEX ENTRADA_ESTOQUE__IDX ON ENTRADA_ESTOQUE
  (
    cd_comp_item ASC , cd_comp ASC
  )
  ;
ALTER TABLE ENTRADA_ESTOQUE ADD CONSTRAINT "{entity}_PKv3" PRIMARY KEY ( cd_entr_esto ) ;


CREATE TABLE ESTADO
  (
    cd_esta   NUMBER (3) NOT NULL ,
    nm_esta   VARCHAR2 (80) NOT NULL ,
    sg_esta   CHAR (2) NOT NULL ,
    cd_pais   NUMBER (3) NOT NULL ,
    ds_regiao VARCHAR2 (15)
  ) ;
COMMENT ON COLUMN ESTADO.cd_esta
IS
  'Este atributo recebe o c�digo da entidade ESTADO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 3.' ;
  COMMENT ON COLUMN ESTADO.nm_esta
IS
  'Este atributo recebe o nome do estado da entidade ESTADO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 80.' ;
  COMMENT ON COLUMN ESTADO.sg_esta
IS
  'Este atributo recebe a sigla do estado da entidade ESTADO,� mand�torio da tabela , tipo de dado � CHAR, tamanho 2.' ;
  COMMENT ON COLUMN ESTADO.ds_regiao
IS
  'Este atributo recebe a regi�o do estado da entidade ESTADO, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 15.' ;
ALTER TABLE ESTADO ADD CONSTRAINT ESTADO_PK PRIMARY KEY ( cd_esta ) ;


CREATE TABLE ESTOQUE
  (
    cd_esto NUMBER (8) NOT NULL ,
    nu_quan NUMBER (5) NOT NULL ,
    tp_esto VARCHAR2 (07 CHAR) NOT NULL ,
    cd_fili NUMBER (8) NOT NULL
  ) ;
ALTER TABLE ESTOQUE ADD CHECK ( tp_esto IN ('01', '02')) ;
COMMENT ON COLUMN ESTOQUE.cd_esto
IS
  'Este atributo recebe o c�digo da entidade ESTOQUE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN ESTOQUE.nu_quan
IS
  'Este atributo recebe o quantidade no estoque da entidade ESTOQUE,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 5.' ;
  COMMENT ON COLUMN ESTOQUE.tp_esto
IS
  'Este atributo recebe o tipo do estoque da entidade ESTOQUE,� mand�torio da tabela , tipo de dado � CHAR, tamanho 7.' ;
CREATE UNIQUE INDEX ESTOQUE__IDX ON ESTOQUE ( cd_fili ASC ) ;
ALTER TABLE ESTOQUE ADD CONSTRAINT "{entity}_PKv4" PRIMARY KEY ( cd_esto ) ;


CREATE TABLE EVENTO
  (
    cd_evento        NUMBER (4) NOT NULL ,
    nm_evento        VARCHAR2 (20) NOT NULL ,
    ds_evento        VARCHAR2 (200) ,
    dt_inicio_evento DATE NOT NULL ,
    dt_final_evento  DATE NOT NULL
  ) ;
COMMENT ON COLUMN EVENTO.cd_evento
IS
  'Este atributo recebe o c�digo da entidade EVENTO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 4.' ;
  COMMENT ON COLUMN EVENTO.nm_evento
IS
  'Este atributo recebe o nome do evento da entidade EVENTO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 20.' ;
  COMMENT ON COLUMN EVENTO.ds_evento
IS
  'Este atributo recebe a descri��o do evento da entidade EVENTO,� opcional da tabela , tipo de dado � VARCHAR2, tamanho 200.' ;
  COMMENT ON COLUMN EVENTO.dt_inicio_evento
IS
  'Este atributo recebe a data de inicio do evento da entidade EVENTO,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN EVENTO.dt_final_evento
IS
  'Este atributo recebe a data de fim do evento da entidade EVENTO,�  mandatorio da tabela , tipo de dado � DATE.' ;
ALTER TABLE EVENTO ADD CONSTRAINT "{entity}_PKv5" PRIMARY KEY ( cd_evento ) ;


CREATE TABLE FILIAL
  (
    cd_fili            NUMBER (8) NOT NULL ,
    nm_fili            VARCHAR2 (30) NOT NULL ,
    nu_cnpj_fili       VARCHAR2 (18 CHAR) NOT NULL ,
    cd_esto            NUMBER (8) NOT NULL ,
    cd_ende            NUMBER (3) ,
    ds_filial          VARCHAR2 (100) ,
    ds_tipo_filial     VARCHAR2 (100) ,
    nu_metro_quad      NUMBER (5,2) ,
    tp_planta          VARCHAR2 (10) ,
    dt_abertura_filial DATE ,
    dt_ultima_reforma  DATE NOT NULL
  ) ;
COMMENT ON COLUMN FILIAL.cd_fili
IS
  'Este atributo recebe o c�digo da entidade FILIAL,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN FILIAL.nm_fili
IS
  'Este atributo recebe o nome da filial da entidade FILIAL,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 30.' ;
  COMMENT ON COLUMN FILIAL.nu_cnpj_fili
IS
  'Este atributo recebe o n�mero do cnpj da filial da entidade FILIAL,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 18.' ;
  COMMENT ON COLUMN FILIAL.ds_filial
IS
  'Este atributo recebe a descri��o da entidade FILIAL, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN FILIAL.ds_tipo_filial
IS
  'Este atributo recebe o tipo de loja da entidade FILIAL, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN FILIAL.nu_metro_quad
IS
  'Este atributo recebe o n�mero em m� de loja da entidade FILIAL, � um atributo opcional da tabela , tipo de dado � NUMERIC, tamanho 5 precis�o 2.' ;
  COMMENT ON COLUMN FILIAL.tp_planta
IS
  'Este atributo recebe o tipo da planta da entidade FILIAL, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 10.' ;
  COMMENT ON COLUMN FILIAL.dt_abertura_filial
IS
  'Este atributo recebe a data da abertura da loja da entidade FILIAL, � um atributo mandat�rio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN FILIAL.dt_ultima_reforma
IS
  'Este atributo recebe a data da ultima reforma da loja da entidade FILIAL, � um atributo mandat�rio da tabela , tipo de dado � DATE.' ;
CREATE UNIQUE INDEX FILIAL__IDX ON FILIAL
  (
    cd_esto ASC
  )
  ;
ALTER TABLE FILIAL ADD CONSTRAINT "{entity}_PKv6" PRIMARY KEY ( cd_fili ) ;


CREATE TABLE FORMA_PAGAMENTO
  (
    cd_form_paga NUMBER (4) NOT NULL ,
    nm_form_paga VARCHAR2 (20) NOT NULL ,
    cd_admi_cart NUMBER (2) NOT NULL
  ) ;
COMMENT ON COLUMN FORMA_PAGAMENTO.cd_form_paga
IS
  'Este atributo recebe o c�digo da entidade FORMA_PAGAMENTO, � Chave Prim�ria e Obrigat�rio, tipo de dado � NUM�RICO com 6 d�gitos.' ;
  COMMENT ON COLUMN FORMA_PAGAMENTO.nm_form_paga
IS
  'Este atributo recebe o nome da forma de pagamento, � obrigat�rio, � do tipo VARCHAR2 com at� 20 caracteres e seus dados es�o gravados em um dom�nio. ' ;
ALTER TABLE FORMA_PAGAMENTO ADD CONSTRAINT FORMA_PAGAMENTO_PK PRIMARY KEY ( cd_form_paga ) ;


CREATE TABLE FORNECEDOR
  (
    cd_forn      NUMBER (4) NOT NULL ,
    nm_forne     VARCHAR2 (30) NOT NULL ,
    nu_cnpj_forn VARCHAR2 (18) NOT NULL ,
    ds_forn      VARCHAR2 (100) ,
    cd_ende      NUMBER (3)
  ) ;
COMMENT ON COLUMN FORNECEDOR.cd_forn
IS
  'Este atributo recebe o c�digo da entidade FORNECEDOR,� UID e mandatorio da tabela , tipo de dado � NUMERIC 4.' ;
  COMMENT ON COLUMN FORNECEDOR.nm_forne
IS
  'Este atributo recebe o nome do fornecedor da entidade FORNECEDOR,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 30.' ;
  COMMENT ON COLUMN FORNECEDOR.nu_cnpj_forn
IS
  'Este atributo recebe o numero do fornecedor da entidade FORNECEDOR,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 18.' ;
  COMMENT ON COLUMN FORNECEDOR.ds_forn
IS
  'Este atributo recebe a descri��o do fornecedorda entidade FORNECEDOR, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
ALTER TABLE FORNECEDOR ADD CONSTRAINT "{entity}_PKv7" PRIMARY KEY ( cd_forn ) ;


CREATE TABLE FUNCIONARIO
  (
    cd_func                NUMBER (5) NOT NULL ,
    nm_func                VARCHAR2 (100) NOT NULL ,
    nu_rg_func             CHAR (13) NOT NULL ,
    nu_cpf_func            CHAR (14) NOT NULL ,
    vl_sala                NUMBER (7,2) NOT NULL ,
    vl_comi                NUMBER (9,2) ,
    dt_admi                DATE ,
    dt_demi                DATE ,
    ds_estado_civil        VARCHAR2 (40) ,
    qt_dependente          NUMBER (2) NOT NULL ,
    ds_grau_instrucao      VARCHAR2 (100) ,
    bl_grau_instrucao_comp CHAR (1) NOT NULL ,
    bl_atual_contratado    CHAR (1) NOT NULL ,
    cd_carg                NUMBER (2) NOT NULL ,
    cd_func1               NUMBER (5) NOT NULL ,
    cd_ende                NUMBER (3) ,
    cd_ende1               NUMBER (3) NOT NULL
  ) ;
COMMENT ON COLUMN FUNCIONARIO.cd_func
IS
  'Este atributo recebe o c�digo da entidade FUNCIONARIO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 5.' ;
  COMMENT ON COLUMN FUNCIONARIO.nm_func
IS
  'Este atributo recebe o nome do funcionario da entidade FUNCIONARIO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN FUNCIONARIO.nu_rg_func
IS
  'Este atributo recebe o n�mero de rg da entidade FUNCIONARIO,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 13.' ;
  COMMENT ON COLUMN FUNCIONARIO.nu_cpf_func
IS
  'Este atributo recebe o n�mero do cnpj da entidade FUNCIONARIO,� mand�tori da tabela , tipo de dado � NUMERIC tamanho de 14.' ;
  COMMENT ON COLUMN FUNCIONARIO.vl_sala
IS
  'Este atributo recebe o valor do salario da entidade FUNCIONARIO,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
  COMMENT ON COLUMN FUNCIONARIO.vl_comi
IS
  'Este atributo recebe o valor da comissao da entidade FUNCIONARIO,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
  COMMENT ON COLUMN FUNCIONARIO.dt_admi
IS
  'Este atributo recebe a data de admissao da entidade FUNCIONARIO,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN FUNCIONARIO.dt_demi
IS
  'Este atributo recebe a data de demissao da entidade FUNCIONARIO,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN FUNCIONARIO.ds_estado_civil
IS
  'Este atributo recebe o estado civil  da entidade FUNCIONARIO, � um atributo mandat�rio da tabela , tipo de dado � VARCHAR2, tamanho 40.' ;
  COMMENT ON COLUMN FUNCIONARIO.qt_dependente
IS
  'Este atributo recebe a quantidade  de dependentes da entidade FUNCIONARIO,� mandat�rio da tabela , tipo de dado � NUMERIC, tamanho 7.' ;
  COMMENT ON COLUMN FUNCIONARIO.ds_grau_instrucao
IS
  'Este atributo recebe o grau de instru��o da entidade FUNCIONARIO, � um atributo mandat�rio da tabela , tipo de dado � VARCHAR2, tamanho 40.' ;
  COMMENT ON COLUMN FUNCIONARIO.bl_grau_instrucao_comp
IS
  'Este atributo recebe valor grau de intru��o concluido da entidade FUNCIONARIO, � mandat�rio da tabela, tipo de dado � BOOLEAN, tamanho 1.
Valor = 0 para Incompleto | Valor = 1 para Completo' ;
  COMMENT ON COLUMN FUNCIONARIO.bl_atual_contratado
IS
  'Este atributo recebe valor da situa��o de contrato da entidade FUNCIONARIO, � mandat�rio da tabela, tipo de dado � BOOLEAN, tamanho 1.
Valor = 0 para Inativo | Valor = 1 para Ativo' ;
ALTER TABLE FUNCIONARIO ADD CONSTRAINT FUNCIONARIO_PK PRIMARY KEY ( cd_func ) ;


CREATE TABLE IMPOSTO_ITEM
  (
    cd_impo_item NUMBER (8) NOT NULL ,
    vl_impo_item NUMBER (7,2) NOT NULL ,
    ds_impo_item VARCHAR2 (100) ,
    cd_prod      NUMBER (6)
  ) ;
COMMENT ON COLUMN IMPOSTO_ITEM.cd_impo_item
IS
  'Este atributo recebe o c�digo da entidade IMPOSTO_ITEM,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN IMPOSTO_ITEM.vl_impo_item
IS
  'Este atributo recebe o valor do imposto aplicado da entidade IMPOSTO_ITEM,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
  COMMENT ON COLUMN IMPOSTO_ITEM.ds_impo_item
IS
  'Este atributo recebe uma descri��o da entidade IMPOSTO_ITEM, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
ALTER TABLE IMPOSTO_ITEM ADD CONSTRAINT "{entity}_PKv8" PRIMARY KEY ( cd_impo_item ) ;


CREATE TABLE MARCA
  (
    cd_marc NUMBER (4) NOT NULL ,
    nm_marc VARCHAR2 (50) NOT NULL
  ) ;
COMMENT ON COLUMN MARCA.cd_marc
IS
  'Este atributo recebe o c�digo da entidade MARCA,� UID e mandatorio da tabela , tipo de dado � NUMERIC 4.' ;
  COMMENT ON COLUMN MARCA.nm_marc
IS
  'Este atributo recebe o nome da marca da entidade MARCA,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 50.' ;
ALTER TABLE MARCA ADD CONSTRAINT "{entity}_PKv9" PRIMARY KEY ( cd_marc ) ;


CREATE TABLE NATUREZA_OPERACAO_NFE
  (
    cd_natu_oper_nfe NUMBER (4) NOT NULL ,
    ds_natu_oper_nfe VARCHAR2 (100)
  ) ;
COMMENT ON COLUMN NATUREZA_OPERACAO_NFE.cd_natu_oper_nfe
IS
  'Este atributo recebe o c�digo da entidade NATUREZA_OPERACAO_NFE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 4.' ;
  COMMENT ON COLUMN NATUREZA_OPERACAO_NFE.ds_natu_oper_nfe
IS
  'Este atributo recebe uma descri��o da entidade NATUREZA_OPERACAO_NFE, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
ALTER TABLE NATUREZA_OPERACAO_NFE ADD CONSTRAINT "{entity}_PKv10" PRIMARY KEY ( cd_natu_oper_nfe ) ;


CREATE TABLE NOTA_FISCAL
  (
    cd_nota_fisc     NUMBER (9) NOT NULL ,
    dt_emis          DATE NOT NULL ,
    vl_nota_fisc     NUMBER (7,2) NOT NULL ,
    ds_obse          VARCHAR2 (100) ,
    cd_impo_item     NUMBER (8) ,
    cd_comp          NUMBER (8) ,
    cd_vend          NUMBER (8) ,
    cd_seri_nfe      NUMBER (2) NOT NULL ,
    cd_natu_oper_nfe NUMBER (4) NOT NULL
  ) ;
COMMENT ON COLUMN NOTA_FISCAL.cd_nota_fisc
IS
  'Este atributo recebe o c�digo da nota fiscal entidade NOTA_FISCAL,� UID e mandatorio da tabela , tipo de dado � NUMERIC 9.' ;
  COMMENT ON COLUMN NOTA_FISCAL.dt_emis
IS
  'Este atributo recebe a data da emissao da entidade NOTA_FISCAL,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN NOTA_FISCAL.vl_nota_fisc
IS
  'Este atributo recebe o valor pago da entidade NOTA_FISCAL,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
  COMMENT ON COLUMN NOTA_FISCAL.ds_obse
IS
  'Este atributo recebe um texto com observa��es da entidade NOTA_FISCAL, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
ALTER TABLE NOTA_FISCAL ADD CONSTRAINT "{entity}_PKv11" PRIMARY KEY ( cd_nota_fisc ) ;


CREATE TABLE PAGAMENTO
  (
    cd_paga      NUMBER (8) NOT NULL ,
    dt_paga      DATE NOT NULL ,
    vl_paga      NUMBER (7,2) NOT NULL ,
    cd_form_paga NUMBER (4) NOT NULL ,
    cd_nota_fisc NUMBER (9)
  ) ;
COMMENT ON COLUMN PAGAMENTO.cd_paga
IS
  'Este atributo recebe o c�digo da entidade PAGAMENTO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN PAGAMENTO.dt_paga
IS
  'Este atributo recebe a data do pagamento da entidade
PAGAMENTO,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN PAGAMENTO.vl_paga
IS
  'Este atributo recebe o valor do pagamento da entidade PAGAMENTO,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
ALTER TABLE PAGAMENTO ADD CONSTRAINT PAGAMENTO_PK PRIMARY KEY ( cd_paga ) ;


CREATE TABLE PAIS
  (
    cd_pais NUMBER (3) NOT NULL ,
    nm_pais VARCHAR2 (100) NOT NULL
  ) ;
COMMENT ON COLUMN PAIS.cd_pais
IS
  'Este atributo recebe o c�digo da entidade PAIS,� UID e mandatorio da tabela , tipo de dado � NUMERIC 3.' ;
  COMMENT ON COLUMN PAIS.nm_pais
IS
  'Este atributo recebe o nome do pais da entidade PAIS,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
ALTER TABLE PAIS ADD CONSTRAINT PAIS_PK PRIMARY KEY ( cd_pais ) ;


CREATE TABLE PESQUISA
  (
    cd_pesq      NUMBER (8) NOT NULL ,
    vl_pesq_aten NUMBER (8) ,
    vl_pesq_infr NUMBER (8) ,
    cd_vend      NUMBER (8) NOT NULL ,
    cd_func      NUMBER (5) NOT NULL
  ) ;
COMMENT ON COLUMN PESQUISA.cd_pesq
IS
  'Este atributo recebe o c�digo da entidade PESQUISA,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN PESQUISA.vl_pesq_aten
IS
  'Este atributo recebe a nota de satisfa��o do cliente no atendimento da entidade PESQUISA,� opcional da tabela , tipo de dado � NUMERIC tamanho 8.' ;
  COMMENT ON COLUMN PESQUISA.vl_pesq_infr
IS
  'Este atributo recebe a nota de satisfa��o do cliente sobre a infrestutura da entidade PESQUISA,� opcional da tabela , tipo de dado � NUMERIC tamanho 8.' ;
CREATE UNIQUE INDEX PESQUISA__IDX ON PESQUISA
  (
    cd_func ASC
  )
  ;
CREATE UNIQUE INDEX PESQUISA__IDXv1 ON PESQUISA
  (
    cd_vend ASC
  )
  ;
ALTER TABLE PESQUISA ADD CONSTRAINT "{entity}_PKv12" PRIMARY KEY ( cd_pesq ) ;


CREATE TABLE PRODUTO
  (
    cd_prod              NUMBER (6) NOT NULL ,
    nm_prod              VARCHAR2 (100) NOT NULL ,
    vl_prod_v            NUMBER (7,2) NOT NULL ,
    vl_prod_c            NUMBER (7,2) NOT NULL ,
    ds_produto           VARCHAR2 (100) ,
    tp_embalagem         VARCHAR2 (30) ,
    nu_largura_embalagem NUMBER (4,2) ,
    nu_altura_embalagem  NUMBER (4,2) ,
    nu_peso              NUMBER (6,2) ,
    cd_marc              NUMBER (4) NOT NULL ,
    cd_esto              NUMBER (8) NOT NULL ,
    cd_cate              NUMBER (8) NOT NULL
  ) ;
COMMENT ON COLUMN PRODUTO.cd_prod
IS
  'Este atributo recebe o c�digo da entidade PRODUTO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN PRODUTO.nm_prod
IS
  'Este atributo recebe o nome do produto da entidade PRODUTO,� mand�torio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN PRODUTO.vl_prod_v
IS
  'Este atributo recebe o valor do produto da entidade PRODUTO,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
  COMMENT ON COLUMN PRODUTO.ds_produto
IS
  'Este atributo recebe a descri��o da produto da entidade PRODUTO, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN PRODUTO.tp_embalagem
IS
  'Este atributo recebe o tipo da embalagem da entidade PRODUTO, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 30.' ;
  COMMENT ON COLUMN PRODUTO.nu_largura_embalagem
IS
  'Este atributo recebe o n�mero da largura embalagem da entidade PRODUTO, � um atributo opcional da tabela , tipo de dado � NUMERIC, tamanho 4 precis�o 2.' ;
  COMMENT ON COLUMN PRODUTO.nu_altura_embalagem
IS
  'Este atributo recebe o n�mero da altura embalagem da entidade PRODUTO, � um atributo opcional da tabela , tipo de dado � NUMERIC, tamanho 4 precis�o 2.' ;
  COMMENT ON COLUMN PRODUTO.nu_peso
IS
  'Este atributo recebe o n�mero do peso embalagem da entidade PRODUTO, � um atributo opcional da tabela , tipo de dado � NUMERIC, tamanho 6 precis�o 2.' ;
ALTER TABLE PRODUTO ADD CONSTRAINT PRODUTO_PK PRIMARY KEY ( cd_prod ) ;


CREATE TABLE PROMOCAO_GRUPO
  (
    cd_prom_grupo     NUMBER (4) NOT NULL ,
    cd_prom           NUMBER (4) ,
    vl_uni_grupo_prom NUMBER (7,2) NOT NULL ,
    cd_prod           NUMBER (6) NOT NULL
  ) ;
CREATE UNIQUE INDEX PROMOCAO_GRUPO__IDX ON PROMOCAO_GRUPO
  (
    cd_prod ASC
  )
  ;
ALTER TABLE PROMOCAO_GRUPO ADD CONSTRAINT PROMOCAO_GRUPO_PK PRIMARY KEY ( cd_prom_grupo ) ;


CREATE TABLE PROMOCAO_ITEM
  (
    cd_prom_item     NUMBER (4) NOT NULL ,
    cd_prom          NUMBER (4) ,
    cd_vend          NUMBER (8) NOT NULL ,
    vl_uni_prom_item NUMBER (7,2) NOT NULL ,
    cd_prod          NUMBER (6) NOT NULL
  ) ;
CREATE UNIQUE INDEX PROMOCAO_ITEM__IDX ON PROMOCAO_ITEM
  (
    cd_prod ASC
  )
  ;
ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT PROMOCAO_ITEM_PK PRIMARY KEY ( cd_prom_item, cd_vend ) ;


CREATE TABLE PROMOCOES
  (
    cd_prom         NUMBER (4) NOT NULL ,
    dt_inic         DATE NOT NULL ,
    dt_fim          DATE NOT NULL ,
    ds_prom         VARCHAR2 (150) NOT NULL ,
    vl_prom         NUMBER (7,2) NOT NULL ,
    cd_fili         NUMBER (8) ,
    tp_prom         VARCHAR2 (50) NOT NULL ,
    ds_publico_alvo VARCHAR2 (100) ,
    ds_objetivo_promocao CLOB NOT NULL ,
    ds_cupom_desconto CLOB ,
    tp_midia          VARCHAR2 (30) NOT NULL ,
    nu_perc_desconto  NUMBER (2) NOT NULL ,
    nu_minimo         NUMBER (4) NOT NULL ,
    nu_maximo         NUMBER (4) ,
    vl_custo_promocao NUMBER (7,2) ,
    qt_cupom          NUMBER (7)
  ) ;
COMMENT ON COLUMN PROMOCOES.cd_prom
IS
  'Este atributo recebe o c�digo da entidade PROMOCAO,� UID e mandatorio da tabela , tipo de dado � NUMERIC 3.' ;
  COMMENT ON COLUMN PROMOCOES.dt_inic
IS
  'Este atributo recebe a data inicio da entidade PROMOCAO,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN PROMOCOES.dt_fim
IS
  'Este atributo recebe a data fim da entidade PROMOCAO,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN PROMOCOES.ds_prom
IS
  'Este atributo recebe um descri��o da promo��o da entidade PROMOCAO, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 150.' ;
  COMMENT ON COLUMN PROMOCOES.tp_prom
IS
  'Este atributo recebe o tipoda promo��o da entidade PROMOCAO, � um atributo mandat�rio da tabela , tipo de dado � VARCHAR2, tamanho 50.' ;
  COMMENT ON COLUMN PROMOCOES.ds_publico_alvo
IS
  'Este atributo recebe um descri��o do publico alvo da entidade PROMOCAO, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
  COMMENT ON COLUMN PROMOCOES.ds_objetivo_promocao
IS
  'Este atributo recebe o objetivo da promo��o da entidade PROMOCAO, � um atributo mandat�rio da tabela , tipo de dado � TEXT.' ;
  COMMENT ON COLUMN PROMOCOES.ds_cupom_desconto
IS
  'Este atributo recebe o descritivo do cupom de desconto da entidade PROMOCAO, � um atributo opcional da tabela , tipo de dado � TEXT.' ;
  COMMENT ON COLUMN PROMOCOES.tp_midia
IS
  'Este atributo recebe o tipo de m�dia da entidade PROMOCAO, � um atributo mandat�rio da tabela , tipo de dado � ARCHAR2, tamanho 30.' ;
  COMMENT ON COLUMN PROMOCOES.nu_perc_desconto
IS
  'Este atributo recebe o n�mero do percentual de desconto da entidade PROMOCAO,� mandat�rio da tabela , tipo de dado � NUMERIC tamanho de 2.' ;
  COMMENT ON COLUMN PROMOCOES.nu_minimo
IS
  'Este atributo recebe a quantidade minima de itens da entidade PROMOCAO,� opcional da tabela , tipo de dado � NUMERIC tamanho de 4.' ;
  COMMENT ON COLUMN PROMOCOES.nu_maximo
IS
  'Este atributo recebe a quantidade m�xima de itens da entidade PROMOCAO,� opcional da tabela , tipo de dado � NUMERIC tamanho de 4.' ;
  COMMENT ON COLUMN PROMOCOES.vl_custo_promocao
IS
  'Este atributo recebe o valor de custeio da promocao da entidade PROMOCAO,� opcional da tabela , tipo de dado � NUMERIC tamanho de 7,2.' ;
  COMMENT ON COLUMN PROMOCOES.qt_cupom
IS
  'Este atributo recebe a quantidade  de cupons da entidade PROMOCAO,� opcional da tabela , tipo de dado � NUMERIC, tamanho 7.' ;
ALTER TABLE PROMOCOES ADD CONSTRAINT PROMOCOES_PK PRIMARY KEY ( cd_prom ) ;


CREATE TABLE R_EVENTO_FIIAL
  (
    EVENTO_cd_evento NUMBER (4) NOT NULL ,
    FILIAL_cd_fili   NUMBER (8) NOT NULL
  ) ;
ALTER TABLE R_EVENTO_FIIAL ADD CONSTRAINT R_EVENTO_FIIAL_PK PRIMARY KEY ( EVENTO_cd_evento, FILIAL_cd_fili ) ;


CREATE TABLE R_PROM_GRUP_VEND
  (
    PROMOCAO_GRUPO_cd_prom_grupo NUMBER (4) NOT NULL ,
    VENDA_cd_vend                NUMBER (8) NOT NULL
  ) ;
ALTER TABLE R_PROM_GRUP_VEND ADD CONSTRAINT R_PROM_GRUP_VEND_PK PRIMARY KEY ( PROMOCAO_GRUPO_cd_prom_grupo, VENDA_cd_vend ) ;


CREATE TABLE R_PROM_VEND
  (
    PROMOCOES_cd_prom NUMBER (4) NOT NULL ,
    VENDA_cd_vend     NUMBER (8) NOT NULL
  ) ;
ALTER TABLE R_PROM_VEND ADD CONSTRAINT R_PROM_VEND_PK PRIMARY KEY ( PROMOCOES_cd_prom, VENDA_cd_vend ) ;


CREATE TABLE SAIDA_ESTOQUE
  (
    cd_said_esto NUMBER (8) NOT NULL ,
    qt_said_esto NUMBER (5) NOT NULL ,
    dt_said_esto DATE NOT NULL ,
    ds_said_esto VARCHAR2 (100) ,
    cd_esto      NUMBER (8) NOT NULL ,
    cd_vend_item NUMBER (8) NOT NULL ,
    cd_vend      NUMBER (8) NOT NULL
  ) ;
COMMENT ON COLUMN SAIDA_ESTOQUE.cd_said_esto
IS
  'Este atributo recebe o c�digo da entidade SAIDA_ESTOQUE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN SAIDA_ESTOQUE.qt_said_esto
IS
  'Este atributo recebe o quantidade de itens que sairam do estoque da entidade SAIDA_ESTOQUE,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 5.' ;
  COMMENT ON COLUMN SAIDA_ESTOQUE.dt_said_esto
IS
  'Este atributo recebe a data da saida do estoque da entidade SAIDA_ESTOQUE,�  mandatorio da tabela , tipo de dado � DATE.' ;
  COMMENT ON COLUMN SAIDA_ESTOQUE.ds_said_esto
IS
  'Este atributo recebe a descri��o do item/lote  que saiu do estoque entidade SAIDA_ESTOQUE, � um atributo opcional da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
CREATE UNIQUE INDEX SAIDA_ESTOQUE__IDX ON SAIDA_ESTOQUE
  (
    cd_vend_item ASC , cd_vend ASC
  )
  ;
ALTER TABLE SAIDA_ESTOQUE ADD CONSTRAINT "{entity}_PKv13" PRIMARY KEY ( cd_said_esto ) ;


CREATE TABLE SERIE_NFE
  (
    cd_seri_nfe NUMBER (2) NOT NULL ,
    ds_seri_nfe VARCHAR2 (100 CHAR) NOT NULL
  ) ;
COMMENT ON COLUMN SERIE_NFE.cd_seri_nfe
IS
  'Este atributo recebe o c�digo da entidade SERIE_NFE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 2.' ;
  COMMENT ON COLUMN SERIE_NFE.ds_seri_nfe
IS
  'Este atributo recebe uma descri��o da entidade SERIE_NFE, � um atributo mandaorio da tabela , tipo de dado � VARCHAR2, tamanho 100.' ;
ALTER TABLE SERIE_NFE ADD CONSTRAINT "{entity}_PKv14" PRIMARY KEY ( cd_seri_nfe ) ;


CREATE TABLE TELEFONE
  (
    cd_tele NUMBER (7) NOT NULL ,
    tp_tele CHAR (11) ,
    nu_ddd  CHAR (3) NOT NULL ,
    nu_tele CHAR (9) NOT NULL ,
    cd_pais NUMBER (3) ,
    cd_func NUMBER (5) ,
    cd_fili NUMBER (8) ,
    cd_forn NUMBER (4) ,
    cd_clie NUMBER (7)
  ) ;
COMMENT ON COLUMN TELEFONE.cd_tele
IS
  'Este atributo recebe o c�digo da entidade TELEFONE,� UID e mandatorio da tabela , tipo de dado � NUMERIC 7.' ;
  COMMENT ON COLUMN TELEFONE.tp_tele
IS
  'Este atributo recebe o tipo do telefone da entidade TELEFONE,� opcional da tabela , tipo de dado � CHAR, tamanho 11.' ;
  COMMENT ON COLUMN TELEFONE.nu_ddd
IS
  'Este atributo recebe o n�mero do ddd da entidade TELEFONE,� mandat�rio da tabela , tipo de dado � CHAR, tamanho 3.' ;
  COMMENT ON COLUMN TELEFONE.nu_tele
IS
  'Este atributo recebe o n�mero do telefone da entidade TELEFONE,� mandat�rio da tabela , tipo de dado � CHAR, tamanho 9.' ;
ALTER TABLE TELEFONE ADD CONSTRAINT TELEFONE_PK PRIMARY KEY ( cd_tele ) ;


CREATE TABLE VENDA
  (
    cd_vend NUMBER (8) NOT NULL ,
    vl_vend NUMBER (7,2) NOT NULL ,
    dt_vend DATE NOT NULL ,
    cd_func NUMBER (5) NOT NULL ,
    cd_clie NUMBER (7) NOT NULL
  ) ;
COMMENT ON COLUMN VENDA.cd_vend
IS
  'Este atributo recebe o c�digo da entidade VENDA,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN VENDA.vl_vend
IS
  'Este atributo recebe o valor da venda da entidade VENDA,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 7, escala 2.' ;
  COMMENT ON COLUMN VENDA.dt_vend
IS
  'Este atributo recebe a data da venda da entidade VENDA,�  mandatorio da tabela , tipo de dado � DATE.' ;
ALTER TABLE VENDA ADD CONSTRAINT VENDA_PK PRIMARY KEY ( cd_vend ) ;


CREATE TABLE VENDA_ITEM
  (
    cd_vend_item NUMBER (8) NOT NULL ,
    cd_vend      NUMBER (8) NOT NULL ,
    qt_vend_item NUMBER (3) NOT NULL ,
    cd_said_esto NUMBER (8) NOT NULL ,
    cd_prod      NUMBER (6) NOT NULL ,
    vl_uni_venda NUMBER (7,2) NOT NULL
  ) ;
COMMENT ON COLUMN VENDA_ITEM.cd_vend_item
IS
  'Este atributo recebe o c�digo da entidade VENDA_ITEM,� UID e mandatorio da tabela , tipo de dado � NUMERIC 8.' ;
  COMMENT ON COLUMN VENDA_ITEM.qt_vend_item
IS
  'Este atributo recebe o quantidade de itens vendidos da entidade VENDA_ITEM,� mandatorio da tabela , tipo de dado � NUMERIC tamanho 3.' ;
CREATE UNIQUE INDEX VENDA_ITEM__IDX ON VENDA_ITEM
  (
    cd_said_esto ASC
  )
  ;
ALTER TABLE VENDA_ITEM ADD CONSTRAINT "{entity}_PKv15" PRIMARY KEY ( cd_vend_item, cd_vend ) ;


ALTER TABLE FORMA_PAGAMENTO ADD CONSTRAINT FK_ADMT_CART_FORM_PGTO FOREIGN KEY ( cd_admi_cart ) REFERENCES ADMINISTRADORA_CARTAO ( cd_admi_cart ) ;

ALTER TABLE R_EVENTO_FIIAL ADD CONSTRAINT FK_ASS_10 FOREIGN KEY ( FILIAL_cd_fili ) REFERENCES FILIAL ( cd_fili ) ;

ALTER TABLE R_PROM_GRUP_VEND ADD CONSTRAINT FK_ASS_13 FOREIGN KEY ( PROMOCAO_GRUPO_cd_prom_grupo ) REFERENCES PROMOCAO_GRUPO ( cd_prom_grupo ) ;

ALTER TABLE R_PROM_GRUP_VEND ADD CONSTRAINT FK_ASS_14 FOREIGN KEY ( VENDA_cd_vend ) REFERENCES VENDA ( cd_vend ) ;

ALTER TABLE R_PROM_VEND ADD CONSTRAINT FK_ASS_17 FOREIGN KEY ( PROMOCOES_cd_prom ) REFERENCES PROMOCOES ( cd_prom ) ;

ALTER TABLE R_PROM_VEND ADD CONSTRAINT FK_ASS_18 FOREIGN KEY ( VENDA_cd_vend ) REFERENCES VENDA ( cd_vend ) ;

ALTER TABLE R_EVENTO_FIIAL ADD CONSTRAINT FK_ASS_9 FOREIGN KEY ( EVENTO_cd_evento ) REFERENCES EVENTO ( cd_evento ) ;

ALTER TABLE CATEGORIA ADD CONSTRAINT FK_CATE_CATE FOREIGN KEY ( cd_cate1 ) REFERENCES CATEGORIA ( cd_cate ) ;

ALTER TABLE PRODUTO ADD CONSTRAINT FK_CATE_PROD FOREIGN KEY ( cd_cate ) REFERENCES CATEGORIA ( cd_cate ) ;

ALTER TABLE PROMOCOES ADD CONSTRAINT FK_FILI_PROM FOREIGN KEY ( cd_fili ) REFERENCES FILIAL ( cd_fili ) ;

ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PGTO_FORM_PGTO FOREIGN KEY ( cd_form_paga ) REFERENCES FORMA_PAGAMENTO ( cd_form_paga ) ;

ALTER TABLE PROMOCAO_GRUPO ADD CONSTRAINT FK_PROM_PROM_GRUPO FOREIGN KEY ( cd_prom ) REFERENCES PROMOCOES ( cd_prom ) ;

ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT FK_PROM_PROM_ITEM FOREIGN KEY ( cd_prom ) REFERENCES PROMOCOES ( cd_prom ) ;

ALTER TABLE FUNCIONARIO ADD CONSTRAINT R_ENDERECO_FUNCIONARIO FOREIGN KEY ( cd_ende1 ) REFERENCES ENDERECO ( cd_ende ) ;

ALTER TABLE PESQUISA ADD CONSTRAINT R_PESQ_FUNC FOREIGN KEY ( cd_func ) REFERENCES FUNCIONARIO ( cd_func ) ;

ALTER TABLE PROMOCAO_GRUPO ADD CONSTRAINT R_PROM_GRUP_PROD FOREIGN KEY ( cd_prod ) REFERENCES PRODUTO ( cd_prod ) ;

ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT R_PROM_ITEM_PROD FOREIGN KEY ( cd_prod ) REFERENCES PRODUTO ( cd_prod ) ;

ALTER TABLE PROMOCAO_ITEM ADD CONSTRAINT R_PROM_ITEM_VEND FOREIGN KEY ( cd_vend ) REFERENCES VENDA ( cd_vend ) ;

ALTER TABLE PESQUISA ADD CONSTRAINT R_VENDA_PESQ FOREIGN KEY ( cd_vend ) REFERENCES VENDA ( cd_vend ) ;

ALTER TABLE CIDADE ADD CONSTRAINT fk_cidade_estado FOREIGN KEY ( cd_esta ) REFERENCES ESTADO ( cd_esta ) ;

ALTER TABLE CLIENTE ADD CONSTRAINT fk_cliente_endereco FOREIGN KEY ( cd_ende ) REFERENCES ENDERECO ( cd_ende ) ;

ALTER TABLE ENTRADA_ESTOQUE ADD CONSTRAINT fk_comp_item_ent_estoque FOREIGN KEY ( cd_comp_item, cd_comp ) REFERENCES COMPRA_ITEM ( cd_comp_item, cd_comp ) ;

ALTER TABLE COMPRA_ITEM ADD CONSTRAINT fk_comp_item_ent_estoquev1 FOREIGN KEY ( cd_entr_esto ) REFERENCES ENTRADA_ESTOQUE ( cd_entr_esto ) ;

ALTER TABLE COMPRA_ITEM ADD CONSTRAINT fk_compra_compra_item FOREIGN KEY ( cd_comp ) REFERENCES COMPRA ( cd_comp ) ;

ALTER TABLE COMPRA ADD CONSTRAINT fk_compra_fornecedor FOREIGN KEY ( cd_forn ) REFERENCES FORNECEDOR ( cd_forn ) ;

ALTER TABLE COMPRA_ITEM ADD CONSTRAINT fk_compra_produto FOREIGN KEY ( cd_prod ) REFERENCES PRODUTO ( cd_prod ) ;

ALTER TABLE ENDERECO ADD CONSTRAINT fk_endereco_cidade FOREIGN KEY ( cd_cida ) REFERENCES CIDADE ( cd_cida ) ;

ALTER TABLE FILIAL ADD CONSTRAINT fk_endereco_filial FOREIGN KEY ( cd_ende ) REFERENCES ENDERECO ( cd_ende ) ;

ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_endereco_funcionario FOREIGN KEY ( cd_ende ) REFERENCES ENDERECO ( cd_ende ) ;

ALTER TABLE FORNECEDOR ADD CONSTRAINT fk_endreco_fornecedor FOREIGN KEY ( cd_ende ) REFERENCES ENDERECO ( cd_ende ) ;

ALTER TABLE ESTADO ADD CONSTRAINT fk_estado_pais FOREIGN KEY ( cd_pais ) REFERENCES PAIS ( cd_pais ) ;

ALTER TABLE ENTRADA_ESTOQUE ADD CONSTRAINT fk_estoque_ent_estoque FOREIGN KEY ( cd_esto ) REFERENCES ESTOQUE ( cd_esto ) ;

ALTER TABLE FILIAL ADD CONSTRAINT fk_estoque_filial FOREIGN KEY ( cd_esto ) REFERENCES ESTOQUE ( cd_esto ) ;

ALTER TABLE ESTOQUE ADD CONSTRAINT fk_estoque_filialv1 FOREIGN KEY ( cd_fili ) REFERENCES FILIAL ( cd_fili ) ;

ALTER TABLE PRODUTO ADD CONSTRAINT fk_estoque_produto FOREIGN KEY ( cd_esto ) REFERENCES ESTOQUE ( cd_esto ) ;

ALTER TABLE SAIDA_ESTOQUE ADD CONSTRAINT fk_estoque_sai_estoque FOREIGN KEY ( cd_esto ) REFERENCES ESTOQUE ( cd_esto ) ;

ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_funcionario_cargo FOREIGN KEY ( cd_carg ) REFERENCES CARGO ( cd_carg ) ;

ALTER TABLE COMPRA ADD CONSTRAINT fk_funcionario_compra FOREIGN KEY ( cd_func ) REFERENCES FUNCIONARIO ( cd_func ) ;

ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_funcionario_funcionario FOREIGN KEY ( cd_func1 ) REFERENCES FUNCIONARIO ( cd_func ) ;

ALTER TABLE PRODUTO ADD CONSTRAINT fk_marca_produto FOREIGN KEY ( cd_marc ) REFERENCES MARCA ( cd_marc ) ;

ALTER TABLE NOTA_FISCAL ADD CONSTRAINT fk_nota_fisc_impo_item FOREIGN KEY ( cd_impo_item ) REFERENCES IMPOSTO_ITEM ( cd_impo_item ) ;

ALTER TABLE NOTA_FISCAL ADD CONSTRAINT fk_nota_fisc_natu_oper_nfe FOREIGN KEY ( cd_natu_oper_nfe ) REFERENCES NATUREZA_OPERACAO_NFE ( cd_natu_oper_nfe ) ;

ALTER TABLE NOTA_FISCAL ADD CONSTRAINT fk_nota_fisc_seri_nfe FOREIGN KEY ( cd_seri_nfe ) REFERENCES SERIE_NFE ( cd_seri_nfe ) ;

ALTER TABLE NOTA_FISCAL ADD CONSTRAINT fk_nota_fiscal_compra FOREIGN KEY ( cd_comp ) REFERENCES COMPRA ( cd_comp ) ;

ALTER TABLE NOTA_FISCAL ADD CONSTRAINT fk_nota_fiscal_venda FOREIGN KEY ( cd_vend ) REFERENCES VENDA ( cd_vend ) ;

ALTER TABLE PAGAMENTO ADD CONSTRAINT fk_pagamento_nota_fiscal FOREIGN KEY ( cd_nota_fisc ) REFERENCES NOTA_FISCAL ( cd_nota_fisc ) ;

ALTER TABLE IMPOSTO_ITEM ADD CONSTRAINT fk_produto_imposto FOREIGN KEY ( cd_prod ) REFERENCES PRODUTO ( cd_prod ) ;

ALTER TABLE VENDA_ITEM ADD CONSTRAINT fk_produto_venda_item FOREIGN KEY ( cd_prod ) REFERENCES PRODUTO ( cd_prod ) ;

ALTER TABLE TELEFONE ADD CONSTRAINT fk_telefone_cliente FOREIGN KEY ( cd_clie ) REFERENCES CLIENTE ( cd_clie ) ;

ALTER TABLE TELEFONE ADD CONSTRAINT fk_telefone_filial FOREIGN KEY ( cd_fili ) REFERENCES FILIAL ( cd_fili ) ;

ALTER TABLE TELEFONE ADD CONSTRAINT fk_telefone_fornecedor FOREIGN KEY ( cd_forn ) REFERENCES FORNECEDOR ( cd_forn ) ;

ALTER TABLE TELEFONE ADD CONSTRAINT fk_telefone_funcionario FOREIGN KEY ( cd_func ) REFERENCES FUNCIONARIO ( cd_func ) ;

ALTER TABLE TELEFONE ADD CONSTRAINT fk_telefone_pais FOREIGN KEY ( cd_pais ) REFERENCES PAIS ( cd_pais ) ;

ALTER TABLE SAIDA_ESTOQUE ADD CONSTRAINT fk_vend_item_sai_estoque FOREIGN KEY ( cd_vend_item, cd_vend ) REFERENCES VENDA_ITEM ( cd_vend_item, cd_vend ) ;

ALTER TABLE VENDA_ITEM ADD CONSTRAINT fk_vend_item_sai_estoquev1 FOREIGN KEY ( cd_said_esto ) REFERENCES SAIDA_ESTOQUE ( cd_said_esto ) ;

ALTER TABLE VENDA ADD CONSTRAINT fk_venda_cliente FOREIGN KEY ( cd_clie ) REFERENCES CLIENTE ( cd_clie ) ;

ALTER TABLE VENDA ADD CONSTRAINT fk_venda_funcionario FOREIGN KEY ( cd_func ) REFERENCES FUNCIONARIO ( cd_func ) ;

ALTER TABLE VENDA_ITEM ADD CONSTRAINT fk_venda_item_venda FOREIGN KEY ( cd_vend ) REFERENCES VENDA ( cd_vend ) ;


-- Relat�rio do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            35
-- CREATE INDEX                            10
-- ALTER TABLE                             95
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
