CREATE DATABASE IF NOT EXISTS `bdlily` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bdlily`;

-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bdlily
-- ------------------------------------------------------
-- Server version	8.0.39
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!50503 SET NAMES utf8 */;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;

/*!40103 SET TIME_ZONE='+00:00' */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calendario`
--
DROP TABLE IF EXISTS `calendario`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `calendario` (
    `idCalendario` int NOT NULL AUTO_INCREMENT,
    `inicioCiclo` date DEFAULT NULL,
    `duracao` int DEFAULT NULL,
    `idUsuario` int NOT NULL,
    PRIMARY KEY (`idCalendario`),
    KEY `fk_usuario2` (`idUsuario`),
    CONSTRAINT `fk_usuario2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--
LOCK TABLES `calendario` WRITE;

/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;

/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `comentario`
--
DROP TABLE IF EXISTS `comentario`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `comentario` (
    `idComentario` int NOT NULL AUTO_INCREMENT,
    `texto` varchar(256) NOT NULL,
    `dataPostagem` datetime NOT NULL,
    `idUsuario` int DEFAULT NULL,
    `idParceiro` int DEFAULT NULL,
    `idPublicacao` int DEFAULT NULL,
    PRIMARY KEY (`idComentario`),
    KEY `fk_usuario7` (`idUsuario`),
    KEY `fk_parceiro3` (`idParceiro`),
    KEY `fk_publicacao` (`idPublicacao`),
    CONSTRAINT `fk_parceiro3` FOREIGN KEY (`idParceiro`) REFERENCES `parceiro` (`idParceiro`),
    CONSTRAINT `fk_publicacao` FOREIGN KEY (`idPublicacao`) REFERENCES `publicacao` (`idPublicacao`),
    CONSTRAINT `fk_usuario7` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--
LOCK TABLES `comentario` WRITE;

/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;

/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `conteudo`
--
DROP TABLE IF EXISTS `conteudo`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `conteudo` (
    `idConteudo` int NOT NULL AUTO_INCREMENT,
    `titulo` varchar(256) NOT NULL,
    `palavraChave` varchar(45) NOT NULL,
    `resumo` varchar(200) NOT NULL,
    `texto` text NOT NULL,
    `tipo` varchar(45) NOT NULL,
    `idUsuario` int DEFAULT NULL,
    PRIMARY KEY (`idConteudo`),
    KEY `fk_usuario3` (`idUsuario`),
    CONSTRAINT `fk_usuario3` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 64 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--
LOCK TABLES `conteudo` WRITE;

/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;

INSERT INTO
  `conteudo`
VALUES
  (
    1,
    'Menstruação: Entenda Como Ocorre e Por Que Acontece.',
    'menstruacao',
    'Você já deve ter se questionado muito sobre a sua menstruação, não é? o que ela é, como ela ocorre, ...',
    'Você já deve ter se questionado muito sobre a sua menstruação, não é? o que ela é, como ela ocorre, entre outras dúvidas sobre seu bem-estar. Nesse artigo iremos tentar esclarecer algumas das principais dúvidas sobre o tema.',
    'artigo',
    5
  ),
  (
    2,
    'Puberdade: Quais Mudanças Físicas que Ocorrem Durante Esta Fase No Corpo da Mulher',
    'menstruacao',
    'Puberdade é a fase da vida onde ocorre mudanças hormonais, físicas e psicológicas com meninas e meni...',
    'Puberdade é a fase da vida onde ocorre mudanças hormonais, físicas e psicológicas com meninas e meninos. É o período que marca a transição da infância para a vida adulta. \nSe você está passando por essa fase, já passou e quer dar dicas para amigas mais novas este artigo tem como foco abordar as mudanças que ocorrem com o sexo feminino. \nGeralmente meninas começam a entrar nessa fase entre os 8 e 13 anos, e acaba por volta dos 18 anos onde a maturação sexual já estará completa. É importante lembrar que o começo e fim da puberdade podem ser diferentes para cada pessoa, pois depende de diversos fatores como psicológicos, ambientais e genéticos. Algumas das principais mudanças são: \n',
    'artigo',
    5
  ),
  (
    3,
    'Menstruação Precoce: Entendendo Sobre a Puberdade Antecipada',
    'menstruacao',
    'A primeira menstruação, conhecida como menarca, acontece com as meninas por volta dos 9 e 15 anos. M...',
    'A primeira menstruação, conhecida como menarca, acontece com as meninas por volta dos 9 e 15 anos. Mas em algumas pessoas isso pode vir a acontecer antes, chamamos esse ato de menstruação precoce. Nesse artigo veremos o que é e a menstruação precoce e suas causas.',
    'artigo',
    5
  ),
  (
    4,
    'Cólica Menstrual: Entendendo Como Funciona e Seus Sintomas.',
    'menstruacao',
    'A cólica menstrual, também conhecida como dismenorreia, é uma dor que afeta pacientes do sexo femini...',
    'A cólica menstrual, também conhecida como dismenorreia, é uma dor que afeta pacientes do sexo feminino durante o período menstrual. Ela ocorre devido a uma série de processos fisiológicos que acontecem no corpo durante o ciclo menstrual. \nSe você quer entender mais sobre a cólica para ter melhor conhecimento do seu corpo esse artigo irá explorar mais afundo sobre a dor da cólica menstrual e porque ela ocorre.\n',
    'artigo',
    5
  ),
  (
    5,
    'Sintomas da Menstruação: O Que Esperar e Como Lidar',
    'menstruacao',
    'Você já deve ter percebido que quando a menstruação chega mulheres sentem diversos sintomas, como ca...',
    'Você já deve ter percebido que quando a menstruação chega mulheres sentem diversos sintomas, como cansaço e mudanças de humor, saiba que isso é completamente comum, porém entender os sintomas é crucial para entender mais sobre o seu corpo e ter dias melhores.\nNeste artigo, abordaremos os sintomas comuns da menstruação e ofereceremos dicas para aliviá-los.\n',
    'artigo',
    5
  ),
  (
    6,
    'Hormônios na Menstruação: Tipos e Níveis',
    'menstruacao',
    'A menstruação é um processo fisiológico que envolve diversos hormônios que regulam o ciclo menstrual...',
    'A menstruação é um processo fisiológico que envolve diversos hormônios que regulam o ciclo menstrual. São diversos hormônios, com diferentes níveis e funções, e é essencial conhecê-los para adquirir mais conhecimento sobre a saúde reprodutiva feminina. \nNeste artigo, iremos abordar os principais hormônios envolvidos, suas funções e como suas concentrações variam ao longo do ciclo menstrual.\n',
    'artigo',
    5
  ),
  (
    7,
    'Alterações Hormonais: O que é TPM e como afeta a vida das mulheres',
    'menstruacao',
    'Você já deve ter ouvido falar muito sobre TPM e sofrer muito com ela né? Brincadeiras à parte a TPM ...',
    'Você já deve ter ouvido falar muito sobre TPM e sofrer muito com ela né? Brincadeiras à parte a TPM é a abreviação de “Tensão Pré-Menstrual” que é um conjunto de sintomas físicos e emocionais que surgem nas semanas que antecedem a menstruação. Ela afeta a qualidade de vida de muitas mulheres, variando na intensidade de leve a severa.\nNesse artigo iremos abordar tudo de mais importante sobre a tensão pré-menstrual.\n',
    'artigo',
    5
  ),
  (
    8,
    'SPM: Entendendo o Síndrome Pré-Menstrual e suas Implicações',
    'menstruacao',
    'A Síndrome Pré-Menstrual (SPM) é uma condição mais ampla e severa que inclui a TPM, mas contendo mai...',
    'A Síndrome Pré-Menstrual (SPM) é uma condição mais ampla e severa que inclui a TPM, mas contendo mais sintomas e um impacto maior na vida da pessoa. Ela pode afetar de forma significativa a capacidade de uma mulher de realizar suas atividades e pode estar associada a outras condições de saúde mental e física.',
    'artigo',
    5
  ),
  (
    9,
    'TDPM: A Forma Grave da Síndrome Pré-Menstrual',
    'menstruacao',
    'O Transtorno Disfórico Pré-Menstrual (TDPM) é uma forma mais grave e debilitante da síndrome pré-men...',
    'O Transtorno Disfórico Pré-Menstrual (TDPM) é uma forma mais grave e debilitante da síndrome pré-menstrual. O TDPM é uma condição de saúde mental caracterizada por sintomas emocionais graves e físico-desagradáveis que impactam severamente a vida da mulher. \nNeste artigo veremos mais sobre esse distúrbio e a forma certa para tratá-lo. \n',
    'artigo',
    5
  ),
  (
    10,
    'Quais são as causas de atrasos na menstruação?',
    'menstruacao',
    'O ciclo menstrual fundamental para a saúde reprodutiva feminina e realizado por uma complexa interaç...',
    'O ciclo menstrual fundamental para a saúde reprodutiva feminina e realizado por uma complexa interação entre hormônios. Embora o ciclo menstrual idealmente dure entre 21 e 35 dias, é comum que as mulheres experimentem atrasos ocasionais.\nOs atrasos menstruais são até que bem normais de acontecerem, geralmente não sendo algo que irá afetar o bem-estar da mulher. Porém quando a menstruação não desce por um longo período e a mulher não está grávida pode ser algum problema médico mais sério.\nVamos ver algumas das causas de atrasos na menstruação: \n ',
    'artigo',
    5
  ),
  (
    11,
    'Menopausa: O fim da fertilidade e ciclos menstruais ',
    'menstruacao',
    'A menopausa é um processo biológico natural que marca o fim dos ciclos menstruais e da fertilidade e...',
    'A menopausa é um processo biológico natural que marca o fim dos ciclos menstruais e da fertilidade em uma mulher. Ela normalmente ocorre entre os 45 e 55 anos, embora a idade possa variar. Este período de transição pode ser acompanhado de uma série de mudanças físicas e emocionais. Nesse artigo iremos entender o que está acontecendo no corpo feminino e como lidar com os possíveis sintomas de maneira eficaz.',
    'artigo',
    5
  ),
  (
    12,
    'Kit de Sobrevivência Menstrual: O Que Carregar na Sua Bolsa',
    'dica',
    'Estar preparada para o período menstrual pode fazer toda a diferença em termos de conforto e confian...',
    'Estar preparada para o período menstrual pode fazer toda a diferença em termos de conforto e confiança. Um \"kit de sobrevivência\" pode ajudar a lidar com imprevistos e garantir que você se sinta confortável ao longo do dia. Aqui estão os itens essenciais que você deve considerar incluir na sua bolsa:',
    'artigo',
    5
  ),
  (
    13,
    'Saúde Emocional Durante o Período Menstrual: Como Lidar e Cuidar',
    'menstruacao',
    'A gente sabe que menstruação é um processo natural que ocorre com todas as mulheres, mas ela também ...',
    'A gente sabe que menstruação é um processo natural que ocorre com todas as mulheres, mas ela também pode provocar diversas alterações emocionais. As oscilações hormonais durante o ciclo menstrual podem influenciar não apenas o corpo, mas também o estado emocional, causando sintomas como irritabilidade, ansiedade e tristeza. Neste artigo, discutiremos como lidar com esses desafios e cuidar da saúde emocional durante o período menstrual.',
    'artigo',
    5
  ),
  (
    14,
    'Dicas para Evitar Vazamentos Menstruais',
    'dica',
    'Você já passou por uma situação de vazamento menstrual? Pode ter sido um momento muito ruim para voc...',
    'Você já passou por uma situação de vazamento menstrual? Pode ter sido um momento muito ruim para você, mas lidar com o medo de vazamentos pode ser um desafio. \nAqui abordaremos algumas dicas para minimizar o risco de vazamentos menstruais. \n',
    'artigo',
    5
  ),
  (
    15,
    'Acne Menstrual: O Que Você Precisa Saber',
    'dica',
    'Você já reparou que um pouco antes da menstruação na sua pele surgem muitas acnes? Isso é muito comu...',
    'Você já reparou que um pouco antes da menstruação na sua pele surgem muitas acnes? Isso é muito comum e muitas mulheres relatam isso. \nChamamos de acne menstrual o resultado das flutuações hormonais que acontecem durante o período menstrual e podem levar à produção excessiva de óleo pelas glândulas sebáceas, resultando em espinhas e cravos.\n',
    'artigo',
    5
  ),
  (
    16,
    'Pobreza Menstrual: Um Desafio Silencioso',
    'dica',
    'Você já ouviu falar em pobreza menstrual? Ela é um fenômeno social que afeta milhões de pessoas ao r...',
    'Você já ouviu falar em pobreza menstrual? Ela é um fenômeno social que afeta milhões de pessoas ao redor do mundo, especialmente aquelas em situação de vulnerabilidade. \nRefere-se à dificuldade de acesso a produtos de higiene menstrual adequados, além da falta de informação e apoio durante o ciclo menstrual. Este problema não só impacta a saúde física e mental das pessoas, mas também tem consequências sociais e econômicas significativas. \n',
    'artigo',
    5
  ),
  (
    17,
    'Absorvente Externo: Conforto e Praticidade Durante o Ciclo Menstrual',
    'higiene',
    'O absorvente externo é um dos produtos mais utilizados durante o ciclo menstrual, oferecendo uma sol...',
    'O absorvente externo é um dos produtos mais utilizados durante o ciclo menstrual, oferecendo uma solução prática e eficaz para gerenciar o fluxo de sangue. Com uma variedade de opções no mercado, esse tipo de absorvente por ser mais comum e trazer um certo conforto, torna-se uma escolha popular entre muitas mulheres.',
    'artigo',
    5
  ),
  (
    18,
    'Absorvente de Pano: Uma Opção Ecológica e Confortável Durante o Ciclo Menstrual',
    'higiene',
    'Você conhece o absorvente de pano? Ele tem se tornado uma opção popular e sustentável para o gerenci...',
    'Você conhece o absorvente de pano? Ele tem se tornado uma opção popular e sustentável para o gerenciamento do fluxo menstrual. Nesse artigo abordaremos mais sobre esse absorvente reutilizável e ecológico.',
    'artigo',
    5
  ),
  (
    19,
    'Coletor Menstrual: Tudo o que Você Precisa Saber',
    'higiene',
    'O coletor menstrual tem se tornado uma alternativa popular para o gerenciamento do fluxo menstrual. ...',
    'O coletor menstrual tem se tornado uma alternativa popular para o gerenciamento do fluxo menstrual. Feito de silicone, borracha ou elastômero termoplástico, ele oferece uma série de benefícios, mas também vem com algumas considerações. Neste artigo, exploramos o que é, como usar e as vantagens desse produto.',
    'artigo',
    5
  ),
  (
    20,
    'Absorventes Internos: Praticidade e Conforto Durante o Ciclo Menstrual',
    'higiene',
    'Os absorventes internos, conhecidos como O.B, são uma opção amplamente utilizada por mulheres para g...',
    'Os absorventes internos, conhecidos como O.B, são uma opção amplamente utilizada por mulheres para gerenciar o fluxo menstrual. Com uma capacidade de oferecer conforto e liberdade de movimento, os absorventes internos têm conquistado a preferência de muitas mulheres.',
    'artigo',
    5
  ),
  (
    21,
    'Calcinha Absorvente: Conforto e Praticidade Durante o Ciclo Menstrual',
    'higiene',
    'Você já ouviu falar na calcinha absorvente? ela tem se destacado como uma alternativa para o gerenci...',
    'Você já ouviu falar na calcinha absorvente? ela tem se destacado como uma alternativa para o gerenciamento do fluxo menstrual. ',
    'artigo',
    5
  ),
  (
    22,
    'Como Usar um Absorvente: Um Guia Prático para Mulheres',
    'higiene',
    'Os absorventes são uma das opções mais comuns para o gerenciamento do fluxo menstrual. Usá-los corre...',
    'Os absorventes são uma das opções mais comuns para o gerenciamento do fluxo menstrual. Usá-los corretamente pode fazer toda a diferença em termos de conforto e eficácia. Neste guia, vamos explicar passo a passo como usar um absorvente, além de oferecer dicas úteis para garantir uma experiência tranquila.',
    'artigo',
    5
  ),
  (
    23,
    'Como Descartar Absorventes: Guia Prático para um Descarte Responsável',
    'higiene',
    'Se você tem dúvidas de como descartar seus absorventes, você está no lugar certo! Aqui vamos explica...',
    'Se você tem dúvidas de como descartar seus absorventes, você está no lugar certo! Aqui vamos explicar como descartar absorventes de maneira correta, abordando os diferentes tipos de absorventes e as melhores práticas para cada um.',
    'artigo',
    5
  ),
  (
    24,
    'Sabonete íntimo: importância na higiene pessoal',
    'higiene',
    'Se você quer ter mais proteção nas áreas íntimas o uso de um sabonete íntimo é indispensável para te...',
    'Se você quer ter mais proteção nas áreas íntimas o uso de um sabonete íntimo é indispensável para ter mais higiene e saúde as regiões mais delicadas das mulheres. Além de prevenir doenças e evitar odores, ele é essencial para a sensação de bem-estar da mulher. Nesse artigo veremos os principais pontos de usar um sabonete íntimo.',
    'artigo',
    5
  ),
  (
    25,
    'Lenços Umedecidos Durante a Menstruação: Praticidade e Cuidados',
    'higiene',
    'Os lenços umedecidos podem ser uma ótima opção para complementar a higiene íntima, especialmente em ...',
    'Os lenços umedecidos podem ser uma ótima opção para complementar a higiene íntima, especialmente em momentos em que o acesso a água e sabonete é limitado. Neste artigo, vamos explorar os benefícios e cuidados ao usar lenços umedecidos durante a menstruação.',
    'artigo',
    5
  ),
  (
    26,
    'Protetor Diário durante a Menstruação: Conforto e Praticidade',
    'higiene',
    'Você já ouviu falar em protetores diários? Eles são produtos usados por muitas mulheres, especialmen...',
    'Você já ouviu falar em protetores diários? Eles são produtos usados por muitas mulheres, especialmente durante o período menstrual. Neste artigo, vamos discutir os benefícios dos protetores diários durante a menstruação, suas características e dicas para uma escolha adequada.',
    'artigo',
    5
  ),
  (
    27,
    'A Importância dos Produtos de Higiene Íntima',
    'higiene',
    'Você já se questionou sobre a importância da higiene íntima? ela é importantíssima para manter a saú...',
    'Você já se questionou sobre a importância da higiene íntima? ela é importantíssima para manter a saúde e bem-estar de todas as pessoas, independentemente do gênero. Nesse artigo abordaremos mais sobre o tema.',
    'artigo',
    5
  ),
  (
    28,
    'A Importância do Preservativo para a Saúde Feminina',
    'higiene',
    'Falar sobre preservativos muitas vezes foca no ponto de vista masculino, mas é crucial lembrar como ...',
    'Falar sobre preservativos muitas vezes foca no ponto de vista masculino, mas é crucial lembrar como eles são importantes para as mulheres também. Nesse artigo abordaremos como o preservativo auxilia não só para a contracepção, mas também para a proteção contra infecções sexualmente transmissíveis (ISTs).',
    'artigo',
    5
  ),
  (
    29,
    'Sangramento de Escape: Entendendo as Causas e Cuidados',
    'saude',
    'Você já ouviu falar sobre sangramento de escape? Esse tipo de sangramento pode gerar preocupações so...',
    'Você já ouviu falar sobre sangramento de escape? Esse tipo de sangramento pode gerar preocupações sobre a saúde reprodutiva feminina. Neste artigo, vamos explorar o que é o sangramento de escape, suas causas comuns, sintomas associados e cuidados necessários.',
    'artigo',
    5
  ),
  (
    30,
    'Menstruação Atrasada: Causas, Sintomas e Quando se Preocupar',
    'saude',
    'A menstruação atrasada é uma preocupação comum entre muitas mulheres, podendo gerar ansiedade e dúvi...',
    'A menstruação atrasada é uma preocupação comum entre muitas mulheres, podendo gerar ansiedade e dúvidas sobre a saúde reprodutiva. Mas o que pode estar por trás desse atraso? Neste artigo, vamos explorar as principais causas, sintomas associados e quando é necessário buscar ajuda médica. ',
    'artigo',
    5
  ),
  (
    31,
    'Síndrome dos Ovários Policísticos (SOP): Causas, Sintomas e Tratamentos',
    'saude',
    'A Síndrome dos Ovários Policísticos (SOP) é uma condição hormonal comum que afeta muitas mulheres em...',
    'A Síndrome dos Ovários Policísticos (SOP) é uma condição hormonal comum que afeta muitas mulheres em idade reprodutiva. Embora a SOP seja frequentemente discutida, muitos ainda têm dúvidas sobre suas causas, sintomas e tratamentos. Neste artigo, vamos explorar esses aspectos importantes da SOP.',
    'artigo',
    5
  ),
  (
    32,
    'Tipos de Corrimento Vaginal: Entenda as Diferenças e Quando se Preocupar',
    'saude',
    'Você já se questionou sobre o seu corrimento vaginal? O que ele indica, como identificá-lo e quando ...',
    'Você já se questionou sobre o seu corrimento vaginal? O que ele indica, como identificá-lo e quando deve ser motivo de preocupação? Neste artigo, vamos esclarecer as principais dúvidas sobre os diferentes tipos de corrimento e sua relação com a saúde vaginal. ',
    'artigo',
    5
  ),
  (
    33,
    'Lesões no Útero: Entenda as Causas, Sintomas e Tratamentos',
    'saude',
    'Você já se questionou sobre as lesões no útero? O que elas são, como podem ocorrer e quais são os si...',
    'Você já se questionou sobre as lesões no útero? O que elas são, como podem ocorrer e quais são os sinais de que algo está errado? Neste artigo, vamos esclarecer as principais dúvidas sobre as lesões uterinas e sua relação com a saúde feminina. ',
    'artigo',
    5
  ),
  (
    34,
    'Uso de Anticoncepcionais: Efeitos e Considerações',
    'menstruacao',
    'Você já se perguntou sobre o uso de anticoncepcionais e seus efeitos no corpo? Muitas mulheres recor...',
    'Você já se perguntou sobre o uso de anticoncepcionais e seus efeitos no corpo? Muitas mulheres recorrem a métodos contraceptivos para evitar a gravidez, mas é fundamental entender como esses medicamentos funcionam e quais podem ser seus efeitos colaterais. Neste artigo, vamos esclarecer os principais efeitos do uso de anticoncepcionais e as considerações a serem feitas. ',
    'artigo',
    5
  ),
  (
    35,
    'Métodos Contraceptivos: Opções, Eficácia e Considerações',
    'saude',
    'Você já se perguntou sobre os diferentes métodos contraceptivos disponíveis e como escolher o mais a...',
    'Você já se perguntou sobre os diferentes métodos contraceptivos disponíveis e como escolher o mais adequado para você? Com tantas opções, é importante entender cada método, sua eficácia e considerações relevantes. Neste artigo, vamos explorar os principais métodos contraceptivos e suas características.',
    'artigo',
    5
  ),
  (
    36,
    'Gravidez e Aborto: Compreendendo os Aspectos e Implicações',
    'saude',
    'A gravidez é um momento significativo na vida de muitas mulheres, mas também pode ser cercada de dúv...',
    'A gravidez é um momento significativo na vida de muitas mulheres, mas também pode ser cercada de dúvidas e preocupações, especialmente quando se fala sobre aborto. Neste artigo, vamos explorar os aspectos da gravidez, as diferentes situações que podem levar ao aborto e as considerações emocionais e físicas envolvidas. ',
    'artigo',
    5
  ),
  (
    37,
    'Tipos de Útero: Entenda as Variedades e Suas Implicações',
    'saude',
    'O útero é um órgão essencial no sistema reprodutor feminino, responsável por abrigar e nutrir o feto...',
    'O útero é um órgão essencial no sistema reprodutor feminino, responsável por abrigar e nutrir o feto durante a gravidez. No entanto, existem diferentes tipos e variações na forma e na estrutura do útero, que podem impactar a saúde reprodutiva. Neste artigo, vamos explorar os principais tipos de útero e suas características. ',
    'artigo',
    5
  ),
  (
    38,
    'Tipos de Útero: Causas das Anomalias Uterinas',
    'saude',
    'O útero, um órgão vital no sistema reprodutivo feminino, pode apresentar diferentes formas e estrutu...',
    'O útero, um órgão vital no sistema reprodutivo feminino, pode apresentar diferentes formas e estruturas. Algumas dessas variações são normais, enquanto outras podem indicar anomalias que podem afetar a saúde reprodutiva. Neste artigo, vamos explorar os tipos de útero e as causas que podem levar a essas anomalias. ',
    'artigo',
    5
  ),
  (
    39,
    'Tipos de Útero e Seus Malefícios Associados',
    'saude',
    'As anomalias uterinas podem afetar a saúde reprodutiva das mulheres de várias maneiras. Cada tipo de...',
    'As anomalias uterinas podem afetar a saúde reprodutiva das mulheres de várias maneiras. Cada tipo de útero possui características únicas, que podem levar a diferentes malefícios e complicações. Neste artigo, vamos explorar os principais tipos de útero e os potenciais malefícios associados a cada um.',
    'artigo',
    5
  ),
  (
    40,
    'Adenomiose: Entenda o Que É e Como Afeta a Saúde da Mulher',
    'saude',
    'Você já ouviu falar em adenomiose? Muitas mulheres têm dúvidas sobre essa condição que pode impactar...',
    'Você já ouviu falar em adenomiose? Muitas mulheres têm dúvidas sobre essa condição que pode impactar e muito a saúde menstrual. Neste artigo, vamos esclarecer o que é a adenomiose, como ela ocorre e quais são seus principais sintomas e tratamentos.',
    'artigo',
    5
  ),
  (
    41,
    'Pólipos Uterinos: O Que São, Como Se Desenvolvem e Seus Sintomas',
    'menstruacao',
    'Você já ouviu falar sobre pólipos uterinos? Essa é uma condição que muitas mulheres podem enfrentar ...',
    'Você já ouviu falar sobre pólipos uterinos? Essa é uma condição que muitas mulheres podem enfrentar ao longo da vida, e compreender o que são é fundamental. Neste artigo, vamos explorar a natureza dos pólipos uterinos, suas causas, sintomas e opções de tratamento. ',
    'artigo',
    5
  ),
  (
    42,
    'Miomas Uterinos: O Que São, Como Se Desenvolvem e Quais os Sintomas',
    'saude',
    'Você sabia que os miomas uterinos são uma das condições mais comuns que afetam a saúde das mulheres?...',
    'Você sabia que os miomas uterinos são uma das condições mais comuns que afetam a saúde das mulheres? Neste artigo, vamos explorar os aspectos essenciais dos miomas uterinos. ',
    'artigo',
    5
  ),
  (
    43,
    'Anovulação: O Que É, Causas e Como Identificar',
    'saude',
    'Você já ouviu falar sobre anovulação? Essa condição pode impactar a saúde reprodutiva de muitas mulh...',
    'Você já ouviu falar sobre anovulação? Essa condição pode impactar a saúde reprodutiva de muitas mulheres e é importante entender o que significa, quais são suas causas e como identificá-la. Neste artigo, vamos explorar esses aspectos fundamentais.',
    'artigo',
    5
  ),
  (
    44,
    'Anemia: O Que É, Tipos, Causas e Sintomas',
    'saude',
    'Você já se sentiu cansada, fraca ou com falta de energia? Esses podem ser sinais de anemia, uma cond...',
    'Você já se sentiu cansada, fraca ou com falta de energia? Esses podem ser sinais de anemia, uma condição comum que afeta milhões de pessoas em todo o mundo. Neste artigo, vamos explorar o que é a anemia, seus tipos, causas, sintomas e opções de tratamento.',
    'artigo',
    5
  ),
  (
    45,
    'Endometriose: O Que É, Causas, Sintomas e Tratamentos',
    'menstruacao',
    'Você já ouviu falar sobre endometriose? Neste artigo, vamos explorar o que é a endometriose, suas ca...',
    'Você já ouviu falar sobre endometriose? Neste artigo, vamos explorar o que é a endometriose, suas causas, sintomas e as opções de tratamento disponíveis.',
    'artigo',
    5
  ),
  (
    46,
    'Disbiose: O Que É, Causas, Sintomas e Tratamentos',
    'saude',
    'Você já ouviu falar em disbiose? Esse termo se refere ao desequilíbrio da microbiota intestinal, um ...',
    'Você já ouviu falar em disbiose? Esse termo se refere ao desequilíbrio da microbiota intestinal, um conjunto de trilhões de microorganismos que habitam nosso intestino e desempenham papéis essenciais na nossa saúde. Neste artigo, vamos explorar o que é disbiose, suas causas, sintomas e opções de tratamento. ',
    'artigo',
    5
  ),
  (
    47,
    'Candidíase: O Que É, Causas, Sintomas e Tratamentos',
    'saude',
    'Você já ouviu falar sobre candidíase? Essa infecção fúngica é mais comum do que se imagina e pode af...',
    'Você já ouviu falar sobre candidíase? Essa infecção fúngica é mais comum do que se imagina e pode afetar tanto mulheres quanto homens. Neste artigo, vamos explorar o que é a candidíase, suas causas, sintomas e as opções de tratamento disponíveis.',
    'artigo',
    5
  ),
  (
    48,
    'Vaginose Bacteriana: O Que É, Causas, Sintomas e Tratamentos',
    'saude',
    'Você já ouviu falar sobre vaginose bacteriana? Essa condição é uma das causas mais comuns de corrime...',
    'Você já ouviu falar sobre vaginose bacteriana? Essa condição é uma das causas mais comuns de corrimento vaginal anormal e pode afetar a saúde íntima das mulheres. Neste artigo, vamos explorar o que é a vaginose bacteriana, suas causas, sintomas e opções de tratamento. ',
    'artigo',
    5
  ),
  (
    49,
    'Infecção Urinária: O Que É, Causas, Sintomas e Tratamentos',
    'saude',
    'Você já teve uma infecção urinária? Essa condição é comum e pode causar desconforto significativo. N...',
    'Você já teve uma infecção urinária? Essa condição é comum e pode causar desconforto significativo. Neste artigo, vamos explorar o que é uma infecção urinária, suas causas, sintomas e as opções de tratamento disponíveis. ',
    'artigo',
    5
  ),
  (
    50,
    'Infecções Sexualmente Transmissíveis (IST): O Que São, Causas, Sintomas e Tratamentos',
    'saude',
    'As infecções sexualmente transmissíveis (IST) são um grupo de infecções que podem ser transmitidas d...',
    'As infecções sexualmente transmissíveis (IST) são um grupo de infecções que podem ser transmitidas de uma pessoa para outra durante o contato sexual. Essas condições são comuns e podem afetar tanto homens quanto mulheres. Neste artigo, vamos explorar o que são as ISTs, suas causas, sintomas e as opções de tratamento disponíveis.',
    'artigo',
    5
  ),
  (
    51,
    'Tipos de Ciclo Menstrual: Regular e Irregular',
    'menstruacao',
    'Você já deve ter observado que sua menstruação nem sempre ocorre no mesmo dia durante os meses. Isso...',
    'Você já deve ter observado que sua menstruação nem sempre ocorre no mesmo dia durante os meses. Isso ocorre pois o ciclo menstrual pode variar significativamente de mulher para mulher. Este artigo explora os conceitos de ciclos menstruais regulares e irregulares, suas características e o que pode indicar cada um.',
    'artigo',
    5
  ),
  (
    52,
    'Ciclo menstrual: Guia completo',
    'menstruacao',
    'A maioria das mulheres já deve ter se perguntado por que a menstruação acontece. Isso se dá por cont...',
    'A maioria das mulheres já deve ter se perguntado por que a menstruação acontece. Isso se dá por conta do ciclo menstrual que é um processo extenso e comum que envolve uma série de mudanças hormonais e fisiológicas no corpo feminino.\n Este artigo explora as três principais fases do ciclo menstrual, descrevendo o que ocorre em cada uma delas e como elas interagem para manter a saúde reprodutiva.\n1.	Fase Folicular: é a primeira fase do ciclo, se inicia no primeiro dia da menstruação. Nessa fase os hormônios progesterona e estrogênio estão baixos e a hipófise, glândula localizada na base do cérebro, começa a produção de um hormônio chamado hormônio folículo estimulante (FSH), que tem como objetivo estimular os folículos do ovário.\n\n\n2.	Fase Ovulatória: Os folículos então começam a produzir estrogênio, e um folículo começa a se desenvolver mais que os outros, que chamamos de folículo dominante, e é ele que libera o óvulo durante a ovulação. Para que haja a ovulação a hipófise produz outro hormônio chamado de luteinizante (LH). Após a liberação do óvulo ele é pego pela tuba uterina da direita ou esquerda e continua em direção ao útero.\n\n\n3.	Fase Lútea: O folículo que agora está no interior do ovário começa a produzir progesterona em grandes quantidades e, ao mesmo tempo, ocorre um aumento na produção de estrogênio. Quando não ocorre a fecundação, o folículo diminui e reduz os níveis de estrogênio e progesterona, até que o endométrio seja eliminado. E caso o óvulo seja fecundado, o organismo da mulher passa então a produzir o hormônio gonadotrofina coriônica humana (HCG), responsável por deixar os níveis de progesterona e estrogênio elevados, com o intuito de modificar o revestimento uterino e formar a placenta, para que o embrião possa se desenvolver. A fase lútea dura por volta de 14 dias e acaba no início do sangramento menstrual, que marca o começo de um novo ciclo.\n\n',
    'artigo',
    5
  ),
  (
    53,
    'Período Fértil: Por que é importante saber sobre?',
    'menstruacao',
    'Você conhece sobre o período fértil? Em resumo, ele se refere ao intervalo de tempo durante o ciclo ...',
    'Você conhece sobre o período fértil? Em resumo, ele se refere ao intervalo de tempo durante o ciclo menstrual de uma mulher em que ela tem a maior probabilidade de engravidar. Neste artigo, exploraremos mais sobre o que é o período fértil, como identificá-lo e sua importância na saúde reprodutiva.',
    'artigo',
    5
  ),
  (
    54,
    'Disfunção no Ciclo Menstrual: Compreendendo as Alterações e Seus Impactos',
    'menstruacao',
    'O ciclo menstrual, já abordado em outros artigos, é um processo biológico que ocorre com as mulheres...',
    'O ciclo menstrual, já abordado em outros artigos, é um processo biológico que ocorre com as mulheres em idade fértil. No entanto, muitas mulheres experimentam disfunções menstruais, que podem variar desde irregularidades leves até distúrbios mais sérios. Neste artigo, exploraremos as causas, sintomas e possíveis tratamentos para disfunções no ciclo menstrual.',
    'artigo',
    5
  ),
  (
    55,
    'Alterações no Fluxo e Volume de Sangue Durante a Menstruação',
    'menstruacao',
    'Muitas mulheres experimentem a menstruação de maneira semelhante, porém o fluxo e o volume de sangue...',
    'Muitas mulheres experimentem a menstruação de maneira semelhante, porém o fluxo e o volume de sangue podem variar consideravelmente entre indivíduos e ciclos. Neste artigo, abordaremos as principais alterações no fluxo e volume de sangue durante a menstruação, suas causas e implicações.',
    'artigo',
    5
  ),
  (
    56,
    'A Cor do Sangue Menstrual e Seus Significados',
    'menstruacao',
    'Com você já deve ter ocorrido da cor do sangue menstrual não ter sido vermelha e sim um outro tom ou...',
    'Com você já deve ter ocorrido da cor do sangue menstrual não ter sido vermelha e sim um outro tom ou até mesmo outra cor, saiba que isso é completamente normal, porém é uma dúvida que muitas mulheres têm durante o ciclo menstrual. Neste artigo, vamos explorar as diferentes cores do sangue menstrual e seus possíveis significados.',
    'artigo',
    5
  ),
  (
    57,
    'Mitos da Menstruação: Andar Descalça Piora a Dor da Cólica?',
    'menstruacao',
    'A crença de que andar descalça durante a menstruação pode agravar as cólicas provavelmente se origin...',
    'A crença de que andar descalça durante a menstruação pode agravar as cólicas provavelmente se originou de tradições culturais e percepções populares sobre saúde e bem-estar. Muitas mulheres, especialmente em épocas passadas, eram aconselhadas a evitar certos comportamentos que poderiam \"agravar\" os sintomas menstruais. A ideia de que o frio, por exemplo, poderia intensificar a dor das cólicas está ligada a uma associação entre temperaturas baixas e desconforto físico.',
    'artigo',
    5
  ),
  (
    58,
    'Menina virgem usando abs. Interno',
    'menstruacao',
    'O absorvente interno é um absorvente pequeno que é colocado internamente na vagina. Assim, o sangram...',
    'O absorvente interno é um absorvente pequeno que é colocado internamente na vagina. Assim, o sangramento da menstruação não entra em contato direto com a pele nem com a calcinha. Por isso, o absorvente interno tem sido uma opção entre as mulheres e faz elas se sentirem mais limpas e confortáveis.\n	No entanto, um dos mitos que cercam o uso desse tipo de absorvente é se meninas virgens (que nunca tiveram uma relação sexual) podem utiliza-lo, já que ele fica colocado na parte interna da vagina.\n	A resposta para essa pergunta é que sim. Mulheres virgens podem usar o absorvente interno, porém elas têm que tomar cuidado, pois o uso desse absorvente pode fazer pequenos rasguinhos e alongar o hímen da menina, causando sangramento. \n	Ou seja, se a mulher se sentir confortável, usar um abs. Interno pode ser uma opção segura, independente se ela for virgem ou não, independente da idade também. Só tem que ter consciência de como usar um absorvente interno, pois ele é diferente de um normal. \n',
    'artigo',
    5
  ),
  (
    59,
    'Gravidez durante a menstruação',
    'menstruacao',
    'Um mito muito comentado entre as pessoas é o de que é impossível engravidar durante a menstruação. P...',
    'Um mito muito comentado entre as pessoas é o de que é impossível engravidar durante a menstruação. Porém quando a mulher está menstruada as chances apenas diminuem, mas não impede a gravidez. ',
    'artigo',
    5
  ),
  (
    60,
    'Pode entrar na piscina menstruada? Entenda o mito',
    'menstruacao',
    'Quando os dias começam a ficar mais quentes e as mulheres sentem vontade de ir à praia ou entrar na ...',
    'Quando os dias começam a ficar mais quentes e as mulheres sentem vontade de ir à praia ou entrar na piscina logo vem uma dúvida na cabeça de muitas meninas, se pode ou não entrar na piscina quando está menstruada. E isso não passa de outro mito que cerca a menstruação, nesse artigo veremos que entrar na piscina menstruada pode até trazer benefícios as mulheres.',
    'artigo',
    5
  ),
  (
    61,
    'Pode fazer atividades físicas quando menstruada?',
    'menstruacao',
    'A resposta para essa pergunta é sim, mulheres podem fazer atividades físicas durante a menstruação....',
    'A resposta para essa pergunta é sim, mulheres podem fazer atividades físicas durante a menstruação.',
    'artigo',
    5
  ),
  (
    62,
    'Limão faz a menstruação descer?',
    'menstruacao',
    'Dizem que o limão pode ajudar a menstruação a descer mais rápido e isso é um mito....',
    'Dizem que o limão pode ajudar a menstruação a descer mais rápido e isso é um mito.',
    'artigo',
    5
  ),
  (
    63,
    'Dá para diminuir o fluxo menstrual?',
    'menstruacao',
    'Muitas mulheres enfrentam fluxos menstruais intensos e buscam formas de reduzi-lo. No entanto, não e...',
    'Muitas mulheres enfrentam fluxos menstruais intensos e buscam formas de reduzi-lo. No entanto, não existe uma solução única ou simples que funcione para todas. É fundamental entender que o fluxo menstrual é influenciado por uma variedade de fatores, incluindo hormônios, saúde geral e condições médicas.\nSe o fluxo menstrual estiver muito intenso ou irregular, é essencial procurar um médico. Existem várias abordagens médicas que podem ajudar a regular o fluxo, como:\n1.	Anticoncepcionais hormonais: \nMuitas mulheres optam por pílulas anticoncepcionais, que podem não apenas regular o ciclo menstrual, mas também reduzir o fluxo. Esses métodos hormonais podem tornar a menstruação mais leve e menos dolorosa.\n2.	Dispositivos intrauterinos (DIUs): \nAlguns tipos de DIUs, especialmente os hormonais, também são eficazes na redução do fluxo menstrual e podem ser uma boa opção para quem busca controle a longo prazo.\n3.	Medicações específicas: \nEm alguns casos, médicos podem prescrever medicamentos que ajudam a controlar o fluxo menstrual, como o ácido tranexâmico, que reduz a perda de sangue.\n\nAbordagens naturais: Algumas práticas podem ajudar a lidar com o fluxo menstrual, como manter uma dieta equilibrada e rica em nutrientes, praticar exercícios físicos regularmente e gerenciar o estresse. No entanto, não há garantias de que esses métodos terão um impacto significativo no fluxo.\nImportância da consulta médica: Se você está preocupada com o seu fluxo menstrual, é essencial conversar com um profissional de saúde. Ele pode realizar exames para identificar possíveis condições, como miomas ou endometriose, que podem estar contribuindo para um fluxo mais intenso. A avaliação médica permitirá que você explore opções adequadas para sua situação específica.\n\nÉ importante lembrar que cada corpo é único. O que funciona para uma pessoa pode não funcionar para outra. Portanto, sempre busque orientação profissional ao lidar com questões relacionadas à menstruação. O manejo adequado do fluxo menstrual pode melhorar a qualidade de vida e o bem-estar geral.\n',
    'artigo',
    5
  );

/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `dia`
--
DROP TABLE IF EXISTS `dia`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `dia` (
    `idDia` int NOT NULL AUTO_INCREMENT,
    `dataZ` date NOT NULL,
    `emocional` varchar(20) DEFAULT NULL,
    `anotacao` varchar(256) DEFAULT NULL,
    `idCalendario` int NOT NULL,
    PRIMARY KEY (`idDia`),
    KEY `fk_calendario` (`idCalendario`),
    CONSTRAINT `fk_calendario` FOREIGN KEY (`idCalendario`) REFERENCES `calendario` (`idCalendario`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--
LOCK TABLES `dia` WRITE;

/*!40000 ALTER TABLE `dia` DISABLE KEYS */;

/*!40000 ALTER TABLE `dia` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `dia_evento`
--
DROP TABLE IF EXISTS `dia_evento`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `dia_evento` (
    `idDiaEvento` int NOT NULL AUTO_INCREMENT,
    `idDia` int NOT NULL,
    `idEvento` int NOT NULL,
    `horario` time DEFAULT NULL,
    PRIMARY KEY (`idDiaEvento`),
    KEY `fk_diaEvento1` (`idDia`),
    KEY `fk_diaEvento2` (`idEvento`),
    CONSTRAINT `fk_diaEvento1` FOREIGN KEY (`idDia`) REFERENCES `dia` (`idDia`),
    CONSTRAINT `fk_diaEvento2` FOREIGN KEY (`idEvento`) REFERENCES `evento` (`idEvento`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_evento`
--
LOCK TABLES `dia_evento` WRITE;

/*!40000 ALTER TABLE `dia_evento` DISABLE KEYS */;

/*!40000 ALTER TABLE `dia_evento` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `dia_sintoma`
--
DROP TABLE IF EXISTS `dia_sintoma`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `dia_sintoma` (
    `idDiaSintoma` int NOT NULL AUTO_INCREMENT,
    `idDia` int NOT NULL,
    `idSintoma` int NOT NULL,
    PRIMARY KEY (`idDiaSintoma`),
    KEY `fk_diaSintoma1` (`idDia`),
    KEY `fk_diaSintoma2` (`idSintoma`),
    CONSTRAINT `fk_diaSintoma1` FOREIGN KEY (`idDia`) REFERENCES `dia` (`idDia`),
    CONSTRAINT `fk_diaSintoma2` FOREIGN KEY (`idSintoma`) REFERENCES `sintoma` (`idSintoma`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_sintoma`
--
LOCK TABLES `dia_sintoma` WRITE;

/*!40000 ALTER TABLE `dia_sintoma` DISABLE KEYS */;

/*!40000 ALTER TABLE `dia_sintoma` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `evento`
--
DROP TABLE IF EXISTS `evento`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `evento` (
    `idEvento` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) NOT NULL,
    PRIMARY KEY (`idEvento`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--
LOCK TABLES `evento` WRITE;

/*!40000 ALTER TABLE `evento` DISABLE KEYS */;

/*!40000 ALTER TABLE `evento` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `imagem`
--
DROP TABLE IF EXISTS `imagem`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `imagem` (
    `idImagem` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) DEFAULT NULL,
    `caminho` varchar(45) NOT NULL,
    `idConteudo` int DEFAULT NULL,
    `idUsuario` int DEFAULT NULL,
    PRIMARY KEY (`idImagem`),
    KEY `fk_usuario4` (`idUsuario`),
    KEY `fk_conteudo` (`idConteudo`),
    CONSTRAINT `fk_conteudo` FOREIGN KEY (`idConteudo`) REFERENCES `conteudo` (`idConteudo`),
    CONSTRAINT `fk_usuario4` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagem`
--
LOCK TABLES `imagem` WRITE;

/*!40000 ALTER TABLE `imagem` DISABLE KEYS */;

/*!40000 ALTER TABLE `imagem` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `parceiro`
--
DROP TABLE IF EXISTS `parceiro`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `parceiro` (
    `idParceiro` int NOT NULL AUTO_INCREMENT,
    `nomeFantasia` varchar(45) DEFAULT NULL,
    `cnpj` varchar(14) NOT NULL,
    `senha` varchar(15) NOT NULL,
    `email` varchar(45) NOT NULL,
    `endereco` varchar(45) DEFAULT NULL,
    `tipo` varchar(45) NOT NULL,
    PRIMARY KEY (`idParceiro`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parceiro`
--
LOCK TABLES `parceiro` WRITE;

/*!40000 ALTER TABLE `parceiro` DISABLE KEYS */;

/*!40000 ALTER TABLE `parceiro` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `profissional`
--
DROP TABLE IF EXISTS `profissional`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `profissional` (
    `idProfissional` int NOT NULL AUTO_INCREMENT,
    `resumo` varchar(256) DEFAULT NULL,
    `crm` varchar(9) DEFAULT NULL,
    `coren` varchar(11) DEFAULT NULL,
    `cpf` varchar(11) DEFAULT NULL,
    `cnpj` varchar(14) DEFAULT NULL,
    `idUsuario` int NOT NULL,
    PRIMARY KEY (`idProfissional`),
    KEY `fk_usuario` (`idUsuario`),
    CONSTRAINT `fk_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profissional`
--
LOCK TABLES `profissional` WRITE;

/*!40000 ALTER TABLE `profissional` DISABLE KEYS */;

/*!40000 ALTER TABLE `profissional` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `publicacao`
--
DROP TABLE IF EXISTS `publicacao`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `publicacao` (
    `idPublicacao` int NOT NULL AUTO_INCREMENT,
    `titulo` varchar(30) DEFAULT NULL,
    `texto` varchar(256) NOT NULL,
    `dataPostagem` datetime NOT NULL,
    `idUsuario` int DEFAULT NULL,
    `idParceiro` int DEFAULT NULL,
    PRIMARY KEY (`idPublicacao`),
    KEY `fk_usuario6` (`idUsuario`),
    KEY `fk_parceiro2` (`idParceiro`),
    CONSTRAINT `fk_parceiro2` FOREIGN KEY (`idParceiro`) REFERENCES `parceiro` (`idParceiro`),
    CONSTRAINT `fk_usuario6` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacao`
--
LOCK TABLES `publicacao` WRITE;

/*!40000 ALTER TABLE `publicacao` DISABLE KEYS */;

/*!40000 ALTER TABLE `publicacao` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `reacao`
--
DROP TABLE IF EXISTS `reacao`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `reacao` (
    `idReacao` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) NOT NULL,
    PRIMARY KEY (`idReacao`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacao`
--
LOCK TABLES `reacao` WRITE;

/*!40000 ALTER TABLE `reacao` DISABLE KEYS */;

INSERT INTO
  `reacao`
VALUES
  (1, 'Curtir');

/*!40000 ALTER TABLE `reacao` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `reacao_comentario`
--
DROP TABLE IF EXISTS `reacao_comentario`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `reacao_comentario` (
    `idReacaoComentario` int NOT NULL AUTO_INCREMENT,
    `idReacao` int NOT NULL,
    `idComentario` int NOT NULL,
    `idUsuario` int NOT NULL,
    PRIMARY KEY (`idReacaoComentario`),
    KEY `fk_reacao4` (`idUsuario`),
    KEY `fk_reacao5` (`idReacao`),
    KEY `fk_reacao6` (`idComentario`),
    CONSTRAINT `fk_reacao4` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
    CONSTRAINT `fk_reacao5` FOREIGN KEY (`idReacao`) REFERENCES `reacao` (`idReacao`),
    CONSTRAINT `fk_reacao6` FOREIGN KEY (`idComentario`) REFERENCES `comentario` (`idComentario`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacao_comentario`
--
LOCK TABLES `reacao_comentario` WRITE;

/*!40000 ALTER TABLE `reacao_comentario` DISABLE KEYS */;

/*!40000 ALTER TABLE `reacao_comentario` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `reacao_publicacao`
--
DROP TABLE IF EXISTS `reacao_publicacao`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `reacao_publicacao` (
    `idReacaoPublicacao` int NOT NULL AUTO_INCREMENT,
    `idReacao` int NOT NULL,
    `idPublicacao` int NOT NULL,
    `idUsuario` int NOT NULL,
    PRIMARY KEY (`idReacaoPublicacao`),
    KEY `fk_reacao1` (`idUsuario`),
    KEY `fk_reacao2` (`idReacao`),
    KEY `fk_reacao3` (`idPublicacao`),
    CONSTRAINT `fk_reacao1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
    CONSTRAINT `fk_reacao2` FOREIGN KEY (`idReacao`) REFERENCES `reacao` (`idReacao`),
    CONSTRAINT `fk_reacao3` FOREIGN KEY (`idPublicacao`) REFERENCES `publicacao` (`idPublicacao`)
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacao_publicacao`
--
LOCK TABLES `reacao_publicacao` WRITE;

/*!40000 ALTER TABLE `reacao_publicacao` DISABLE KEYS */;

/*!40000 ALTER TABLE `reacao_publicacao` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `sintoma`
--
DROP TABLE IF EXISTS `sintoma`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `sintoma` (
    `idSintoma` int NOT NULL AUTO_INCREMENT,
    `nome` varchar(45) NOT NULL,
    `emoji` int NOT NULL,
    `tipo` varchar(30) NOT NULL,
    PRIMARY KEY (`idSintoma`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sintoma`
--
LOCK TABLES `sintoma` WRITE;

/*!40000 ALTER TABLE `sintoma` DISABLE KEYS */;

INSERT INTO
  `sintoma`
VALUES
  (1, 'Febre', 129298, 'fisico'),
  (2, 'Estressada', 128545, 'emocional'),
  (3, 'Agitada', 128515, 'emocional'),
  (4, 'Deprimida', 128557, 'emocional'),
  (5, 'Ansiosa', 128549, 'emocional'),
  (6, 'Sensível', 128553, 'emocional'),
   (7, 'Irritada', 128548, 'emocional'),
    (8, 'Impaciente', 128529, 'emocional'),
     (9, 'Alegre', 128513, 'emocional'),
    (10, 'Cólica', 128543, 'fisico'), 
    (11, 'Sensibilidade', 128534, 'fisico'),
    (12, 'Cansaço', 128564, 'fisico'),
    (13, 'Apetite', 128523, 'fisico'),
    (14, 'Dor de cabeça', 128552, 'fisico'),
    (15, 'Constipação ', 128547, 'fisico'),
    (16, 'Acne', 128567, 'fisico'),
    (17, 'Carente', 128527, 'emocional'),
    (18, 'Carinhosa', 128519, 'emocional'),
    (19, 'Tontura', 128565, 'fisico'),
    (20, 'Inchaço', 128566, 'fisico');

/*!40000 ALTER TABLE `sintoma` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `telefone`
--
DROP TABLE IF EXISTS `telefone`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `telefone` (
    `idTelefone` int NOT NULL AUTO_INCREMENT,
    `numero` int NOT NULL,
    `ddd` int NOT NULL,
    `tipo` varchar(45) NOT NULL,
    `idParceiro` int DEFAULT NULL,
    `idUsuario` int DEFAULT NULL,
    `idProfissional` int DEFAULT NULL,
    PRIMARY KEY (`idTelefone`),
    KEY `fk_usuario5` (`idUsuario`),
    KEY `fk_parceiro` (`idParceiro`),
    CONSTRAINT `fk_parceiro` FOREIGN KEY (`idParceiro`) REFERENCES `parceiro` (`idParceiro`),
    CONSTRAINT `fk_usuario5` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--
LOCK TABLES `telefone` WRITE;

/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;

INSERT INTO
  `telefone`
VALUES
  (1, 969507661, 11, 'celular', NULL, 1, NULL);

/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `topico`
--
DROP TABLE IF EXISTS `topico`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `topico` (
    `idTopico` int NOT NULL AUTO_INCREMENT,
    `titulo` varchar(256) DEFAULT NULL,
    `texto` text NOT NULL,
    `posicao` int NOT NULL,
    `idConteudo` int DEFAULT NULL,
    PRIMARY KEY (`idTopico`),
    KEY `fk_topico1` (`idConteudo`),
    CONSTRAINT `fk_topico1` FOREIGN KEY (`idConteudo`) REFERENCES `conteudo` (`idConteudo`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 271 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topico`
--
LOCK TABLES `topico` WRITE;

/*!40000 ALTER TABLE `topico` DISABLE KEYS */;

INSERT INTO
  `topico`
VALUES
  (
    1,
    'O que é a menstruação?',
    'A menstruação é algo normal de acontecer, é identificada pelo sangramento causado pela descamação do útero quando ele não é fecundado. Esse processo faz parte do ciclo menstrual no qual todo mês após a menarca, nome dado a primeira menstruação, o corpo feminino se prepara para uma possível gravidez e quando ela não ocorre o endométrio é liberado em forma de sangue.',
    1,
    1
  ),
  (
    2,
    'Como ocorre a menstruação?',
    'A menstruação é um processo bem complexo, ela ocorre em períodos, chamados de ciclo menstrual que começa com o primeiro dia do sangramento e termina pouco antes da próxima menstruação. \nOs ciclos começam na puberdade e acontecem até a menopausa, há mulheres que param de menstruar antes, o que chamamos de menopausa precoce.\nOs ciclos variam de 24 a 38 dias, depende da pessoa, e possuem três fases: a fase folicular, a fase ovulatória e a fase lútea.\n\n•	Fase Folicular: é a primeira fase do ciclo, se inicia no primeiro dia da menstruação.\nNessa fase os hormônios progesterona e estrogênio estão baixos e a hipófise, glândula localizada na base do cérebro, começa a produção de um hormônio chamado hormônio folículo estimulante (FSH), que tem como objetivo estimular os folículos do ovário.\n\n•	Fase Ovulatória: Os folículos então começam a produzir estrogênio, e um folículo começa a se desenvolver mais que os outros, que chamamos de folículo dominante, e é ele que libera o óvulo durante a ovulação. \nPara que haja a ovulação a hipófise produz outro hormônio chamado de luteinizante (LH). Após a liberação do óvulo ele é pego pela tuba uterina da direita ou esquerda e continua em direção ao útero.\n\n•	Fase Lútea: O folículo que agora está no interior do ovário começa a produzir progesterona em grandes quantidades e, ao mesmo tempo, ocorre um aumento na produção de estrogênio. \nQuando não ocorre a fecundação, o folículo diminui e reduz os níveis de estrogênio e progesterona, até que o endométrio seja eliminado. \nE caso o óvulo seja fecundado, o organismo da mulher passa então a produzir o hormônio gonadotrofina coriônica humana (HCG), responsável por deixar os níveis de progesterona e estrogênio elevados, com o intuito de modificar o revestimento uterino e formar a placenta, para que o embrião possa se desenvolver.\n\nLembre-se, para um ciclo ser regular ele não precisa sempre ter a mesma duração, mas precisa de um intervalo de dias similar todos os meses.\n\n',
    2,
    1
  ),
  (
    3,
    'Por que acontece a menstruação?',
    'Bom como você pode ter visto a menstruação acontece pois não ocorreu a fecundação do óvulo durante o ciclo menstrual, se o óvulo for fecundado a mulher para de menstruar e seu corpo começa a se preparar para a gravidez. Então é de certa forma algo natural de se acontecer, ocorre com todas as pessoas que têm útero. \n\n	Caso tenha mais dúvidas sobre o assunto fique à vontade para navegar pelo nosso site e encontrar o conteúdo que deseja. \n',
    3,
    1
  ),
  (
    4,
    'Crescimento ',
    'O estirão é um dos principais sinais que a puberdade começou, o corpo de meninas e meninos cresce de forma rápida, as proporções do corpo se alteram bastante, tendo um grande aumento nas mãos, pés, pernas e braços.\n	O aumento do peso também é uma consequência desse ganho repentino de estatura. Um ponto importante é que no corpo feminino há um alargamento nos quadris e afinamento da cintura, pois é o corpo se preparando para suportar uma gravidez natural.\n',
   1, 
    2
  ),
  (
    5,
    'Surgimento de pelos',
    'Na puberdade, independente do sexo, acontece o surgimento e aumento de pelos por todo o corpo, mas principalmente nas regiões pubianas e nas axilas.',
    4,
    2
  ),
  (
    6,
    'Desenvolvimento dos órgãos reprodutores  ',
    'Os órgãos genitais crescem durante a puberdade como os pequenos e grandes lábios, e parte da vulva. Esse desenvolvimento acompanha a transformação da parte interna do corpo, como o aumento do útero e do canal vaginal. \n\nAcabamos de ver algumas das principais mudanças que ocorrem no corpo feminino durante a puberdade. Outras transformações que acontecem no corpo, independente do sexo, são aumento da oleosidade da pele e aumento das acnes.\nA puberdade é uma fase da vida onde surgem muitas dúvidas e medos sobre o nosso corpo. Porém isso é completamente normal. \nCaso necessário é sempre bom consultar um médico para sanear completamente as perguntas que você tenha sobre o assunto e para saber mais sobre seu corpo.  \n',
    5,
    2
  ),
  (
    7,
    'Desenvolvimento dos seios',
    'O desenvolvimento das mamas ocorre da seguinte maneira:  primeiramente aparecem pequenos caroços sob os mamilos e ao longo do tempo eles ficam maiores e mais cheios. \n	O seio pode demorar até três anos para se desenvolver. E vale lembrar que o tamanho de cada um é único e o tamanho está ligado a fatores genéticos. \n',
    2,
    2
  ),
  (
    8,
    'Menarca',
    'A menarca, primeira menstruação das mulheres, ocorre durante a puberdade, é ela que marca o início do ciclo menstrual. Ela acontece normalmente por volta dos 9 e 15 anos. \nSignifica que se inicia a vida reprodutiva da mulher, ou seja, ela está apta a ter filhos, porém a vida fértil da mulher dura até a menopausa, por volta dos 40 anos.\n',
    3,
    2
  ),
  (
    9,
    'O que é puberdade precoce?',
    'A puberdade precoce que significa que a puberdade começou antes da idade prevista (8 anos em meninas e 9 anos em meninos), algo que ocorre em ambos os sexos, porém nas mulheres isso tende a aparecer de forma mais comum.\nUma das causas da puberdade precoce nas mulheres é a menstruação precoce, quando na mulher a menarca acontece antes dos 9 anos. Além da menstruação, a puberdade precoce pode provocar sintomas como crescimento das mamas, pelos pubianos e nas axilas, acnes e odor corporal adulto.\n',
    1,
    3
  ),
  (
    10,
    'Tratamento',
    'A avaliação médica é essencial para identificar a causa subjacente da puberdade precoce e determinar o tratamento apropriado. Um endocrinologista ou pediatra especializado deve ser consultado para avaliar a condição e definir a necessidade de intervenção.\nAlém do tratamento médico, o apoio psicológico é fundamental. Terapias e acompanhamento psicológico podem ajudar a jovem a lidar com os desafios emocionais associados à puberdade precoce. O suporte familiar também desempenha um papel crucial nessa fase, proporcionando um ambiente de compreensão e apoio para enfrentar as mudanças que estão ocorrendo.\n',
    4,
    3
  ),
  (
    11,
    'Por que isso ocorre?',
    'Os fatores mais comuns que geram a puberdade precoce são em sua maioria associados a fatores psicológicos, genéticos e físicos como má alimentação e ganho de peso, além do estresse e o tempo exposto a telas. \nA depressão, a ansiedade e uso de substâncias também podem originar a puberdade precoce.\n',
    2,
    3
  ),
  (
    12,
    'Impactos na saúde',
    'O início da puberdade antes do esperado pode ter várias implicações para a saúde e o bem-estar da jovem. \nNa saúde física destaca o crescimento prematuro dos ossos e isso resulta em uma estatura final menor que sua altura genética potencial. Além disso, as mulheres podem sofrer com cólicas e fluxo menstruais intensos e risco de sofrerem menopausa precoce.\nA condição também afeta as mulheres a terem uma tendencia a obesidade na idade adulta, resultando em maiores riscos a terem problemas cardiovasculares.\n',
    3,
    3
  ),
  (
    13,
    'Por que ocorre? ',
    'Em resumo, o ciclo menstrual é controlado por hormônios, principalmente estrogênio e progesterona. Durante a primeira fase do ciclo, o estrogênio estimula o crescimento do revestimento do útero, conhecido como endométrio, em preparação para uma possível gravidez. Se a fertilização não ocorre, os níveis de estrogênio e progesterona diminuem, o que leva à descamação do endométrio. Esse processo é o que causa a menstruação.\nA cólica menstrual acontece porque o útero começa a se contrair para ajudar a expulsar o revestimento endometrial que está sendo eliminado. As contrações uterinas são desencadeadas por substâncias chamadas prostaglandinas. Quando os níveis de prostaglandinas são elevados, as contrações uterinas podem se tornar mais intensas e frequentes, o que pode causar dor. \n',
    1,
    4
  ),
  (
    14,
    'Sintomas da cólica menstrual',
    'A intensidade da cólica pode variar bastante. Para algumas mulheres, a dor é apenas uma sensação desconfortável que pode ser aliviada com medicação ou outros métodos, como calor local ou exercícios leves. Para outras, a dor pode ser muito intensa e exigir tratamento médico mais sério, pois as dores atrapalham a rotina de estudos ou trabalho da paciente. \nOutros sintomas que podem se desencadear da cólica são náuseas, vômitos, dores de cabeça, inchaço abdominal, diarreia, alteração de humor e sensibilidade nos seios.\nO médico especialista em cólicas menstruais e que cuida da saúde feminina é o ginecologista, que pode ajudar a combater as dores na mudança de pequenos hábitos ou pelo uso de medicamentos.\n \n',
    2,
    4
  ),
  (
    15,
    'Sintomas Comuns da Menstruação',
    'Durante a menstruação, é comum experimentar uma diversidade de sintomas devido às fortes alterações hormonais que acontecem no corpo. Entre esses sintomas destacam-se:\nDor Abdominal (Cólica Menstrual): As cólicas menstruais são causadas pelas contrações do útero para expelir o revestimento uterino. Essa dor pode variar de fraca para forte. Ela ocorre na parte inferior do abdômen.\nInchaço e Sensibilidade nos Seios: Alterações nos níveis hormonais durante o ciclo podem levar ao inchaço e à sensibilidade nos seios. Esse sintoma pode causar desconforto e sensibilidade ao toque.\nMudanças de Humor: As alterações hormonais também podem impactar o humor da pessoa. Esses sintomas estão frequentemente associados à síndrome pré-menstrual (TPM), que pode intensificar as emoções.\nFadiga: A perda de sangue e as mudanças hormonais podem contribuir para a sensação de cansaço e fadiga. Muitas mulheres relatam uma redução na energia e uma sensação de exaustão durante o período menstrual.\nAlterações no Apetite: Desejos alimentares intensos ou alterações no apetite são comuns durante a menstruação. Algumas mulheres podem experimentar aumento do apetite ou buscar alimentos específicos como chocolate.\nAlterações na Pele: O aumento na produção de hormônios pode levar a alterações na pele, como acne ou erupções cutâneas. Esse sintoma é especialmente frequente em mulheres propensas a problemas de pele.\nNáuseas e Problemas Digestivos: Algumas mulheres podem sentir náuseas, inchaço abdominal ou alterações no trânsito intestinal durante a menstruação. \n',
    1,
    5
  ),
  (
    16,
    'Dicas para Gerenciar os Sintomas',
    'Para aliviar os sintomas menstruais, considere as seguintes estratégias:\nMedicamentos para a Dor: Analgésicos como o ibuprofeno podem ajudar a reduzir as cólicas e a dor abdominal. É importante seguir as orientações do fabricante e, se necessário, consultar um médico.\nAlimentação Balanceada: Uma dieta rica em nutrientes e baixa em sódio pode ajudar a reduzir o inchaço e melhorar o bem-estar geral. Evitar alimentos gordurosos e açucarados pode também minimizar desejos alimentares e alterações no apetite.\nExercícios: Atividades físicas leves, como caminhadas ou yoga, podem ajudar a melhorar o humor, reduzir a dor e aumentar a energia.\nHidratação e Descanso: Manter-se bem hidratada e descansar adequadamente pode ajudar a combater a fadiga e promover uma recuperação mais rápida durante o período menstrual.\n',
    2,
    5
  ),
  (
    17,
    'Estrogênio',
    'O estrogênio é um dos principais hormônios femininos e tem um papel importante no desenvolvimento e manutenção dos caracteres sexuais secundários femininos, como os seios e a distribuição de gordura corporal. No processo da menstruação, o estrogênio é responsável pelo crescimento e maturação dos folículos ovarianos e pela preparação do endométrio para uma possível gravidez.\nNíveis ao Longo do Ciclo:\n•	Fase Folicular: Os níveis de estrogênio começam relativamente baixos após a menstruação. À medida que os folículos ovarianos se desenvolvem, os níveis de estrogênio aumentam gradualmente.\n•	Ovulação: Justo antes da ovulação, há um pico significativo nos níveis de estrogênio, o que desencadeia a liberação do óvulo.\n•	Fase Lútea: Após a ovulação, os níveis de estrogênio continuam elevados, ajudando a manter o endométrio e preparar o corpo para uma possível gravidez.\n',
    1,
    6
  ),
  (
    18,
    'Hormônio Folículo-Estimulante (FSH)',
    'O FSH é importante para a estimulação do crescimento e maturação dos folículos ovarianos. Ele opera em conjunto com o LH para regular o ciclo menstrual e promover a ovulação.\nNíveis ao Longo do Ciclo:\n•	Fase Follicular: Os níveis de FSH aumentam no início do ciclo para estimular o desenvolvimento dos folículos ovarianos.\n•	Ovulação: Os níveis de FSH atingem um pico antes da ovulação, contribuindo para a maturação final do óvulo.\n•	Fase Lútea: Após a ovulação, os níveis de FSH diminuem, pois a necessidade de estimulação folicular é reduzida.\n\nOs hormônios que agem no ciclo menstrual são fundamentais para o funcionamento normal do sistema reprodutivo feminino. O estrogênio e a progesterona desempenham papéis cruciais na preparação do útero e na regulação do ciclo, enquanto o LH e o FSH são essenciais para a ovulação e a maturação dos folículos. \n',
    4,
    6
  ),
  (
    19,
    'Progesterona',
    'A progesterona é outro hormônio que prepara o útero para a chegada do óvulo fertilizado e ajuda a manter a gravidez. Ela também regula o ciclo menstrual e atua na preparação do endométrio para a menstruação.\nNíveis ao Longo do Ciclo:\n•	Fase Follicular: Os níveis de progesterona são baixos no início do ciclo menstrual.\n•	Ovulação: Após a ovulação, o corpo lúteo (estrutura que se forma no ovário após a liberação do óvulo) começa a produzir progesterona.\n•	Fase Lútea: Os níveis de progesterona aumentam significativamente após a ovulação, atingindo seu pico no meio da fase lútea. Se a gravidez não ocorrer, os níveis de progesterona diminuem, levando ao início da menstruação.\n',
    2,
    6
  ),
  (
    20,
    'Hormônio Luteinizante (LH)',
    'O LH é fundamental para a ovulação e para a formação do corpo lúteo. Ele estimula a liberação do óvulo maduro do ovário e ajuda a regular a produção de estrogênio e progesterona.\nNíveis ao Longo do Ciclo:\n•	Fase Follicular: Os níveis de LH são baixos no início do ciclo.\n•	Ovulação: Há um pico acentuado nos níveis de LH que coincide com a ovulação. Esse aumento é um sinal de que o óvulo está prestes a ser liberado.\n•	Fase Lútea: Após a ovulação os níveis de LH caem, mas permanecem presentes para apoiar a função do corpo lúteo.\n',
    3,
    6
  ),
  (
    21,
    'O que é TPM?',
    'A Tensão Pré-Menstrual (TPM) é uma condição que ocorre em mulheres geralmente na segunda metade do ciclo menstrual, entre a ovulação e o início da menstruação. Esse período é caracterizado por uma série de sintomas que variam em intensidade e podem afetar significativamente o bem-estar geral. A TPM é associada a alterações hormonais naturais do ciclo menstrual, onde pode causar efeitos adversos no corpo e na mente.',
    1,
    7
  ),
  (
    22,
    'Tratamento ',
    'O Tratamento da TPM é similar da Cólica Menstrual algumas atividades que aliviam são:\nDieta equilibrada: reduzir o sal e comer alimentos saldáveis como verduras e frutas, ajudam no processo para aliviar os sintomas;\nExercícios físicos regulares: a prática de atividades físicas leves como caminhadas, andar de bicicleta, nadar podem ajudar e ainda melhorar a autoestima;\nTenha cuidado com pensamentos negativos: mentaliza coisas boas, pratique meditação, escrever em algum lugar o que está sentindo, desabafar com alguém ou até praticar um hobbie pode ajudar a manter a mente focando em coisas positivas nesse período de dificuldade.\nSe os sintomas forem muito fortes uma consulta ao médico é sempre válida, ele irá tratá-la e passar os melhores medicamentos para isso.\n',
    3,
    7
  ),
  (
    23,
    'Por que ocorre?',
    'Ela normalmente ocorre por conta de mudanças significativas nos hormônios estrogênio e progesterona durante o ciclo menstrual. Além das alterações hormonais, fatores como estresse, dieta e predisposição genética podem influenciar a severidade dos sintomas. A TPM é reconhecida por seu impacto sobre o estado emocional e físico das mulheres.\nAlguns sintomas físicos causados pela TPM são: Inchaço, dor abdominal, dores nas mamas e fadiga.\nE sintomas psicológicos como: Irritabilidade, ansiedade, depressão e mudanças de humor. \n',
    2,
    7
  ),
  (
    24,
    'O que é a SMP?',
    'A Síndrome Pré-Menstrual é uma condição mais complexa do que a TPM, é caracterizada por uma combinação mais severa e debilitante de sintomas que ocorrem na fase pré-menstrual. \n	Ela é causada pois, normalmente, algumas mulheres têm uma sensibilidade maior as oscilações hormonais que ocorrem semanas antes da menstruação.\n',
    1,
    8
  ),
  (
    25,
    'Sintomas da SMP',
    'Os sintomas da SPM são parecidos com os da TPM incluindo variações extremas de humor, irritabilidade intensa, e sintomas físicos acentuados como dores e inchaços. \nPorém, ao contrário da TPM, que pode ser desconfortável, mas geralmente tratável, a SPM pode impactar profundamente a qualidade de vida, afetando a capacidade de realizar atividades diárias e relacionamentos interpessoais.\n',
    2,
    8
  ),
  (
    26,
    'Tratamento',
    'O diagnóstico da SPM exige uma avaliação médica cuidadosa, pois seus sintomas podem sobrepor-se a outras condições médicas e psiquiátricas. A gravidade e a variedade dos sintomas fazem da SPM uma condição que pode exigir uma abordagem multifacetada para tratamento, envolvendo diversos fatores como:\nMudanças no estilo de vida: a pessoa precisa começar a adotar hábitos saudáveis, como ter uma boa alimentação e praticar exercícios físicos, pode ser útil para aliviar os sintomas pré-menstruais.\nTerapia: A terapia ajuda a trabalhar a mente, fornece suporte emocional, ensina técnicas de enfrentamento e promove mudanças no comportamento e estilo de vida. Terapias como a cognitivo-comportamental podem ajudar a gerenciar sintomas emocionais e melhorar a qualidade de vida.\nIntervenção médica específica: com base na gravidade dos sintomas o uso de um ou mais medicamentos é sempre uma boa forma de tratar o problema\n \n',
    3,
    8
  ),
  (
    27,
    'O que é TDMP?',
    'O TDPM é uma condição grave que requer atenção médica especializada. Sua causa, como das outras alterações hormonais, não é bem conhecida, mas está de certa forma relacionada a oscilação de hormônios no corpo feminino. A TDPM afeta uma porcentagem menor de mulheres, mas com intensidade muito mais significativa.',
    1,
    9
  ),
  (
    28,
    'Sintomas do TDPM',
    '•	Emocionais: Depressão profunda, sensação de desesperança, ansiedade extrema, irritabilidade intensa, e até ideação suicida.\n•	Físicos: Dores severas no corpo, aumento do volume abdominal, dores de cabeça, fadiga intensa, insônia e alterações no apetite.\n',
    2,
    9
  ),
  (
    29,
    'Diagnóstico e Tratamento',
    'O diagnóstico do TDPM geralmente envolve uma avaliação clínica detalhada. O tratamento pode incluir uma combinação de medicamentos antidepressivos, anticoncepcionais, terapias e intervenções psicológicas. Também a prática de hábitos saudáveis pode gerar uma melhora nos sintomas além de melhorar a autoestima.\nA combinação de tratamento farmacológico e apoio psicológico pode ajudar a aliviar os sintomas e melhorar a qualidade de vida das mulheres afetadas. Reconhecer os sinais e procurar ajuda precoce é fundamental para o manejo eficaz dessa condição debilitante.\n',
    3,
    9
  ),
  (
    30,
    'Gravidez',
    'A gravidez é uma das causas mais conhecidas e comuns para o atraso menstrual. Quando um óvulo é fertilizado e se implanta no útero, o corpo começa a produzir hormônios que interrompem o ciclo menstrual normal. Se o atraso na menstruação é acompanhado por sintomas como náuseas, sensibilidade nos seios e cansaço, realizar um teste de gravidez pode ser uma etapa importante para confirmar ou descartar essa possibilidade.',
    1,
    10
  ),
  (
    31,
    'Síndrome dos Ovários Policísticos (SOP)',
    'É um distúrbio hormonal comum que afeta muitas mulheres em idade reprodutiva. Ela se caracteriza por ciclos menstruais irregulares, ovários aumentados e presença de cistos. A alteração na produção de hormônios causada pela SOP pode levar a atrasos na menstruação ou até mesmo à ausência de períodos menstruais.',
    4,
    10
  ),
  (
    32,
    'Mudanças na Contracepção',
    'A introdução, suspensão ou mudança em métodos contraceptivos hormonais, como pílulas anticoncepcionais, injeções ou dispositivos intrauterinos (DIUs), pode afetar o ciclo menstrual. Esses métodos atuam alterando os níveis hormonais para prevenir a ovulação, e mudanças neles podem resultar em irregularidades temporárias no ciclo menstrual.',
    5,
    10
  ),
  (
    33,
    'Problemas de Saúde',
    'Certas condições de saúde, como doenças tireoidianas, diabetes ou distúrbios endócrinos, podem impactar o ciclo menstrual. A tireoide, por exemplo, regula muitas funções corporais, incluindo o ciclo menstrual, e condições como hipotireoidismo ou hipertireoidismo podem causar atrasos ou irregularidades menstruais.',
    6,
    10
  ),
  (
    34,
    'Alterações no Peso Corporal',
    'Mudanças significativas no peso, tanto ganho quanto perda, podem impactar o ciclo menstrual. O excesso de peso pode levar a desequilíbrios hormonais, enquanto a perda de peso extrema, especialmente quando associada a distúrbios alimentares como anorexia ou bulimia, pode interromper a ovulação e resultar em amenorreia (ausência de menstruação).',
    2,
    10
  ),
  (
    35,
    ' Menopausa',
    'Para mulheres na faixa etária de 40 a 50 anos, os atrasos menstruais podem ser um sinal de perimenopausa, a transição para a menopausa. Durante esta fase, a produção de hormônios ovarianos começa a diminuir, levando a ciclos menstruais mais irregulares antes da cessação definitiva da menstruação (menopausa).',
    7,
    10
  ),
  (
    36,
    ' Exercício Excessivo',
    'Atletas ou mulheres que praticam exercícios físicos intensos podem experimentar atrasos menstruais devido ao impacto do exercício excessivo no equilíbrio hormonal. A prática de atividades físicas extremas pode levar a um estado de baixa gordura corporal e alterações hormonais que afetam a regularidade menstrual.',
    8,
    10
  ),
  (
    37,
    'Uso de Medicamentos',
    'Alguns medicamentos, como antidepressivos, antipsicóticos e medicamentos para pressão arterial, podem interferir no ciclo menstrual. Além disso, tratamentos médicos como quimioterapia podem causar alterações significativas na regularidade dos períodos menstruais.',
    9,
    10
  ),
  (
    38,
    'Estresse',
    'O estresse pode ter um impacto profundo no ciclo menstrual. Situações estressantes, como mudanças de vida, pressão no trabalho ou questões pessoais, podem alterar a produção de hormônios que regulam o ciclo, levando a atrasos ou irregularidades menstruais.',
    3,
    10
  ),
  (
    39,
    'O que é Menopausa?',
    'Menopausa é definida como a ausência de menstruação por 12 meses consecutivos e ocorre pois os ovários param de produzir óvulos e os hormônios reprodutivos (estrogênio e progesterona) diminuem. Essa mudança hormonal provoca uma série de sintomas e alterações no corpo da mulher. ',
    1,
    11
  ),
  (
    40,
    'Sintomas Comuns',
    'Os sintomas da menopausa podem variar amplamente de mulher para mulher, mas alguns dos mais comuns incluem:\n•	Ondas de Calor: Sensações súbitas de calor intenso que podem durar de minutos a horas e geralmente são acompanhadas por sudorese e, em alguns casos, calafrios.\n•	Suores Noturnos: Ondas de calor que ocorrem durante o sono e podem causar desconforto e interrupção do sono.\n•	Secura Vaginal: A redução nos níveis de estrogênio pode causar ressecamento e desconforto vaginal, afetando a vida sexual.\n•	Mudanças no Humor: Alterações hormonais podem levar a alterações de humor, irritabilidade e até sintomas de depressão.\n•	Alterações no Ciclo Menstrual: Menstruações irregulares são um sinal comum de perimenopausa, com períodos que podem se tornar mais curtos ou mais longos, mais leves ou mais intensos.\n•	Problemas de Sono: Insônia ou distúrbios do sono podem ser comuns, frequentemente exacerbados por ondas de calor.\n•	Diminuição da Densidade Óssea: A queda nos níveis de estrogênio pode levar à perda de densidade óssea, aumentando o risco de osteoporose.\n',
    2,
    11
  ),
  (
    41,
    'Estados da menopausa ',
    'A menopausa é um processo contínuo e gradual que pode ser dividido em três fases: perimenopausa, menopausa e pós-menopausa. Cada uma dessas fases é marcada por mudanças hormonais e sintomas específicos, resultando no fim da fertilidade.\n\nPerimenopausa: é o período que antecede a menopausa e pode começar vários anos antes da última menstruação. Durante essa fase, que se inicia entre os 40 e 50 anos, as mulheres experimentam uma diminuição gradual nos níveis de estrogênio e progesterona. Os ciclos menstruais tornam-se irregulares e os sintomas típicos incluem ondas de calor, alterações no sono e mudanças de humor. A perimenopausa é uma fase de adaptação onde o corpo começa a mostrar sinais de que a menopausa se aproxima.\nMenopausa: é o estado que ocorre quando uma mulher não menstrua por 12 meses consecutivos, indicando o fim da fertilidade. Este estágio marca a conclusão da transição hormonal e é caracterizado por uma redução significativa nos níveis de estrogênio e progesterona. A menopausa pode durar vários anos e é um período crítico para monitorar a saúde óssea e cardiovascular devido ao impacto da baixa hormonal.\nPós-menopausa: começa imediatamente após o fim da menopausa e continua pelo resto da vida da mulher. Durante esta fase, os níveis hormonais estabilizam, mas os efeitos da baixa de estrogênio continuam a influenciar o corpo. A mulher pode enfrentar novos desafios, como um aumento no risco de osteoporose e doenças cardíacas, o que torna essencial manter um estilo de vida saudável e realizar exames médicos regulares para garantir uma boa qualidade de vida.\n\nA menopausa é uma fase natural da vida de todas as mulheres, mas sua experiência pode ser única para cada uma. \nConhecer os sintomas, entender o impacto potencial na saúde e adotar estratégias eficazes para gerenciar os sintomas pode tornar essa transição mais suave e menos perturbadora. Consultar um profissional de saúde é essencial para obter um plano de manejo personalizado e garantir que todas as questões de saúde sejam abordadas adequadamente. \n',
    3,
    11
  ),
  (
    42,
    'Produtos menstruais',
    '•	Absorventes, tenha sempre alguns à mão, preferencialmente em diferentes tamanhos para atender ao seu fluxo e para ajudar alguma amiga que precise.\n•	Coletor menstrual, se você usa um, não se esqueça de carregar um saquinho para armazená-lo de forma higiênica.\n',
    1,
    12
  ),
  (
    43,
    'Itens de higiene pessoal',
    '•	Lenços umedecidos, são usados para manter a limpeza, especialmente se você estiver fora de casa.\n•	Protetores diários, são ótimos para usar no final ou no início do ciclo, ou apenas para mais segurança.\n',
    2,
    12
  ),
  (
    44,
    'Comidas saudáveis',
    '•	Barras de proteína, frutas secas ou nozes podem ajudar a manter a energia e combater a fadiga que algumas mulheres sentem durante o período, um chocolate também ajuda para a mulher se sentir melhor. ',
    5,
    12
  ),
  (
    45,
    'Agenda ou aplicativo menstrual',
    '•	Manter um registro do ciclo menstrual pode ajudar a prever e se preparar para o fluxo, além de monitorar os sintomas.',
    6,
    12
  ),
  (
    46,
    'Roupas de emergência',
    '•	Uma calcinha limpa pode ser um salva vidas em caso de vazamentos.\n•	Para armazenar roupas sujas ou qualquer item que precise ser mantido separado.\n',
    3,
    12
  ),
  (
    47,
    'Medicamentos',
    '•	Leve alguns comprimidos de ibuprofeno ou paracetamol para aliviar cólicas ou desconforto.\n•	Se você toma algum suplemento específico, como vitamina B1 ou óleo de prímula, considere carregá-los.\n',
    4,
    12
  ),
  (
    48,
    'Conclusão',
    'Montar um kit de sobrevivência menstrual pode proporcionar mais tranquilidade e conforto durante o período. Ao carregar esses itens na sua bolsa, você estará preparada para lidar com qualquer situação que surgir. Cuide de si mesma e não hesite em se preparar para o que vier!',
    7,
    12
  ),
  (
    49,
    'Entendendo as oscilações hormonais',
    'Durante o ciclo menstrual, os níveis de hormônios como estrogênio e progesterona variam. Essas flutuações podem impactar neurotransmissores no cérebro, como a serotonina, que desempenha um papel crucial no humor. Muitas mulheres relatam mudanças de humor, fadiga e sensibilidade emocional, especialmente na fase pré-menstrual (TPM).',
    1,
    13
  ),
  (
    50,
    'Estratégias para cuidar da saúde emocional',
    '1. Autoconhecimento\nEntender o próprio ciclo menstrual é essencial. Manter um diário menstrual pode ajudar a identificar padrões emocionais e sintomas físicos. Saber quando esperar oscilações pode facilitar a preparação e o autocuidado.\n\n2. Alimentação balanceada\nUma dieta rica em nutrientes pode ter um impacto positivo no humor. Inclua alimentos ricos em ômega-3, como peixes e nozes, e mantenha uma ingestão adequada de frutas, vegetais e grãos integrais. Evitar açúcar e cafeína em excesso também pode ajudar a estabilizar o humor.\n\n3. Exercícios físicos\nA prática regular de exercícios libera endorfinas, que são hormônios responsáveis pela sensação de bem-estar. Mesmo uma caminhada leve pode ajudar a aliviar a tensão e melhorar o humor.\n\n4. Técnicas de relaxamento\nPráticas como meditação, ioga e respiração profunda podem reduzir a ansiedade e promover um estado de calma. Dedicar alguns minutos do dia para essas atividades pode ser altamente benéfico.\n\n5. Suporte social\nConversar com amigos ou familiares sobre como você está se sentindo pode proporcionar alívio emocional. Às vezes, simplesmente compartilhar experiências pode fazer uma grande diferença.\n6. Profissional de saúde mental\nSe as oscilações emocionais se tornarem intensas ou impactarem significativamente a vida cotidiana, procurar um psicólogo ou psiquiatra pode ser uma boa opção. Terapias e, em alguns casos, medicações podem ajudar a equilibrar as emoções.\n',
    3,
    13
  ),
  (
    51,
    'Sintomas comuns',
    '•	As mulheres ficam mais irritadas e pequenas situações podem parecer mais frustrantes.\n•	Sensação de ansiedade, apreensão e nervosismo sem causa aparente.\n•	Sentimentos de melancolia ou desânimo que podem surgir do nada.\n•	Cansaço físico e mental que pode dificultar a rotina diária.\n',
    2,
    13
  ),
  (
    52,
    'Conclusão',
    'Cuidar da saúde emocional durante o período menstrual é fundamental para o bem-estar geral das mulheres. Lembre-se de que cada corpo é único e que é importante encontrar o que funciona melhor para você. Sempre foque na sua saúde e não tenha medo de buscar ajuda profissional!',
    4,
    13
  ),
  (
    53,
    '•	Escolha o produto adequado',
    'A primeira linha de defesa contra vazamentos é escolher o produto certo. Existem diversos tipos no mercado, como absorventes (internos e externos), tampões e coletores menstruais. \nExperimente essas diversas opções para descobrir qual funciona melhor para o seu fluxo. \n',
    1,
    14
  ),
  (
    54,
    '•	Cuidado ao dormir',
    'Durante a noite, o risco de vazamentos pode aumentar. Tente dormir de lado e use absorventes noturnos, que são projetados para serem mais longos e absorventes. Essas medidas podem ajudar a garantir uma noite tranquila.',
    4,
    14
  ),
  (
    55,
    '•	Monitoramento do fluxo',
    'Manter um calendário menstrual pode ser uma ferramenta valiosa. Registrar seu ciclo e monitorar o fluxo ajuda a se preparar melhor para os dias mais intensos, permitindo que você escolha os produtos mais adequados para cada fase do ciclo.',
    5,
    14
  ),
  (
    56,
    '•	Ajustes na alimentação',
    'Embora isso possa parecer uma solução não convencional, manter-se hidratada pode ajudar a regular o fluxo menstrual. No entanto, cada corpo é único, então preste atenção em como sua dieta afeta seu ciclo.',
    6,
    14
  ),
  (
    57,
    '•	Pratique a inserção correta',
    'Se você usa coletores ou tampões, a forma como os insere é fundamental. Certifique-se de que estão bem-posicionados — um coletor deve sentir uma leve pressão, mas sem causar desconforto. Já um tampão deve ser inserido de forma que você não o sinta.',
    7,
    14
  ),
  (
    58,
    '•	Troca regular',
    'A frequência com que você troca seu produto menstrual é crucial. É recomendável trocar absorventes ou coletores a cada 4 a 6 horas, ou sempre que sentir necessidade, especialmente em dias de fluxo mais intenso. ',
    2,
    14
  ),
  (
    59,
    'Conclusão',
    'Evitar vazamentos menstruais é uma questão de preparação e atenção. Aplicando alguns desses métodos você pode se sentir mais confiante e confortável durante o seu ciclo. Lembre-se de que cada pessoa é diferente, e o que funciona para uma pode não ser ideal para outra. Se você continuar enfrentando problemas, não hesite em consultar um profissional de saúde para explorar suas opções. ',
    8,
    14
  ),
  (
    60,
    '•	Use roupas adequadas',
    'As roupas que você usa podem impactar sua confiança durante a menstruação. Optar por calças ou saias mais largas pode ajudar a disfarçar qualquer possível vazamento. Além disso, roupas em tons mais escuros são úteis para ocultar manchas, caso ocorram.',
    3,
    14
  ),
  (
    61,
    'Causas e sintomas',
    'Os sintomas costumam aparecer como espinhas, principalmente na região do rosto, peito e costas. Muitas vezes, esses surtos são acompanhados de uma pele mais oleosa, o que pode ser desconfortável e frustrante. Além do aspecto físico, a acne pode afetar a autoestima e contribuir para a ansiedade durante o ciclo menstrual. ',
    1,
    15
  ),
  (
    62,
    'Dicas para lidar com a acne',
    '1.	Manter uma rotina de limpeza diária é fundamental, use um limpador suave para remover impurezas e excesso de oleosidade. Lave o rosto pelo menos duas vezes ao dia.\n2.	Uma dieta equilibrada, rica em frutas e vegetais, e a prática de exercícios podem ajudar a regular os hormônios. Técnicas de relaxamento, como meditação, também podem ser benéficas.\n3.	Se a acne se tornar persistente ou severa, buscar orientação de um dermatologista pode ser a melhor solução. Eles podem oferecer opções de tratamento mais específicas e indicar produtos de qualidade.\n',
    2,
    15
  ),
  (
    63,
    'Conclusão',
    'Lidar com a acne menstrual pode ser desafiador, mas é importante lembrar que muitas mulheres passam por isso. Encontrar uma rotina que funcione para você pode levar algum tempo, mas cuidar da sua pele e do seu bem-estar emocional é um passo essencial. Cada corpo é único, e ter paciência consigo mesma é fundamental nessa jornada.',
    3,
    15
  ),
  (
    64,
    'Causas da pobreza menstrual',
    'A pobreza menstrual é o resultado de uma combinação de fatores econômicos, culturais e sociais. Em muitos países, os produtos de higiene menstrual são considerados luxos, com impostos elevados que os tornam inacessíveis para famílias de baixa renda. Além disso, a falta de educação sobre menstruação, que ainda é um tabu em muitas culturas, contribui para a desinformação e o estigma que envolvem o assunto. ',
    1,
    16
  ),
  (
    65,
    'Conclusão',
    'A pobreza menstrual é uma questão que merece atenção e ação. Para avançar em direção a um mundo mais justo, é fundamental garantir que todas as pessoas tenham acesso a produtos de higiene menstrual adequados e informações precisas sobre o ciclo menstrual. \nAo abordar esse tema de maneira proativa, podemos contribuir para a saúde, educação e dignidade de milhões de pessoas, quebrando o ciclo da pobreza e promovendo uma sociedade mais igualitária.\n',
    5,
    16
  ),
  (
    66,
    'Iniciativas e soluções',
    'Nos últimos anos, diversas iniciativas têm surgido para combater a pobreza menstrual. Organizações não governamentais, movimentos sociais e governos têm trabalhado para aumentar a conscientização sobre a menstruação e a importância do acesso a produtos de higiene. Algumas soluções incluem a distribuição gratuita de absorventes, a criação de alternativas sustentáveis, como coletores menstruais, e programas educacionais que abordam o tema da menstruação de forma aberta e informativa.',
    4,
    16
  ),
  (
    67,
    'Impactos na saúde e educação',
    'A falta de acesso a produtos adequados pode levar a sérios problemas de saúde, como infecções e outras complicações. Muitas jovens, ao não terem acesso a absorventes, podem se sentir forçadas a ficar em casa durante o período menstrual, prejudicando sua educação e limitando suas oportunidades. Estima-se que milhões de meninas deixem a escola por causa da menstruação, perpetuando ciclos de pobreza e desigualdade.',
    2,
    16
  ),
  (
    68,
    'Pobreza menstrual no Brasil ',
    'O Brasil também enfrenta desafios significativos relacionados à pobreza menstrual. De acordo com o estudo “Pobreza Menstrual no Brasil”, realizado pelo UNFPA e UNICEF, cerca de 713 mil pessoas que menstruam não têm acesso a banheiro ou chuveiro em casa, e mais de 4 milhões não conseguem obter itens básicos de cuidados menstruais nas escolas.\n	Além disso, a pobreza menstrual não afeta apenas aqueles em situações de vulnerabilidade, a falta de conhecimento sobre o uso de produtos de higiene menstrual impacta muitas famílias brasileiras. A carência de educação e infraestrutura prejudica a vida de inúmeras meninas, dificultando seu acesso a cuidados adequados e limitando sua participação plena na escola e na sociedade. \n',
    3,
    16
  ),
  (
    69,
    'O que é um absorvente?',
    'O absorvente externo é um produto descartável que serve para prevenir vazamentos. A maioria dos modelos conta com uma camada adesiva na parte inferior, permitindo que o absorvente se fixe à calcinha, garantindo maior segurança e conforto durante o uso.',
    1,
    17
  ),
  (
    70,
    'Características principais',
    'O absorvente é projetado para lidar com fluxos menstruais leves a moderados. A capacidade de absorção pode variar entre as marcas, e é importante escolher um que se adeque ao seu fluxo.\nCom uma camada macia e fina, o absorvente externo proporciona conforto ao longo do dia. Muitas marcas oferecem opções com tecnologia de secagem rápida, que mantém a sensação de frescor.\nOs absorventes vêm em diferentes formatos e tamanhos, adequando-se a várias preferências. Alguns possuem bordas laterais para maior proteção contra vazamentos.\nA fita adesiva é uma característica fundamental, garantindo que o absorvente permaneça no lugar, mesmo durante atividades físicas.\n',
    2,
    17
  ),
  (
    71,
    'Conclusão',
    'O absorvente externo continua sendo uma escolha prática e eficaz para gerenciar o fluxo menstrual. Cada mulher tem sua própria experiência e preferência, ou seja, é de extrema importância conhecer as opções disponíveis para manter o ciclo menstrual controlado.',
    4,
    17
  ),
  (
    72,
    'Vantagens do absorvente externo',
    '•	O absorvente normal é simples de usar e descartar, tornando-o uma opção prática para o dia a dia.\n•	O design fino e discreto permite que as usuárias se sintam confortáveis, sem preocupações com visibilidade sob a roupa.\n•	Esses absorventes são amplamente disponíveis em supermercados, farmácias e até mesmo de graça através do SUS.\n',
    3,
    17
  ),
  (
    73,
    'O que é um absorvente de pano?',
    'Os absorventes de pano são absorventes mais ecológicos que ajudam tanto as pessoas que menstruam como o meio ambiente. Eles vêm em diferentes tamanhos e formatos, podendo ser usados de forma semelhante aos absorventes descartáveis, mas com a vantagem de serem laváveis e reutilizáveis.',
    1,
    18
  ),
  (
    74,
    'Conclusão',
    'Os absorventes de pano são uma ótima alternativa para o controle do fluxo menstrual. Conhecer as características e as opções disponíveis ajuda cada mulher a encontrar o absorvente de pano que melhor se adapta às suas necessidades, tornando o ciclo menstrual uma experiência mais confortável e consciente.',
    5,
    18
  ),
  (
    75,
    'Características principais',
    'Por serem feitos com tecidos naturais, os absorventes de pano são projetados para permitir a circulação de ar, reduzindo o risco de irritações e alergias.\nApós o uso, os absorventes de pano podem ser lavados à mão ou na máquina, sendo recomendável secá-los ao sol para garantir uma higienização eficaz.\nCom os devidos cuidados, esses absorventes podem durar até 3 anos, tornando-se uma opção econômica a longo prazo.\n',
    2,
    18
  ),
  (
    76,
    'Vantagens do absorvente de pano',
    '•	Ao escolher usar absorventes de pano, as mulheres reduzem a quantidade de resíduos gerados, contribuindo para um meio ambiente mais limpo.\n•	Muitos usuários relatam que os absorventes de pano são mais confortáveis do que os descartáveis, pois não contêm produtos químicos ou fragrâncias.\n•	Embora o investimento inicial possa ser maior, a durabilidade dos absorventes de pano resulta em economia a longo prazo.\n',
    3,
    18
  ),
  (
    77,
    'Como escolher um absorvente de pano?',
    'Um dos fatores importantes para decidir qual absorvente comprar é escolher um absorvente adequado ao seu nível de fluxo, muitos fabricantes oferecem diferentes modelos para atender a essa necessidade.\nLembre-se que a lavagem e a secagem adequadas são fundamentais para garantir a durabilidade e a higiene dos absorventes. \n',
    4,
    18
  ),
  (
    78,
    'O que é um Coletor Menstrual?',
    'O coletor menstrual é um pequeno copo flexível que se insere na vagina para coletar o fluxo menstrual. Ele pode ser usado por até 12 horas, dependendo do fluxo, e é uma opção reutilizável, sendo lavável e durável por anos. ',
    1,
    19
  ),
  (
    79,
    'Conclusão',
    'Embora o coletor menstrual tenha muitos benefícios, pode não ser a opção ideal para todas as mulheres. Algumas podem achar difícil a inserção ou remoção, especialmente no início. Vale a pena experimentar e encontrar o que funciona melhor para o seu corpo, sempre use o produto mais confortável para você!',
    4,
    19
  ),
  (
    80,
    'Vantagens do Coletor Menstrual',
    'Por ser reutilizável, reduz significativamente a quantidade de resíduos gerados em comparação com absorventes descartáveis.\nApesar do investimento inicial, pode durar de 5 a 10 anos, resultando em economia a longo prazo.\nMuitas usuárias relatam maior conforto ao usar coletores, uma vez que não há contato com produtos químicos encontrados em absorventes descartáveis.\n',
    2,
    19
  ),
  (
    81,
    'Como Usar um Coletor Menstrual',
    '1.	Os coletores vêm em diferentes tamanhos e formatos. O tamanho pode depender da idade, do fluxo e se você já teve filhos.\n2.	Encontre uma posição confortável (como agachada ou sentada) e insira o coletor suavemente. Ele deve se abrir completamente para criar uma vedação.\n3.	Para remover, puxe pela base, não pelo cabo. Esvazie o coletor e lave com água e sabão neutro antes de reinserir.\n4.	Quando não estiver em uso, armazene o coletor em um local limpo e seco.\n',
    3,
    19
  ),
  (
    82,
    'O que são absorventes internos?',
    'Os absorventes internos são pequenos cilindros feitos de materiais absorventes, geralmente algodão, que são inseridos na vagina durante a menstruação. Sua principal função é absorver o fluxo menstrual antes que ele chegue ao canal vaginal, evitando vazamentos e proporcionando uma experiência discreta.',
    1,
    20
  ),
  (
    83,
    'Vantagens dos absorventes internos',
    'Por serem inseridos internamente, os tampões apresentam vantagens como maior capacidade de movimento permitindo mais liberdade durante atividades físicas e ao longo do dia, além de serem discretos e não poderem ser vistos sob as roupas, proporcionando confiança em qualquer situação.\nE, dependendo do fluxo, um tampão pode ser usado por até 8 horas, o que significa menos interrupções durante o dia.\n',
    3,
    20
  ),
  (
    84,
    'Considerações ao usar absorventes internos',
    '1.	Higiene: É fundamental manter boas práticas de higiene. Sempre lave as mãos antes de inserir ou remover o tampão para evitar infecções.\n2.	Troca: Os absorventes internos devem ser trocados a cada 4 a 8 horas, evitando o uso prolongado, que pode aumentar o risco de síndrome do choque tóxico (TSS), uma condição rara, mas séria.\n3.	Conforto: Se um tampão causar desconforto, pode ser necessário tentar um tamanho diferente ou verificar se está colocado corretamente.\n4.	Escolha: Escolher a capacidade de absorção certa é crucial para evitar vazamentos e garantir conforto. Para fluxos mais leves, os modelos leves ou regulares são adequados, enquanto os fluxos mais intensos podem exigir opções super ou super plus.\n',
    4,
    20
  ),
  (
    85,
    'Conclusão',
    'Os absorventes internos são uma escolha prática para o gerenciamento do fluxo menstrual. Com diversos tamanhos e capacidades disponíveis, eles permitem que cada mulher encontre o produto que melhor se adapta às suas necessidades. Usando um absorvente interno, as mulheres podem desfrutar de liberdade de movimento e conforto, tornando o ciclo menstrual uma parte mais tranquila de suas vidas.',
    5,
    20
  ),
  (
    86,
    'Características principais',
    'Eles estão disponíveis em várias classificações, como leve, regular, super e super plus, permitindo que as usuárias escolham o produto adequado ao seu fluxo menstrual.\nQuando colocados corretamente, os absorventes internos são quase imperceptíveis, permitindo que as mulheres se sintam livres para realizar suas atividades diárias, praticar esportes ou nadar.\nO O.B é fácil de transportar e pode ser trocado rapidamente, tornando-se uma opção conveniente para o dia a dia.\n',
    2,
    20
  ),
  (
    87,
    'O que é uma calcinha absorvente?',
    'A calcinha absorvente é uma peça de roupa íntima equipada com camadas de tecido que absorvem o fluxo menstrual. Diferente dos absorventes descartáveis ou reutilizáveis, ela oferece uma solução integrada, podendo ser usada sozinha em dias de fluxo leve a moderado ou como proteção adicional com outros produtos, como tampões ou coletores menstruais.',
    1,
    21
  ),
  (
    88,
    'Dicas bônus',
    '1.	Escolha um modelo adequado ao seu nível de fluxo. Algumas calcinhas são projetadas para fluxo leve, enquanto outras oferecem maior capacidade para dias de fluxo intenso.\n2.	Opte por calcinhas feitas de tecidos hipoalergênicos e respiráveis que ajudam a evitar irritações e desconfortos.\n3.	Com tantos designs disponíveis, é possível encontrar calcinhas absorventes que se adequem melhor ao seu estilo.\n4.	É importante seguir as instruções de lavagem do fabricante é para garantir a durabilidade e a eficiência do produto.\n',
    4,
    21
  ),
  (
    89,
    'Conclusão',
    'A calcinha absorvente é um item que combina funcionalidade e estilo. Cada mulher pode encontrar a calcinha que melhor se adapta às suas necessidades e preferências. A calcinha absorvente torna o ciclo menstrual uma experiência mais tranquila, oferecendo segurança e liberdade para viver plenamente todos os dias.',
    5,
    21
  ),
  (
    90,
    'Características principais',
    'A calcinha é composta por várias camadas de tecido que têm a função de absorver o fluxo menstrual, manter a umidade longe da pele e prevenir vazamentos.\nDisponíveis em diferentes formatos, tamanhos e estilos, as calcinhas absorventes atendem a diversas preferências pessoais e podem ser usadas com qualquer tipo de roupa.\nFeitas de materiais macios e respiráveis, essas calcinhas proporcionam conforto ao longo do dia, minimizando o risco de irritações.\nApós o uso, as calcinhas absorventes podem ser lavadas à mão ou na máquina, sendo recomendável secá-las à sombra para garantir durabilidade.',
    2,
    21
  ),
  (
    91,
    'Vantagens da calcinha absorvente',
    '•	A calcinha absorvente elimina a necessidade de trocar absorventes ou tampões durante o dia, proporcionando maior liberdade e conforto.\n•	Ao escolher as calcinhas absorventes, mulheres reduzem a quantidade de resíduos gerados, contribuindo para um meio ambiente mais saudável.\n•	Muitas marcas oferecem modelos com proteção adicional contra vazamentos, permitindo que as usuárias se sintam seguras durante todo o dia.\n',
    3,
    21
  ),
  (
    92,
    'Tipos de absorventes',
    'Antes de falarmos sobre como usar, é importante conhecer os tipos de absorventes disponíveis:\n1.	Absorventes externos: Colocados na parte interna da calcinha. \n2.	Absorventes internos (O.B): Inseridos na vagina para absorver o fluxo menstrual internamente.\n3.	Coletor menstrual: Um dispositivo de silicone ou borracha que coleta o fluxo menstrual internamente.\n4.	Calcinha absorvente: Uma peça de roupa íntima que possui uma camada absorvente integrada.\n',
    1,
    22
  ),
  (
    93,
    'Como usar um absorvente interno?',
    'Primeiramente para usar um absorvente interno selecione o tamanho certo que pode ser leve, regular ou super, dependendo do seu fluxo. Antes de iniciar, é fundamental lavar bem as mãos para garantir a higiene.\nEncontre uma posição confortável para a inserção, muitas mulheres preferem estar em pé ou com uma perna apoiada em uma superfície elevada. Ao inserir o absorvente interno, use o dedo ou o aplicador para empurrá-lo o mais internamente possível, garantindo que não cause desconforto.\nÉ importante trocar o absorvente interno a cada 4 a 8 horas, não utilize um absorvente interno por mais de 8 horas para evitar o risco de síndrome do choque tóxico (TSS), e evite dormir com ele, para isso, utilize um absorvente externo. \nApós o uso, descarte o absorvente interno no lixo, evitando jogá-lo no vaso sanitário. \n',
    3,
    22
  ),
  (
    94,
    'Dicas Gerais',
    '•	Pode levar algum tempo para descobrir qual tipo de absorvente funciona melhor para você. Experimente diferentes marcas e estilos.\n•	Tenha sempre absorventes à mão, especialmente antes de esperar o período menstrual.\n•	Se você tiver fluxo irregular ou manchamentos, os protetores diários podem ser uma boa opção para proteção extra.\n',
    4,
    22
  ),
  (
    95,
    'Conclusão',
    'Usar um absorvente corretamente é fundamental para garantir conforto e eficácia durante o ciclo menstrual. Com as dicas deste guia, você pode se sentir mais confiante e preparada para gerenciar seu fluxo menstrual de maneira prática e saudável. Lembre-se sempre de escolher o produto certo para suas necessidades e de manter uma boa higiene durante todo o processo.',
    5,
    22
  ),
  (
    96,
    'Como usar um absorvente externo?',
    'Para usar um absorvente de forma adequada, comece escolhendo o tipo certo, que se ajuste ao seu fluxo menstrual, levando em conta a intensidade e a duração. Ao desembalar, abra a embalagem com cuidado, evitando tocar a parte adesiva; algumas embalagens possuem abas que facilitam essa tarefa.\nEm seguida, retire a proteção adesiva da parte de baixo do absorvente e posicione-o no centro da calcinha, garantindo que a parte adesiva grude firmemente. Verifique se o absorvente está bem alinhado, cobrindo corretamente a área que pode entrar em contato com o fluxo.\nLembre-se de trocar o absorvente a cada 4 a 8 horas, ou sempre que notar que ele está cheio. É importante não exceder 8 horas de uso para evitar desconforto e reduzir o risco de infecções. Após o uso, embrulhe o absorvente em papel toalha ou na embalagem original e descarte-o no lixo, evitando jogá-lo no vaso sanitário para prevenir entupimentos.\n',
    2,
    22
  ),
  (
    97,
    'Descarte de Absorventes Externos e Ineternos',
    'Após o uso de um absorvente (tanto externo como interno), embrulhe-o em papel toalha ou na embalagem original. Isso ajuda a conter odores e a evitar contaminação. Coloque o absorvente embrulhado no lixo. Se houver, utilize lixeiras destinadas ao descarte de produtos menstruais, que muitas vezes têm coleta especial para resíduos orgânicos ou recicláveis.',
    1,
    23
  ),
  (
    98,
    'Reutilização de Calcinhas Absorventes',
    'As calcinhas absorventes devem ser lavadas conforme as instruções do fabricante, pois podem ser reutilizadas por muito tempo. Quando atingirem o fim de sua vida útil, verifique se o fabricante oferece informações sobre descarte. Muitas calcinhas são feitas de materiais que podem ser reciclados.',
    3,
    23
  ),
  (
    99,
    'Dicas importantes',
    '•	Nunca jogue absorventes, tampões ou copas menstruais no vaso sanitário. Isso pode causar entupimentos e danos ao sistema de saneamento.\n•	Compartilhe informações sobre o descarte adequado de produtos menstruais com outras pessoas para promover práticas sustentáveis.\n',
    4,
    23
  ),
  (
    100,
    'Conclusão',
    'Descartar absorventes corretamente é uma parte importante do cuidado com o meio ambiente e da manutenção da higiene pessoal. Seguir estas dicas ajuda a minimizar o impacto dos produtos menstruais e promove um comportamento responsável. Com pequenas mudanças nos hábitos de descarte, cada mulher pode contribuir para um futuro mais sustentável.',
    5,
    23
  ),
  (
    101,
    'Cuidados com Coletores Menstruais',
    'Após o uso, lave o coletor menstrual com água e sabão neutro antes de guardá-lo. Durante o ciclo, você pode esvaziá-lo e lavá-lo conforme necessário. Quando chegar a hora de descartar o coletor, consulte as orientações do fabricante, que podem incluir informações sobre reciclagem ou descarte seguro. Os coletores são duráveis e podem durar anos.',
    2,
    23
  ),
  (
    102,
    'O que é o sabonete íntimo?',
    'O sabonete íntimo é um produto formulado especificamente para a limpeza da região genital. Diferente dos sabonetes comuns, ele é desenvolvido para respeitar o pH da pele e as particularidades da flora vaginal. Essa formulação ajuda a evitar irritações e a manter a saúde da região.',
    1,
    24
  ),
  (
    103,
    'Importância do sabonete íntimo',
    'Os principais pontos de usar um sabonete íntimo são:\n•	Controle do ph: A região genital possui um pH ácido que ajuda a prevenir infecções. Sabonetes íntimos são formulados para manter esse equilíbrio, evitando produtos que possam alterar o pH natural.\n•	Hidratação e saúde da pele: O sabonete íntimo garante a hidratação da pele além evitar o desconforto, mantendo a sensação de leveza e bem-estar.\n•	Evitar mau odor: O uso de sabonete ajuda a diretamente a higienizar as regiões íntimas e manter o equilíbrio da acidez local\n\n',
    2,
    24
  ),
  (
    104,
    'As mulheres podem usar sabonete íntimo todos os dias?',
    'A resposta para essa pergunta é sim, mulheres podem usar todos os dias. Como o sabonete normal, o íntimo é um produto para uso diário. Porém tem casos e casos, algumas pessoas podem ter uma maior sensibilidade para os alguns produtos ou marcas.\n	Ou seja, para saber como o sabonete pode beneficiar a sua pele, marcar uma consulta com um ginecologista é essencial para descobrir mais sobre você e sua saúde no geral.\n\nO sabonete íntimo é uma ferramenta valiosa para a manutenção da higiene pessoal. Com a escolha correta e o uso adequado, ele pode contribuir para a saúde da região genital. Sempre que houver dúvidas sobre cuidados íntimos, é recomendável consultar um profissional de saúde, que pode oferecer orientações personalizadas e seguras. \n',
    5,
    24
  ),
  (
    105,
    'Como escolher o sabonete íntimo ideal',
    'Ao escolher um sabonete íntimo, é importante considerar alguns fatores:\n•	pH Neutro ou Ácido: Opte por produtos que indiquem pH neutro (entre 4,5 e 5,5) para garantir que não haverá alteração no equilíbrio natural da região.\n•	Ingredientes Naturais: Procure sabonetes que contenham extratos naturais, como camomila ou aloe vera, que são conhecidos por suas propriedades suavizantes e calmantes.\n•	Sem Fragrâncias: Prefira produtos sem fragrâncias artificiais, que podem causar irritação.\n•	Testado Dermatologicamente: Escolha marcas que realizem testes dermatológicos e ginecológicos, garantindo a segurança do produto.\n',
    3,
    24
  ),
  (
    106,
    'Como usar?',
    'Deve ser usado com cautela sem esfregar muito, mantendo a calma e movimentos leves. Durante o banho, passe o sabonete nos grandes e pequenos lábios e depois enxague com água. Não passe dentro da vagina e não faça duchas vaginais, pois elas interferem no equilíbrio e autocontrole que o corpo tem.',
    4,
    24
  ),
  (
    107,
    'Cuidados ao usar lenços umedecidos',
    'Escolha Produtos Específicos\nOpte por lenços umedecidos formulados especificamente para a higiene íntima. Esses produtos são geralmente hipoalergênicos, sem fragrâncias artificiais e com pH equilibrado, evitando irritações.\n2. Uso Moderado\nEmbora sejam práticos, evite usar lenços umedecidos em excesso. O uso frequente pode alterar a flora natural da região íntima, levando a irritações ou infecções. O recomendado é usar uma ou duas vezes no dia. \n3. Não Substitua o Banho\nOs lenços umedecidos não devem substituir a higiene regular com água e sabonete. Sempre que possível, é importante realizar a limpeza adequada na ducha.\nOs lenços umedecidos podem ser uma ótima adição à rotina de cuidados durante a menstruação. No entanto, é crucial usá-los com moderação. Sempre que surgir alguma irritação ou desconforto, consulte um profissional de saúde para orientações.\n',
    3,
    25
  ),
  (
    108,
    'Benefícios do uso de lenços umedecidos na menstruação',
    'Os lenços umedecidos são fáceis de transportar e podem ser utilizados em qualquer lugar, seja no trabalho, na escola ou durante viagens. Eles oferecem uma forma rápida e discreta de manter a higiene íntima. Além disso, os lenços umedecidos proporcionam uma sensação imediata de limpeza e frescor, ajudando a aliviar desconfortos e odores indesejados que podem ocorrer durante o período menstrual.',
    1,
    25
  ),
  (
    109,
    'Como usar?',
    'Após trocar o absorvente ou coletor, utilize o lenço para limpar a área externa da genitália, fazendo movimentos suaves e evitando fricções excessivas. É importante lembrar de usar o lenço apenas na parte externa e não introduzi-lo internamente. Após o uso, descarte o lenço no lixo (nunca no vaso sanitário) e, sempre que possível, siga com uma higiene mais completa usando água e sabonete neutro em um banho. ',
    2,
    25
  ),
  (
    110,
    'O que são protetores diários?',
    'Os protetores diários são produtos que ajudam a manter a sensação de frescor e limpeza ao longo do dia. São mais finos e menos absorventes que os absorventes menstruais, sendo ideais para o uso diário, em especial durante a menstruação leve ou para proteção extra em conjunto com outros métodos. ',
    1,
    26
  ),
  (
    111,
    'Benefícios dos protetores diários durante a menstruação',
    '•	Conforto Adicional: Durante a menstruação, algumas mulheres podem se sentir mais confortáveis usando protetores diários, especialmente em dias de fluxo leve. Eles ajudam a evitar vazamentos indesejados.\n•	Higiene: Os protetores diários absorvem a umidade e reduzem o risco de odores, contribuindo para uma sensação de limpeza e frescor.\n•	Proteção contra Vazamentos: Ao usar um absorvente, os protetores diários funcionam como uma camada extra de segurança, especialmente em dias de fluxo irregular.\n•	Facilidade de Uso: São práticos e fáceis de usar, podendo ser trocados rapidamente, o que é ideal para quem tem uma rotina agitada.\n\nÉ importante frisar que o protetor diário tem que ser trocado regularmente pois mesmo que você não esteja com fluxo intenso, é importante trocar o protetor diariamente para evitar odores e possíveis irritações, é indicado substitui-lo duas vezes ao dia.\nE uma dica bônus é teste diferentes marcas! Como cada corpo reage de maneira diferente o teste de vários tipos é importante até encontrar o que oferece mais conforto e segurança para você e seu corpo.\n\nOs protetores diários são uma excelente opção para mulheres que buscam conforto e praticidade durante a menstruação. Incorporar o uso de protetores diários à sua rotina menstrual pode fazer a diferença na sua sensação de bem-estar e segurança. \n',
    2,
    26
  ),
  (
    112,
    'O que são produtos de higiene íntima?',
    'Os produtos de higiene íntima são formulados especificamente para a limpeza e cuidados da área genital. Eles são diferentes dos produtos de higiene corporal, pois levam em consideração o pH e a sensibilidade da pele nessa região. Os principais tipos de produtos incluem:\n•	Absorventes;\n•	Protetor diário;\n•	Sabonetes líquidos e em barra;\n•	Lenços umedecidos;\n•	Sprays e desodorantes íntimos;\n•	Géis hidratantes.\n',
    1,
    27
  ),
  (
    113,
    'Conclusão',
    'Os produtos de higiene íntima são aliados importantes para o bem-estar geral. Mas também é necessário manter um equilíbrio, pois o excesso de higiene também pode afetar a saúde da pessoa. Lembre-se sempre de consultar um profissional de saúde para orientações personalizadas e em caso de dúvidas ou problemas persistentes. ',
    5,
    27
  ),
  (
    114,
    'Por que é importante usar produtos adequados?',
    'O uso de produtos inadequados pode resultar em uma série de problemas. Sabonetes comuns, que contêm fragrâncias e produtos químicos agressivos, podem causar reações adversas na região íntima. \nAlém disso, a limpeza inadequada ou o uso de produtos que desequilibram a flora vaginal pode aumentar o risco de infecções, como candidíase e vaginose bacteriana. Produtos que não são específicos para a área íntima também podem causar secura ou desconforto, afetando a qualidade de vida de forma geral. \n',
    2,
    27
  ),
  (
    115,
    'Como escolher o produto certo?',
    'Se você tem dúvidas sobre qual produto usar aqui estão algumas dicas que devem ser consideradas na hora de escolher o produto ideal:  \n•	pH balanceado: Opte por produtos com pH semelhante ao da flora íntima (em torno de 4,5).\n•	Ingredientes suaves: Prefira fórmulas livres de sulfatos, parabenos e fragrâncias artificiais.\n•	Dermatologicamente testados: Procure produtos que foram testados para garantir a segurança e a eficácia.\n',
    3,
    27
  ),
  (
    116,
    'Dicas para uma boa higiene íntima',
    'Uma boa prática é lavar a área íntima diariamente com água e um sabonete adequado. Se você costuma usar roupas íntimas de tecidos sintéticos, talvez seja hora de experimentar opções de algodão, que permitem que a pele respire melhor.\nEvitar duchas vaginais também é fundamental, pois podem desequilibrar a flora vaginal. Se você sente desconforto ou tem alguma preocupação, não hesite em consultar um profissional de saúde. Afinal, cuidar da saúde íntima é um passo importante para se sentir bem e confiante no dia a dia! \n',
    4,
    27
  ),
  (
    117,
    'Proteção contra ISTs',
    'Se você está preocupada com a possibilidade de contrair ISTs, o preservativo é uma das melhores formas de se proteger. Infecções como clamídia e HIV podem ter consequências graves para a saúde feminina. Usar preservativo durante as relações sexuais não só protege você, mas também ajuda a manter sua saúde a longo prazo.',
    1,
    28
  ),
  (
    118,
    'O papel do preservativo na saúde sexual',
    'Além de prevenir ISTs e gravidezes indesejadas, o uso do preservativo pode trazer mais tranquilidade para sua vida sexual. Saber que você está se protegendo permite que você aproveite o momento sem medos ou ansiedades.',
    4,
    28
  ),
  (
    119,
    'Controle da contracepção',
    'Outra vantagem é que o preservativo oferece uma opção de contracepção que não depende de hormônios. Se você prefere evitar métodos hormonais ou não pode usá-los, o preservativo permite que você tenha controle sobre sua saúde reprodutiva. É uma forma simples e eficaz de evitar uma gravidez indesejada.',
    2,
    28
  ),
  (
    120,
    'Como usar o preservativo feminino?',
    '1.	Abra a Embalagem: Retire o preservativo da embalagem com cuidado.\n2.	Insira o Preservativo: Enrole a parte interna do preservativo e insira-o na vagina, posicionando a parte externa sobre os lábios vaginais. Você pode usar o dedo para empurrar a parte interna até o fundo da vagina.\n3.	Certifique-se de Que Está Colocado Corretamente: A parte externa deve ficar visível e cobrir a vulva.\n4.	Retire Após o Uso: Para remover, segure a parte externa e gire para evitar vazamentos. Descarte-o no lixo.\n',
    5,
    28
  ),
  (
    121,
    'Educação e comunicação',
    'Se você se sente insegura sobre como usar preservativos corretamente, não hesite em buscar informações. O preservativo deve ser colocado antes do contato genital e retirado com cuidado após a relação. Se você sentir que seu parceiro não está valorizando a proteção, é fundamental ter essa conversa. Sua saúde é a prioridade.',
    3,
    28
  ),
  (
    122,
    'Dicas importantes',
    '•	Fale com seu parceiro\nA comunicação é fundamental. Converse com seu parceiro sobre a importância de usar o preservativo e como ele traz segurança para ambos.\n•	Armazene corretamente\nGuarde os preservativos em um local fresco e seco, longe de luz direta e calor. Isso ajuda a manter a integridade do material.\n•	Não reutilize\nLembre-se de que o preservativo feminino é de uso único. Após a relação, descarte-o adequadamente.\n\nO preservativo é um aliado essencial para a saúde das mulheres. Se você tiver dúvidas ou quiser aprender mais sobre como usá-lo, tenha um diálogo aberto com seu parceiro e converse com profissionais de saúde. Cuidar da sua saúde sexual é uma parte importante de viver relacionamentos saudáveis e satisfatórios. Afinal, sua saúde e bem-estar são o que mais importa!\n',
    6,
    28
  ),
  (
    123,
    'O que é sangramento de escape?',
    'O sangramento de escape se refere a qualquer sangramento vaginal que ocorre fora do ciclo menstrual regular e dura cerca de dois ou três dias, esse tipo de sangramento é geralmente mais leve que a menstruação e não necessita do uso de um absorvente, pois não é um sangramento tão intenso. ',
    1,
    29
  ),
  (
    124,
    'Por que ocorre?',
    'As causas do sangramento de escape podem variar bastante e incluem:\n1.	As fortes alterações nos níveis hormonais que ocorrem durante a menstruação podem levar a sangramentos inesperados. Isso é comum em mulheres que utilizam métodos contraceptivos hormonais, como pílulas, implantes ou dispositivos intrauterinos (DIUs).\n2.	O sangramento de escape pode ser um dos primeiros indícios de uma possível gravidez. Não são todas as mulheres que apresentam um sangramento no início da gravidez, mas isso pode ocorrer e é algo normal. Porém, se você apresenta um sangramento intenso durante a gravidez isso é anormal e você deve ir a um médico.\n3.	Algumas mulheres experimentam sangramentos leves durante a ovulação, que ocorrem aproximadamente duas semanas antes da menstruação.\n4.	Infecções vaginais ou do trato urinário podem causar sangramentos, assim como condições mais sérias, como infecções sexualmente transmissíveis (ISTs).\n5.	Essa condição, em que o tecido endometrial cresce fora do útero, pode provocar sangramentos anormais e dor.\n6.	Problemas hormonais, distúrbios de coagulação e até mesmo câncer podem estar associados a sangramentos de escape.\n7.	O estresse também pode gerar sangramentos de escape pois ele afeta o equilíbrio hormonal da mulher fazendo com que sangramentos vaginais ocorram fora do período menstrual.\n',
    2,
    29
  ),
  (
    125,
    'Sintomas associados',
    'Além do sangramento em si, o sangramento de escape pode vir acompanhado de outros sintomas, como:\n•	Dor ou desconforto abdominal.\n•	Alterações no fluxo menstrual.\n•	Sangramento mais intenso ou prolongado.\n•	Sintomas de infecção, como ardência ou coceira.\n',
    3,
    29
  ),
  (
    126,
    'Quando buscar ajuda?',
    'É importante consultar um médico se o sangramento de escape:\n•	For persistente ou recorrente.\n•	Acompanhar dor intensa ou outros sintomas preocupantes.\n•	Estiver associado a alterações significativas no ciclo menstrual.\n•	For acompanhado por sinais de infecção, como febre ou secreção anormal.\n',
    4,
    29
  ),
  (
    127,
    'Conclusão',
    'O sangramento de escape é uma experiência comum, mas pode causar ansiedade e preocupação. Se você estiver enfrentando sangramentos anormais, não hesite em procurar um profissional de saúde para um diagnóstico adequado e opções de tratamento. Cuidar da saúde menstrual deve ser sempre uma prioridade.',
    5,
    29
  ),
  (
    128,
    'O Que é menstruação atrasada?',
    'A menstruação é considerada atrasada quando não ocorre na data esperada, geralmente em ciclos que variam de 21 a 35 dias, dependendo da mulher. Um atraso pode ser de alguns dias ou até várias semanas, e é importante considerar fatores individuais e contextos antes de tirar conclusões',
    1,
    30
  ),
  (
    129,
    'Causas comuns do atraso menstrual',
    '1.	Gravidez\nA causa mais conhecida de menstruação atrasada é a gravidez. Se você estiver sexualmente ativa e a menstruação não ocorrer, é aconselhável fazer um teste de gravidez.\n2.	Flutuações hormonais\nAlterações nos níveis hormonais, como estrogênio e progesterona, podem afetar o ciclo menstrual. Isso pode acontecer devido a estresse, mudanças no peso ou exercícios excessivos.\n3.	Estresse\nO estresse físico e emocional pode interferir na regularidade do ciclo menstrual, levando a atrasos.\n4.	Mudanças de estilo de vida\nMudanças bruscas de rotina, como viagens, mudanças de horário de trabalho ou até mesmo alterações na dieta, podem impactar o ciclo menstrual.\n5.	Condições médicas\nAlgumas condições de saúde, como síndrome dos ovários policísticos (SOP), problemas da tireoide e distúrbios alimentares, podem causar irregularidades menstruais.\n6.	Uso de medicamentos\nCertos medicamentos, especialmente contraceptivos hormonais, podem alterar o ciclo menstrual, causando atrasos.\n\n7.	Menopausa precoce\nPara mulheres na faixa dos 30 anos, a menopausa precoce pode ser uma causa de atrasos menstruais.\n',
    2,
    30
  ),
  (
    130,
    'Cuidados e tratamentos',
    'O tratamento para a menstruação atrasada depende da causa subjacente. Se houver suspeita de gravidez, é essencial realizar um teste caseiro ou consultar um médico. Exames de sangue podem ser realizados para identificar desequilíbrios hormonais. Além disso, reduzir o estresse, manter uma dieta equilibrada e praticar exercícios moderados podem auxiliar na regularização do ciclo menstrual. Com base na causa identificada, o médico pode prescrever medicamentos ou terapias específicas.',
    3,
    30
  ),
  (
    131,
    'Conclusão',
    'A menstruação atrasada pode ser causada por uma variedade de fatores. Se você está enfrentando atrasos menstruais frequentes ou tem preocupações sobre sua saúde reprodutiva, não hesite em buscar orientação médica. ',
    4,
    30
  ),
  (
    132,
    'O que é SOP?',
    'A SOP é uma condição endócrina que se manifesta por um conjunto de sintomas, incluindo irregularidades menstruais, excesso de andrógenos (hormônios masculinos) e a presença de ovários com múltiplos cistos. Embora a causa exata da SOP ainda não seja totalmente compreendida, acredita-se que fatores genéticos e ambientais desempenhem um papel importante.',
    1,
    31
  ),
  (
    133,
    'Causas da SOP',
    'As causas exatas da SOP não são completamente conhecidas, mas alguns fatores contribuintes incluem:\n1.	As mulheres com SOP geralmente apresentam níveis elevados de andrógenos, que podem interferir na ovulação e causar os sintomas típicos da síndrome.\n2.	Muitas mulheres com SOP têm resistência à insulina, que pode levar a um aumento nos níveis de insulina e contribuir para o ganho de peso e dificuldades na ovulação.\n3.	A SOP pode ocorrer em famílias, sugerindo que fatores hereditários possam estar envolvidos.\n4.	Estudos indicam que mulheres com SOP podem ter níveis mais elevados de inflamação no corpo, que podem afetar a função ovariana.\n',
    2,
    31
  ),
  (
    134,
    'Conclusão',
    'A Síndrome dos Ovários Policísticos é uma condição complexa que pode impactar a saúde física e emocional das mulheres. O diagnóstico precoce e o manejo adequado são fundamentais para minimizar os sintomas e melhorar a qualidade de vida. Se você suspeita que pode ter SOP, é importante consultar um profissional de saúde para obter um diagnóstico correto e discutir as melhores opções de tratamento. ',
    5,
    31
  ),
  (
    135,
    'Sintomas da SOP',
    'Os sintomas da SOP podem variar de mulher para mulher e podem incluir:\n•	Ciclos menstruais irregulares ou ausentes.\n•	Excesso de andrógenos que se manifestar como acne, excesso de pelos no corpo (hirsutismo) e calvície de padrão masculino.\n•	Identificação de cistos nos ovários por meio de ultrassonografia.\n•	Muitas mulheres com SOP têm dificuldade em perder peso ou podem ter um aumento de peso inexplicado.\n•	Problemas para engravidar devido à falta de ovulação.\n',
    3,
    31
  ),
  (
    136,
    'Tratamentos',
    'O tratamento da síndrome dos ovários policísticos (SOP) é individualizado e pode incluir diversas abordagens. Mudanças no estilo de vida, como adotar uma dieta equilibrada e realizar exercícios regularmente, podem ser eficazes para controlar os sintomas e melhorar a resistência à insulina.\nMedicações também desempenham um papel importante no tratamento. Contraceptivos orais podem ajudar a regular o ciclo menstrual e reduzir os níveis de andrógenos, o que pode ser benéfico para controlar a acne e o hirsutismo. A metformina é frequentemente utilizada para melhorar a resistência à insulina e pode auxiliar na regulação menstrual. Antiandrogênicos são medicamentos que podem ser eficazes na redução do hirsutismo e da acne.\nPara mulheres que desejam engravidar, existem tratamentos para fertilidade, como medicamentos indutores da ovulação, por exemplo, o clomifeno. Além disso, terapias complementares, como acupuntura e outras abordagens holísticas, podem ajudar algumas mulheres a gerenciarem os sintomas da SOP de forma mais eficaz.\n',
    4,
    31
  ),
  (
    137,
    'O Que é corrimento vaginal?',
    'O corrimento vaginal é uma secreção produzida pelas glândulas da vagina e do colo do útero. Ele desempenha um papel importante na saúde vaginal, ajudando a manter a área lubrificada e protegida contra infecções. A composição e a quantidade de corrimento podem variar ao longo do ciclo menstrual, dependendo de fatores hormonais, saúde e idade. ',
    1,
    32
  ),
  (
    138,
    'Corrimento branco',
    'Características:\n•	Cor: Branco ou amarelo pálido.\n•	Consistência: Grumoso, como queijo cottage.\n•	Odor: Pode ter um leve odor, mas não desagradável.\nO que indica: Esse corrimento é frequentemente associado à candidíase, uma infecção fúngica que causa coceira e irritação. É importante buscar tratamento para evitar desconfortos.\n',
    4,
    32
  ),
  (
    139,
    'Corrimento amarelo',
    'Características:\n•	Cor: Amarelo ou verde.\n•	Consistência: Pode ser espesso ou aquoso.\n•	Odor: Geralmente apresenta um odor forte e desagradável.\nO que indica: Esse tipo de corrimento pode ser um sinal de infecções, como vaginose bacteriana ou infecções sexualmente transmissíveis (ISTs). É recomendável procurar um médico para avaliação.\n',
    5,
    32
  ),
  (
    140,
    'Corrimento rosa',
    'Características:\n•	Cor: Vermelho ou marrom.\n•	Consistência: Pode ser fino ou espesso.\n•	Odor: Normalmente não apresenta odor forte.\nO que indica: Esse tipo de corrimento pode ocorrer durante a ovulação ou após relações sexuais, mas também pode ser um sinal de sangramento entre os ciclos menstruais. Se persistir, é importante buscar orientação médica.\n',
    7,
    32
  ),
  (
    141,
    'Quando buscar ajuda?',
    'É preciso procurar um médico se você notar:\n•	Mudanças súbitas na cor, consistência ou odor do corrimento.\n•	Corrimento acompanhado de coceira, ardência ou dor.\n•	Sangramentos inesperados ou excessivos.\n•	Sintomas gerais, como febre ou mal-estar.\n',
    8,
    32
  ),
  (
    142,
    'Corrimento cinza',
    'Características:\n•	Cor: Cinza ou acinzentado.\n•	Consistência: Pode ser fino e aquoso.\n•	Odor: Normalmente apresenta um odor forte, especialmente após relações sexuais.\nO que indica: O corrimento acinzentado é frequentemente associado à vaginose bacteriana, que ocorre devido a um desequilíbrio na flora vaginal. A consulta a um profissional de saúde é essencial.\n',
    6,
    32
  ),
  (
    143,
    'Conclusão',
    'Compreender os diferentes tipos de corrimento vaginal é essencial para a saúde reprodutiva. Enquanto o corrimento é uma parte saudável do ciclo menstrual, alterações significativas na cor podem indicar problemas que requerem atenção médica. Mantenha um diálogo aberto com um profissional de saúde para garantir a saúde vaginal e o bem-estar geral. Se você tiver mais dúvidas sobre o assunto, não hesite em procurar informações e orientações.',
    9,
    32
  ),
  (
    144,
    'Tipos de corrimento vaginal',
    'Os corrimentos vaginais podem ser classificados em diferentes tipos, cada um com características distintas. Abaixo, estão os principais tipos de corrimento e suas implicações: ',
    2,
    32
  ),
  (
    145,
    'Corrimento transparente',
    'Características:\n•	Cor: Claro ou branco.\n•	Consistência: Aquoso ou semelhante à clara de ovo.\n•	Odor: Geralmente sem odor forte.\nO que indica: Esse tipo de corrimento é considerado saudável e é comum ao longo do ciclo menstrual, especialmente durante a ovulação. Ele ajuda a manter a vagina limpa e livre de infecções.\n',
    3,
    32
  ),
  (
    146,
    'Causas e sintomas',
    'Em resumo, as feridas uterinas ocorrem quando as células da parte interna do colo uterino se deslocam para a parte externa. Essa exposição às condições do ambiente vaginal faz com que essas células fiquem avermelhadas e inflamadas, criando a aparência de uma “ferida”.\nE essas feridas podem resultar de diversos fatores, incluindo alterações hormonais, infecções e condições congênitas. Muitas vezes, as mulheres podem não apresentar sintomas, especialmente em casos de lesões benignas. No entanto, algumas podem experienciar:\n•	Sangramentos anormais, que podem variar em intensidade e frequência.\n•	Dor pélvica, que pode ser leve ou intensa.\n•	Dificuldades para engravidar ou complicações durante a gravidez.\n•	Sintomas relacionados à menstruação, como cólicas severas ou períodos irregulares.\n',
    1,
    33
  ),
  (
    147,
    'Diagnóstico',
    'O diagnóstico de lesões no útero é geralmente realizado por meio de exames clínicos e o teste de HPV. A ultrassonografia é uma ferramenta comum utilizada para identificar anomalias uterina. ',
    2,
    33
  ),
  (
    148,
    'Tratamento',
    'O tratamento para lesões no útero varia de acordo com o tipo, localização e gravidade da lesão. Em muitos casos, especialmente quando se trata de lesões benignas, a vigilância ativa pode ser uma opção viável, com monitoramento regular. No entanto, se a lesão causar sintomas significativos ou estiver associada a riscos de saúde, intervenções cirúrgicas podem ser necessárias.\nOs tratamentos podem incluir:\n•	Medicações: Para controlar sintomas, como dor ou sangramento.\n•	Procedimentos minimamente invasivos: Como a remoção de pólipos ou miomas.\n•	Cirurgias mais abrangentes: Em casos de lesões malignas ou quando a saúde reprodutiva está em risco.\n\n',
    3,
    33
  ),
  (
    149,
    'Conclusão',
    'As lesões no útero podem variar em tipo e gravidade, mas entender essas condições é fundamental para manter a saúde reprodutiva. Enquanto algumas lesões são benignas e assintomáticas, outras podem exigir tratamento. Mantenha um diálogo aberto com um profissional de saúde e faça exames regulares para garantir sua saúde uterina. ',
    4,
    33
  ),
  (
    150,
    'O Que são anticoncepcionais?',
    'Anticoncepcionais são métodos utilizados para prevenir a gravidez. Existem diversas formas de anticoncepcionais, incluindo pílulas, preservativos, adesivos, injeções, implantes e dispositivos intrauterinos (DIUs). Eles agem de diferentes maneiras, mas geralmente têm como objetivo impedir a ovulação.',
    1,
    34
  ),
  (
    151,
    'Tipos de anticoncepcionais',
    'Entre os principais tipos de anticoncepcionais, os mais conhecidos são:\n•	Anticoncepcionais Orais (Pílulas): Podem ser combinados, contendo estrogênio e progestágeno, ou minipílulas, que contêm apenas progestágeno. São eficazes na regulação do ciclo menstrual e na prevenção da ovulação.\n•	Dispositivos Intrauterinos (DIUs): Podem ser de cobre, que atua como um espermicida, ou hormonais, que liberam progestágeno. Ambos são métodos de longa duração, podendo permanecer no útero por vários anos.\n•	Anticoncepcionais Injetáveis: Administra-se uma injeção de hormônio, geralmente a cada três meses, oferecendo uma solução para a contracepção.\n•	Preservativos: Métodos de barreira que impedem a passagem de espermatozoides. Além de prevenir a gravidez, também protegem contra infecções sexualmente transmissíveis (ISTs).\n',
    2,
    34
  ),
  (
    152,
    'Conclusão',
    'O uso de anticoncepcionais pode trazer benefícios significativos. No entanto, é importante estar ciente dos possíveis efeitos colaterais e discutir as opções com um profissional de saúde. Cada mulher é única, e encontrar o método contraceptivo adequado é fundamental para garantir a saúde e o bem-estar. ',
    5,
    34
  ),
  (
    153,
    'Efeitos dos anticoncepcionais',
    'Efeitos positivos\nMuitas mulheres relatam que os anticoncepcionais ajudam a regularizar o ciclo menstrual, tornando os períodos mais previsíveis e menos intensos.\nOs anticoncepcionais podem aliviar sintomas relacionados à menstruação, como cólicas e síndrome pré-menstrual (TPM).\nAlguns anticoncepcionais, especialmente aqueles com estrogênio, podem ajudar a melhorar a acne, devido à redução da produção de andrógenos.\nO uso de anticoncepcionais pode reduzir o risco de certas condições, como cistos ovarianos, endometriose e câncer de ovário e endométrio.\n2. Efeitos colaterais\nAlgumas mulheres podem experimentar náuseas, especialmente nos primeiros meses de uso. Geralmente, esse efeito diminui com o tempo.\nMudanças hormonais podem levar a variações de humor, depressão ou ansiedade em algumas mulheres.\nEmbora a pesquisa sobre o ganho de peso relacionado aos anticoncepcionais seja mista, algumas mulheres relatam aumento de peso ao iniciar o uso.\nPrincipalmente nos primeiros meses, é comum ter sangramentos entre as menstruações ou períodos mais leves.\n',
    3,
    34
  ),
  (
    154,
    'Considerações importantes',
    'Consulta médica\nÉ fundamental consultar um profissional de saúde antes de iniciar qualquer método anticoncepcional. O médico pode ajudar a escolher o método mais adequado, considerando seu histórico de saúde e necessidades individuais.\n2. eficácia\nA eficácia dos anticoncepcionais pode variar. É essencial seguir as orientações do médico e usar os métodos corretamente para garantir a máxima proteção.\n3. não protege contra ists\nOs anticoncepcionais hormonais não oferecem proteção contra infecções sexualmente transmissíveis (ISTs). O uso de preservativos é recomendado para prevenir ISTs.\n',
    4,
    34
  ),
  (
    155,
    'O que são métodos contraceptivos?',
    'Métodos contraceptivos são estratégias utilizadas para prevenir a gravidez. Eles podem atuar de diferentes maneiras, como impedir a ovulação, bloquear a fertilização do óvulo ou alterar o ambiente uterino. Existem métodos hormonais, de barreira, naturais e permanentes, cada um com suas vantagens e desvantagens.  ',
    1,
    35
  ),
  (
    156,
    'Tipos de métodos contraceptivos',
    '. Métodos Hormonais\npílulas anticoncepcionais: São pílulas, contendo estrogênio e progestágeno, ou que contêm apenas progestágeno. São muito eficazes na prevenção da ovulação.\ninjeções contraceptivas: controla os níveis de hormônio por injeções. Assim evitando a ovulação \n2. Métodos de Barreira\nPreservativos: Também conhecidos como camisinha, os preservativos são feitos tanto para homens quanto para as mulheres. A camisinha masculina é colocada no pênis antes do ato sexual e a camisinha feminina é colocada no interior da vagina antes do ato. Eles têm a mesma função, impedir que os espermatozoides cheguem nos ovários, assim impedindo a gravidez.\nDiafragma: O diafragma é um copinho de silicone em forma de cúpula que a mulher insere dentro da vagina algumas horas antes do ato sexual para evitar a gravidez.\n3. Métodos Naturais\nCoito interrompido: Antes de ejacular o homem retira o pênis da vagina, tentando evitar com que o esperma entre em contato com a vagina\n4. Métodos Permanentes\nLaqueadura: Este é um método contraceptivo destinado às mulheres, que envolve o corte das trompas de Falópio. Embora a ovulação continue a ocorrer, a interrupção da conexão entre os ovários e o útero impede a fecundação.\nVasectomia: Este método contraceptivo é realizado nos homens e consiste na ligadura ou corte dos ductos deferentes. O homem mantém a ejaculação normalmente, mas o líquido ejaculado não contém espermatozoides.\n',
    2,
    35
  ),
  (
    157,
    'Conclusão',
    'Escolher um método contraceptivo adequado é fundamental para o seu bem-estar. Cada método tem suas vantagens, desvantagens e níveis de eficácia. É essencial consultar um profissional de saúde para discutir suas opções e encontrar o método que melhor se adapte às suas necessidades e estilo de vida. ',
    3,
    35
  ),
  (
    158,
    'O que é gravidez?',
    'A gravidez é o período em que um embrião se desenvolve dentro do útero, resultando na gestação. Geralmente, dura cerca de 40 semanas e é dividida em três trimestres. A gravidez é acompanhada de diversas mudanças hormonais e físicas no corpo da mulher, que podem causar sintomas como náuseas, fadiga e alterações de humor.',
    1,
    36
  ),
  (
    159,
    'Tipos de aborto:',
    'Aborto espontâneo\nO aborto espontâneo é a perda natural da gravidez, geralmente ocorrendo antes da 20ª semana de gestação, ou seja, ainda no início. As causas podem incluir sobrepeso ou mulheres abaixo do peso, problemas de saúde da mãe, consumo de drogas, além de idade avançada.\n\n\n\nAborto induzido\nO aborto induzido refere-se à interrupção intencional da gravidez, que é realizada por meio de medicamentos ou procedimentos cirúrgicos. As razões para essa decisão podem ser variadas, incluindo preocupações médicas, como riscos à saúde da mãe ou do feto, além de razões sociais ou pessoais, como questões econômicas ou familiares. \nÉ importante que a mulher tenha acesso a informações adequadas e apoio emocional durante esse processo. \n',
    4,
    36
  ),
  (
    160,
    'Aspectos legais ',
    'A legalidade do aborto varia amplamente entre países e regiões. Em muitos lugares, existem restrições sobre quando e como um aborto pode ser realizado, e isso pode impactar as opções disponíveis para as mulheres. A discussão sobre aborto também levanta questões éticas profundas, envolvendo direitos reprodutivos, saúde da mulher e moralidade.',
    5,
    36
  ),
  (
    161,
    'Sinais e sintomas da gravidez',
    '•	Atraso menstrual;\n•	Náuseas;\n•	Sensibilidade nos seios e aumento no tamanho;\n•	Cansaço extremo pode ocorrer.\n',
    2,
    36
  ),
  (
    162,
    'Conclusão',
    'A gravidez e o aborto são temas complexos. É fundamental que as mulheres tenham acesso a informações precisas e apoio adequado ao longo dessas experiências. Consultar um profissional de saúde é essencial para tomar decisões informadas e garantir a sua saúde. \n',
    6,
    36
  ),
  (
    163,
    'O que é aborto?',
    'O aborto é a interrupção precoce da gravidez, ou seja, antes que o feto possa sobreviver fora do útero. Pode ocorrer espontaneamente (aborto espontâneo) ou ser induzido (aborto induzido). ',
    3,
    36
  ),
  (
    164,
    'Tipos de Útero: ',
    'útero normal\nCaracterísticas:\nForma de pera invertida.\nApresenta uma cavidade uterina única e bem definida.\nImplicações: \nO útero normal é considerado ideal para a gravidez, com uma anatomia adequada para a implantação e desenvolvimento do embrião.\n\n2. Útero septado\nCaracterísticas:\nApresenta uma divisão interna, ou seja, possui um septo (parede) que divide a cavidade uterina em duas partes.\nImplicações: \nMulheres com útero septado podem ter maior risco de aborto espontâneo e complicações na gravidez. Em alguns casos, a correção cirúrgica pode ser recomendada.\n\n3. Útero bicorno\nCaracterísticas:\nTem duas cavidades uterinas separadas, semelhante a um coração. A parte externa pode parecer normal, mas internamente apresenta duas hornas (cavidades).\n\nImplicações: \nO útero bicorne pode levar a complicações na gravidez, como abortos ou parto prematuro, dependendo do grau de separação.\n\n\n4. Útero didelfo\nCaracterísticas:\nPresença de dois úteros e dois colos uterinos. Cada útero pode ter sua própria menstruação e ciclo ovulatório.\nImplicações: \nMulheres com útero didelfo podem ter gestações bem-sucedidas, mas o risco de complicações, como parto prematuro, é maior. A condição pode ser assintomática.\n\n5. Útero unicorno\nCaracterísticas:\nÉ menor do que o normal e não está completamente desenvolvido, apresenta apenas uma tuba uterina.\nImplicações: \nMulheres com útero hipoplásico podem enfrentar dificuldades para engravidar, e a condição pode estar associada a outras anomalias do sistema reprodutivo.\n',
    1,
    37
  ),
  (
    165,
    'Conclusão',
    'Os diferentes tipos de útero podem ter implicações significativas na saúde reprodutiva e na gestação. É importante que as mulheres conheçam sua anatomia e busquem orientação médica se tiverem preocupações sobre suas condições uterinas. Consultas regulares e exames ginecológicos podem ajudar a identificar quaisquer anomalias e permitir um acompanhamento adequado. ',
    2,
    37
  ),
  (
    166,
    'Tipos de útero e suas causas',
    '1. Útero septado\nCaracterísticas:\n•	Cavidade uterina dividida por um septo (parede).\nCausas: A formação de um útero septado pode ocorrer devido a um desenvolvimento anormal durante a fusão dos ductos müllerianos. Isso pode ser resultado de fatores genéticos ou de interferências durante o desenvolvimento fetal.\n\n2. Útero bicorne\nCaracterísticas:\n•	Duas cavidades uterinas, semelhante a um coração.\nCausas: Assim como o útero septado, o útero bicorne resulta de anomalias no desenvolvimento embrionário dos ductos müllerianos, os fatores genéticos também podem contribuir para essa condição.\n\n3. Útero didelfo\nCaracterísticas:\n•	Presença de dois úteros e dois colos uterinos.\nCausas: O útero didelfo se forma quando os ductos müllerianos não se fundem adequadamente durante o desenvolvimento embrionário. Essa anomalia xpode ser influenciada por fatores genéticos.\n\n4. Útero unicorno\nCaracterísticas:\n•	Tamanho menor do que o normal e desenvolvimento incompleto.\nCausas: O útero unicorno pode ser causado por fatores genéticos, hormonais ou ambientais durante o desenvolvimento fetal. Pode estar associado a síndromes congênitas que afetam a formação do sistema reprodutivo.\n',
    1,
    38
  ),
  (
    167,
    'Conclusão',
    'As variações na anatomia do útero podem resultar de diferentes causas, principalmente relacionadas ao desenvolvimento embrionário. Compreender esses tipos e suas causas é crucial para a saúde reprodutiva das mulheres.  ',
    2,
    38
  ),
  (
    168,
    'Tipos de Útero e Seus Malefícios',
    '1. Útero Normal\nMalefícios:\n	O útero normal, em geral, não apresenta malefícios significativos. No entanto, condições como miomas ou pólipos podem surgir, causando complicações como sangramentos intensos ou dor, que podem impactar a qualidade de vida da mulher.\n\n2. Útero Septado\nMalefícios:\n	O útero septado apresenta alguns riscos como: o formato anômalo pode aumentar a probabilidade de abortos espontâneos, uma vez que a dificuldade de implantação do embrião é maior. Além disso, essa condição pode levar a complicações durante a gravidez, como partos prematuros e restrições no crescimento fetal, exigindo um acompanhamento mais rigoroso.\n\n3. Útero Bicorne\nMalefícios:\nNo caso do útero bicorne, a estrutura anômala também está associada a um maior risco de abortos espontâneos. A forma peculiar do útero pode dificultar a acomodação adequada do feto, elevando a probabilidade de parto prematuro. As mulheres com útero bicorne frequentemente precisam de monitoramento durante a gestação para garantir a saúde do bebê.\n\n4. Útero Didelfo\nMalefícios:\nO útero didelfo, que consiste em dois úteros separados, permite que muitas mulheres engravidem e tenham filhos. No entanto, esse formato pode estar associado a complicações, como partos prematuros e malformações fetais. Além disso, a presença de dois úteros pode resultar em ciclos menstruais irregulares, afetando o bem-estar geral da mulher.\n\n6. Útero unicorno\nMalefícios:\nO útero unicorno, o mais raro entre as anomalias, pode apresentar dificuldades significativas para a gravidez. O subdesenvolvimento desse órgão pode dificultar a concepção e aumentar o risco de abortos.\n',
    1,
    39
  ),
  (
    169,
    'Conclusão',
    'As anomalias uterinas podem trazer uma série de malefícios que afetam a saúde reprodutiva das mulheres. É essencial que mulheres que suspeitam ter alguma anomalia uterina busquem orientação médica para diagnóstico e acompanhamento adequados. Conhecer mais sobre você e sobre o seu corpo é importantíssimo para sua saúde e autoconhecimento',
    2,
    39
  ),
  (
    170,
    'O que é a adenomiose?',
    'A adenomiose é uma condição benigna em que o tecido endometrial, que normalmente reveste o interior do útero, começa a se infiltrar nas paredes musculares do útero (miométrio). Essa situação pode levar a um aumento do tamanho do útero e, em muitos casos, a sintomas dolorosos.',
    1,
    40
  ),
  (
    171,
    'Conclusão',
    'A adenomiose é uma condição que pode causar desconforto e impactar a qualidade de vida de muitas mulheres. Conhecer os sintomas e buscar o diagnóstico adequado é fundamental para um tratamento eficaz. Se você suspeita que pode ter adenomiose ou tem dúvidas sobre sua saúde menstrual, não hesite em consultar um profissional de saúde. O cuidado com o corpo e a saúde feminina é essencial!\nCaso tenha mais perguntas ou deseje explorar mais sobre o tema, fique à vontade para navegar em nosso site e encontrar o conteúdo que você precisa.\n',
    5,
    40
  ),
  (
    172,
    'Como ocorre a adenomiose?',
    'A causa exata da adenomiose ainda não é completamente compreendida, mas acredita-se que fatores hormonais e genéticos desempenham um papel significativo. A condição é mais comum em mulheres na faixa etária de 30 a 50 anos e pode estar associada a outras condições, como endometriose. \nO desenvolvimento da adenomiose pode estar relacionado com:\n•	O estrogênio é um dos principais hormônios envolvidos, e sua presença pode estimular o crescimento do tecido endometrial infiltrado.\n•	Procedimentos cirúrgicos no útero, como cesarianas ou miomectomias, podem aumentar o risco de adenomiose.\n•	Fatores genéticos. Mulheres com histórico familiar de adenomiose podem ter maior predisposição à condição.\n',
    2,
    40
  ),
  (
    173,
    'Sintomas da adenomiose',
    'Os sintomas da adenomiose podem variar de mulher para mulher, mas alguns dos mais comuns incluem:\n•	Dor menstrual: \nMuitas mulheres com adenomiose relatam cólicas menstruais mais intensas do que o normal.\n•	Sangramento abundante: \nO aumento do fluxo menstrual e a presença de coágulos sanguíneos são frequentes.\n•	Dor durante relações sexuais: \nA dor durante a relação sexual (dispareunia) pode ocorrer em algumas mulheres.\n•	Aumento do útero: \nEm casos mais graves, o útero pode ficar visivelmente aumentado.\n',
    3,
    40
  ),
  (
    174,
    'Tratamento da adenomiose',
    'O tratamento da adenomiose pode variar conforme a gravidade dos sintomas e os desejos reprodutivos da mulher. Algumas opções incluem:\nAntiinflamatórios, anticoncepcionais hormonais e outros medicamentos podem ajudar a controlar a dor e regular o fluxo menstrual.\nA terapia hormonal pode ser usada para reduzir os sintomas, interferindo na produção de estrogênio.\nE em casos mais severos, a remoção do útero (histerectomia) pode ser considerada, especialmente se os sintomas forem incapacitantes e a mulher não tiver mais interesse em engravidar.\n',
    4,
    40
  ),
  (
    175,
    'O Que São pólipos uterinos?',
    'Pólipos uterinos são crescimentos anormais de tecido que se desenvolvem na parede interna do útero (endométrio). Esses tumores são geralmente benignos, embora possam se tornar cancerígenos, e podem variar em tamanho, podendo ser pequenos como uma ervilha ou crescer até vários centímetros. ',
    1,
    41
  ),
  (
    176,
    'Diagnóstico dos pólipos uterinos',
    'O diagnóstico é geralmente realizado através de exames de imagem, como a ultrassonografia transvaginal, que pode identificar a presença de pólipos. Em alguns casos, uma histeroscopia, que permite visualizar diretamente o interior do útero, pode ser necessária para confirmar a presença e a natureza dos pólipos.',
    4,
    41
  ),
  (
    177,
    'Tratamento dos pólipos uterinos',
    'O tratamento dos pólipos uterinos pode variar de acordo com os sintomas e a saúde geral da mulher. As opções incluem:\nSe os pólipos não causam sintomas, o médico pode sugerir apenas monitorar a situação.\nAntiinflamatórios ou tratamentos hormonais podem ser indicados para ajudar a controlar os sintomas, mas não eliminam os pólipos.\nSe os pólipos forem grandes ou causarem sintomas significativos, a remoção pode ser recomendada. Esse procedimento é frequentemente realizado por meio de uma histeroscopia.\n',
    5,
    41
  ),
  (
    178,
    'Como Se Desenvolvem os Pólipos Uterinos?',
    'A formação de pólipos uterinos está associada a uma série de fatores, principalmente hormonais. As causas exatas dos pólipos não são totalmente compreendidas, mas os seguintes fatores podem contribuir para o seu desenvolvimento:\n•	Hormônios: O estrogênio, um hormônio feminino, pode influenciar o crescimento dos pólipos. Muitas vezes, eles se desenvolvem em resposta a um aumento na produção de estrogênio.\n•	Obesidade: Mulheres com excesso de peso podem ter um maior risco de desenvolver pólipos devido a níveis elevados de estrogênio no organismo.\n•	Histórico familiar: Um histórico familiar de pólipos uterinos pode aumentar a probabilidade de sua ocorrência.\n',
    2,
    41
  ),
  (
    179,
    'Conclusão',
    'Os pólipos uterinos são uma condição comum e, na maioria das vezes, benigna, mas podem causar desconforto e complicações em algumas mulheres. É importante estar atenta aos sinais e sintomas, buscando sempre o acompanhamento médico para um diagnóstico preciso. Se você suspeita ter pólipos uterinos ou tem questões sobre sua saúde reprodutiva, consulte um profissional de saúde para orientações adequadas.\nSe você deseja saber mais sobre pólipos uterinos ou outros tópicos relacionados à saúde da mulher, não hesite em explorar nosso site para mais informações. Cuidar da saúde é fundamental!\n',
    6,
    41
  ),
  (
    180,
    'Sintomas dos pólipos uterinos',
    'Os pólipos uterinos podem ser assintomáticos, ou seja, não apresentar sinais visíveis, mas em muitos casos, eles podem causar:\n•	Sangramento anormal: \nIsso inclui sangramento após relação sexual e entre as menstruações com sangramentos menstruais mais intensos ou prolongados.\n•	Dor Pélvica: \nAlgumas mulheres podem sentir desconforto ou dor na região pélvica, especialmente durante a menstruação.\n•	Dificuldade para engravidar: \nEm alguns casos, pólipos podem interferir na fertilidade, tornando mais difícil a concepção.\n',
    3,
    41
  ),
  (
    181,
    'O que são miomas uterinos?',
    'Miomas uterinos são tumores benignos que se desenvolvem nas paredes do útero. Eles podem variar em tamanho, desde alguns milímetros até vários centímetros, e podem crescer em diferentes locais do útero, incluindo na parede interna, externa ou na cavidade uterina.',
    1,
    42
  ),
  (
    182,
    'Como se desenvolvem os miomas uterinos?',
    'A causa exata dos miomas não é completamente compreendida, mas acredita-se que fatores hormonais e genéticos desempenham um papel importante. Eles são mais comuns em mulheres na faixa dos 30 a 50 anos e podem ser influenciados por: \n•	Hormônios: \nO estrogênio e a progesterona são hormônios que estimulam o crescimento do tecido uterino e estão associados à formação de miomas.\n•	Fatores Genéticos: \nMulheres com histórico familiar de miomas podem ter maior predisposição a desenvolvê-los.\n•	Fatores Ambientais: \nAlgumas pesquisas sugerem que a exposição a certos produtos químicos pode aumentar o risco de desenvolvimento de miomas.\n',
    2,
    42
  ),
  (
    183,
    'Sintomas dos miomas uterinos',
    'Nem todas as mulheres com miomas apresentam sintomas, mas quando eles ocorrem, os mais comuns incluem:\n•	Sangramento menstrual abundante, muitas mulheres relatam fluxo menstrual intenso ou prolongado, às vezes acompanhado de coágulos.\n•	Dor pélvica, a pressão causada pelos miomas pode resultar em dor ou desconforto na região pélvica.\n•	Dor durante a relação sexual, algumas mulheres podem sentir dor durante a relação sexual, dependendo da localização dos miomas.\n•	Aumento do abdômen, miomas grandes podem causar um aumento visível no abdômen.\n•	Infertilidade, dependendo do tamanho dos miomas pode haver uma dificuldade para a mulher engravidar.\n',
    3,
    42
  ),
  (
    184,
    'Tratamento dos miomas uterinos',
    'O tratamento dos miomas depende de diversos fatores, como a gravidade dos sintomas, o tamanho e a localização dos miomas, além do desejo da mulher em engravidar. As opções incluem:\n•	Se os miomas não causam sintomas significativos, o médico pode optar por apenas monitorá-los.\n•	Anti-inflamatórios, hormônios e outras medicações podem ajudar a aliviar os sintomas, mas não eliminam os miomas.\n•	Técnicas como embolização da artéria uterina e miomectomia (remoção dos miomas) são opções eficazes.\n•	Em casos mais severos ou quando a mulher não deseja mais ter filhos, a remoção do útero pode ser recomendada.\n',
    4,
    42
  ),
  (
    185,
    'Conclusão',
    'Os miomas uterinos são uma condição comum que pode afetar a qualidade de vida de muitas mulheres. Conhecer os sintomas e buscar o diagnóstico adequado são passos essenciais para um tratamento eficaz. Se você suspeita ter miomas ou tem dúvidas sobre sua saúde reprodutiva, é importante consultar um profissional de saúde.',
    5,
    42
  ),
  (
    186,
    'O que é a ovulação? ',
    'Antes de falarmos sobre a anovulação é importante saber o que é a ovulação. \nOvulação é o processo pelo qual um ovário libera um óvulo maduro, que se torna disponível para a fertilização. Geralmente ocorre uma vez por ciclo menstrual, cerca de 14 dias antes do início da menstruação. Durante a ovulação, o nível de hormônios, como o hormônio luteinizante (LH), aumenta, provocando a liberação do óvulo. \nEsse evento é fundamental para a reprodução, pois é a fase em que a mulher tem a maior probabilidade de engravidar, caso o óvulo seja encontrado por um espermatozoide.\n',
    1,
    43
  ),
  (
    187,
    'Diagnóstico da anovulação',
    'O diagnóstico de anovulação é um processo que geralmente envolve várias etapas. São realizados exames de sangue para avaliar os níveis hormonais e descartar outras condições que possam estar interferindo no ciclo menstrual. O monitoramento do ciclo pode ser uma ferramenta útil, a paciente pode utilizar testes de ovulação ou acompanhar a temperatura do corpo para identificar a ausência de ovulação. ',
    5,
    43
  ),
  (
    188,
    'Tratamento da anovulação',
    'O tratamento da anovulação depende da causa subjacente. Algumas opções incluem:\n1.	Ajustes na dieta, exercícios e manejo do estresse podem ajudar a regular o ciclo.\n2.	O médico pode prescrever medicamentos para induzir a ovulação.\n3.	Se a síndrome dos ovários policísticos for a causa, o tratamento pode incluir controle hormonal e outros medicamentos.\n',
    6,
    43
  ),
  (
    189,
    'Conclusão',
    'A anovulação é uma condição que pode afetar a saúde reprodutiva de muitas mulheres, mas com o diagnóstico e tratamento adequados, é possível gerenciar os sintomas e aumentar as chances de engravidar. Se você suspeita que pode estar enfrentando anovulação ou tem dúvidas sobre sua saúde menstrual, é essencial procurar um profissional de saúde.\nPara mais informações sobre anovulação e outros temas relacionados à saúde da mulher, sinta-se à vontade para explorar nosso site. Cuidar da saúde é sempre a melhor escolha!\n',
    7,
    43
  ),
  (
    190,
    'O Que é anovulação?',
    'Anovulação é a ausência de ovulação, ou seja, o ovário não libera um óvulo durante o ciclo menstrual. Isso pode resultar em dificuldades para engravidar e pode causar irregularidades menstruais. A anovulação pode ser ocasional ou crônica, dependendo da frequência com que ocorre.',
    2,
    43
  ),
  (
    191,
    'Causas da anovulação',
    'A anovulação pode ter várias causas, e algumas das mais comuns incluem:\n•	Desequilíbrios hormonais: \nAlterações nos hormônios que regulam o ciclo menstrual, como estrogênio, progesterona e hormônio folículo estimulante (FSH), podem levar à anovulação.\n•	Síndrome dos ovários policísticos (SOP): \nEssa condição é caracterizada por ovários aumentados com múltiplos cistos e é uma das causas mais comuns de anovulação.\n•	Estresse: \nAltos níveis de estresse podem interferir no ciclo hormonal e afetar a ovulação.\n•	Excesso de peso ou obesidade: \nO tecido adiposo pode produzir estrogênio em excesso, o que pode interferir na ovulação.\n•	Exercício excessivo: \nAtividades físicas intensas, especialmente sem a nutrição adequada, podem levar à anovulação.\n',
    3,
    43
  ),
  (
    192,
    'Sintomas da anovulação',
    'Os sintomas da anovulação podem variar de mulher para mulher, mas alguns dos mais comuns incluem:\n•	Irregularidade menstrual;\n•	Fluxo menstrual alterado;\n•	Dificuldade para engravidar;\n•	Ausência de dor ou de sensibilidade nos seios;\n•	Acne e aumento de pelos no corpo e rosto.\n',
    4,
    43
  ),
  (
    193,
    'O que é anemia?',
    'A anemia é uma condição em que o corpo não possui glóbulos vermelhos saudáveis suficientes para transportar oxigênio adequado para os tecidos. Isso pode levar a sintomas como fadiga, fraqueza e palidez. A anemia pode ser temporária ou crônica e pode ter diversas causas.',
    1,
    44
  ),
  (
    194,
    'Diagnóstico e tratamento  ',
    'O diagnóstico de anemia é feito por meio de exames de sangue, que avaliam a contagem de glóbulos vermelhos, níveis de hemoglobina e outros indicadores. O médico pode solicitar exames adicionais para determinar a causa da anemia. \nJá o tratamento depende do tipo e da causa da anemia:\n•	Podem ser prescritos suplementos de ferro e suplementos de vitamina B12 ou ácido fólico.\n•	Incluir na dieta alimentos ricos em ferro, como carnes vermelhas, feijões, lentilhas, vegetais verdes e grãos integrais.\n•	Condições crônicas devem ser tratadas para melhorar a produção de glóbulos vermelhos.\n•	Em casos graves, pode ser necessária a transfusão de glóbulos vermelhos.\n',
    5,
    44
  ),
  (
    195,
    'Conclusão',
    'A anemia é uma condição que pode afetar significativamente a qualidade de vida, mas com o diagnóstico e tratamento adequados, é possível trata-la de forma eficaz. Se você suspeita que pode estar com anemia ou apresenta sintomas, é importante consultar um profissional de saúde. \nPara mais informações sobre anemia e outros temas relacionados à saúde, sinta-se à vontade para explorar nosso site. Cuidar da saúde é essencial! \n',
    6,
    44
  ),
  (
    196,
    'Tipos de anemia',
    'Existem vários tipos de anemia, e cada um tem suas próprias causas e características:\n1.	Anemia por deficiência de ferro:\n A forma mais comum de anemia, causada pela falta de ferro no organismo. Isso pode ocorrer devido a uma dieta pobre em ferro, perda de sangue (como menstruação intensa) ou problemas de absorção.\n2.	Anemia por falta de vitamina B12 e ácido fólico:\nResulta de deficiências de vitamina B12 ou ácido fólico, levando à produção de glóbulos vermelhos anormais.\n3.	Anemia aplástica: \nOcorre quando a medula óssea não produz glóbulos vermelhos suficientes, geralmente devido a doenças autoimunes, exposição a toxinas ou certas medicações.\n4.	Anemia hemolítica: \nOcorre quando os glóbulos vermelhos são destruídos mais rapidamente do que podem ser produzidos. Pode ser causada por doenças autoimunes, infecções ou reações a transfusões de sangue.\n5.	Anemia de doença crônica: \nComum em pessoas com doenças crônicas, como câncer, artrite reumatoide ou doenças renais, onde a produção de glóbulos vermelhos é afetada.\n',
    2,
    44
  ),
  (
    197,
    'Causas da anemia',
    'As causas da anemia variam de acordo com o tipo, mas algumas das mais comuns incluem:\n•	Deficiência nutricional: Falta de nutrientes essenciais, como ferro, vitamina B12 ou ácido fólico.\n•	Perda de sangue: Sangramentos devido a menstruação intensa, úlceras, hemorragias gastrointestinais ou cirurgias.\n•	Doenças crônicas: Condições que afetam a produção de glóbulos vermelhos, como doenças renais ou câncer.\n•	Genética: Algumas anemias, como a anemia falciforme e a talassemia, têm uma base genética.\n',
    3,
    44
  ),
  (
    198,
    'Sintomas da Anemia',
    'Os sintomas da anemia podem variar de leves a graves e incluem:\n•	Fadiga e fraqueza;\n•	Palidez;\n•	Tontura ou vertigem;\n•	Falta de ar;\n•	Falta de apetite;\n•	Dores de cabeça.\n',
    4,
    44
  ),
  (
    199,
    'O que é endometriose?',
    'A endometriose é uma doença crônica em que o tecido semelhante ao endométrio, que normalmente reveste o interior do útero, começa a crescer fora dele. Isso pode ocorrer nos ovários, trompas de falópio, na superfície externa do útero e em outros órgãos da pelve. A endometriose pode causar inflamação, dor e até infertilidade. ',
    1,
    45
  ),
  (
    200,
    'Diagnóstico da endometriose',
    'O diagnóstico da endometriose pode ser um desafio, uma vez que seus sintomas frequentemente se confundem com os de outras condições. \nUm exame físico, incluindo um exame pélvico, pode revelar áreas de dor ou nódulos. Além disso, exames de imagem, como ultrassonografia ou ressonância magnética, são utilizados para visualizar a presença de endometriose. \nEm casos mais complexos, a laparoscopia, um procedimento cirúrgico minimamente invasivo, pode ser necessário não apenas para confirmar o diagnóstico, mas também para remover o tecido endometrial que está causando os sintomas.\n',
    4,
    45
  ),
  (
    201,
    'Tratamento da endometriose',
    'É importante destacar que a endometriose é uma doença incurável, mas com o tratamento adequado, é possível gerenciar os sintomas e melhorar a qualidade de vida.\nO tratamento da endometriose consiste no uso de medicamentos, como anti-inflamatórios, hormônios e contraceptivos, que ajudam a controlar a dor e regular o ciclo menstrual. \nEm casos mais severos, pode ser necessária a remoção do tecido endometrial ou até mesmo a remoção dos órgãos afetados. Além disso, muitas mulheres recorrem a terapias complementares, como acupuntura, fisioterapia pélvica ou mudanças na dieta, para encontrar alívio. \n',
    5,
    45
  ),
  (
    202,
    'Conclusão',
    'A endometriose é uma condição que pode ter um impacto significativo na qualidade de vida e na saúde reprodutiva das mulheres. O diagnóstico precoce e o tratamento adequado são essenciais para gerenciar os sintomas e melhorar o bem-estar. Se você suspeita que pode ter endometriose ou apresenta sintomas, consulte um profissional de saúde para avaliação e orientação.\nPara mais informações sobre endometriose e outros temas relacionados à saúde da mulher, sinta-se à vontade para explorar nosso site. Cuidar da sua saúde é sempre a melhor escolha!\n',
    6,
    45
  ),
  (
    203,
    'Causas da endometriose',
    'A causa exata da endometriose ainda não é completamente compreendida, mas várias teorias foram propostas:\n1.	Menstruação retrograda: \nSugere que o fluxo menstrual pode voltar pelas trompas de Falópio e se estabelecer na cavidade pélvica. \n2.	Fatores genéticos: \nMulheres com histórico familiar de endometriose têm maior risco de desenvolver a condição.\n3.	Alterações imunológicas: \nProblemas no sistema imunológico podem permitir que o tecido endometrial cresça fora do útero.\n4.	Fatores ambientais: \nExposição a toxinas ambientais e combustão de poluentes pode estar associada ao desenvolvimento da endometriose. \n',
    2,
    45
  ),
  (
    204,
    'Sintomas da endometriose',
    'Os sintomas da endometriose podem variar bastante entre as mulheres, mas alguns dos mais comuns incluem:\n•	A dor intensa, especialmente durante a menstruação ou após a relação sexual, é um dos principais sintomas.\n•	Fluxo menstrual intenso ou sangramento entre as menstruações.\n•	A endometriose é uma das principais causas que afeta a fertilidade, dificultando a concepção.\n•	Também há dor ao evacuar, diarreia, constipação e inchaço, especialmente durante a menstruação.\n',
    3,
    45
  ),
  (
    205,
    'O que é disbiose?',
    'Disbiose é uma condição em que há um desequilíbrio na quantidade de bactérias que vivem no intestino, que afetar a digestão, a absorção de nutrientes e até mesmo o sistema imunológico. A microbiota intestinal saudável é fundamental para a manutenção da saúde geral. ',
    1,
    46
  ),
  (
    206,
    'Diagnóstico da disbiose',
    'O diagnóstico da disbiose geralmente envolve uma avaliação clínica dos sintomas e, em alguns casos, testes de fezes que analisam a composição da microbiota intestinal. Um profissional de saúde pode orientar sobre a necessidade desses testes e interpretar os resultados.',
    4,
    46
  ),
  (
    207,
    'Tratamento da disbiose',
    'O tratamento da disbiose pode incluir:\n•	Mudanças na Dieta: Adoção de uma dieta rica em fibras, frutas, vegetais e alimentos fermentados pode ajudar a restaurar a microbiota saudável.\n•	Probióticos: Suplementos que contêm bactérias benéficas podem ajudar a reequilibrar a microbiota.\n•	Evitar Antibióticos Desnecessários: Usar antibióticos apenas quando prescritos por um médico e quando realmente necessários.\n•	Gerenciamento do Estresse: Práticas como meditação e exercícios físicos podem ajudar a reduzir o estresse e beneficiar a saúde intestinal.\n',
    5,
    46
  ),
  (
    208,
    'Conclusão',
    'A disbiose é uma condição que pode afetar a saúde de maneira significativa, mas com o diagnóstico e tratamento adequados, é possível restaurar o equilíbrio da microbiota intestinal. Se você suspeita que pode ter disbiose ou apresenta sintomas relacionados, é importante consultar um profissional de saúde.\nPara mais informações sobre disbiose e outros temas relacionados à saúde, sinta-se à vontade para explorar nosso site. Cuidar da sua saúde intestinal é fundamental para o seu bem-estar geral!\n',
    6,
    46
  ),
  (
    209,
    'Causas da disbiose',
    'Diversos fatores podem contribuir para o desenvolvimento da disbiose, incluindo:\n•	Dieta;\n•	Uso Excessivo de Antibióticos;\n•	Estresse;\n•	Idade;\n•	Falta de Atividade Física.\n',
    2,
    46
  ),
  (
    210,
    'Sintomas da disbiose',
    'Os sintomas da disbiose podem variar de pessoa para pessoa, mas alguns dos mais comuns incluem:\n•	Dores abdominais;\n•	Problemas digestivos: \nInchaço, náuseas, diarreia ou constipação são frequentes.\n•	Fadiga crônica: \nSensação constante de cansaço e falta de energia.\n•	Problemas na saúde mental: \nAnsiedade, depressão ou alterações de humor podem estar relacionadas ao estado da microbiota.\n\n•	Intolerâncias alimentares: \nAlgumas pessoas podem desenvolver intolerâncias a alimentos que antes eram bem tolerados.\n',
    3,
    46
  ),
  (
    211,
    'O que é candidíase?',
    'A candidíase é uma infecção causada pelo crescimento excessivo do fungo Candida. Esse fungo é normalmente encontrado em pequenas quantidades no organismo, mas pode se multiplicar em certas condições, levando a sintomas desconfortáveis.',
    1,
    47
  ),
  (
    212,
    'Sintomas da Candidíase',
    'Os sintomas da candidíase nas mulheres podem variar, porém, os mais comuns incluem:\n•	Coceira e Irritação na pele, próximo a região do fungo;\n•	Corrimento;\n•	Manchas brancas na boca;\n•	Dor Durante Relações Sexuais;\n•	Dor ao engolir;\n•	Dor na hora de urinar;\n•	Inchaços na pele.\n',
    3,
    47
  ),
  (
    213,
    'Diagnóstico da Candidíase',
    'O diagnóstico de candidíase é geralmente feito por um médico com base na avaliação dos sintomas e no exame físico. Exames laboratoriais, como a coleta de amostras do corrimento vaginal ou da lesão oral, podem ser realizados para confirmar a presença do fungo.',
    4,
    47
  ),
  (
    214,
    'Tratamento da Candidíase',
    'Como a candidíase tem vários tipos o tratamento pode envolver várias abordagens. Medicamentos antifúngicos, como fluconazol ou clotrimazol, são frequentemente prescritos em diferentes formas, como comprimidos, cremes ou supositórios. \nAlém disso, mudanças na dieta, como a redução da ingestão de açúcares e carboidratos refinados, podem ajudar a controlar o crescimento do fungo. A higiene adequada também é crucial; manter a área genital limpa e seca é fundamental para prevenir a proliferação da Candida e minimizar o risco de recorrências. \n',
    5,
    47
  ),
  (
    215,
    'Prevenção',
    'Algumas medidas podem ajudar a prevenir a candidíase, como:\n•	Usar roupas íntimas de algodão e evitar tecidos sintéticos.\n•	Evitar duchas vaginais e produtos irritantes.\n•	Manter uma alimentação balanceada e rica em probióticos.\n•	Controlar condições que possam afetar o sistema imunológico, como diabetes.\n•	Use métodos contraceptivos.\n•	Mantenha uma boa  higiene íntima.\n',
    6,
    47
  ),
  (
    216,
    'Conclusão',
    'A candidíase é uma infecção comum que pode causar desconforto, mas é tratável e, em muitos casos, prevenível. Se você suspeita que pode estar com candidíase ou apresenta sintomas relacionados, é importante consultar um profissional de saúde para avaliação e tratamento adequado.',
    7,
    47
  ),
  (
    217,
    'Causas da candidíase',
    'Diversos fatores podem contribuir para o desenvolvimento da candidíase, incluindo:\n•	Desequilíbrio da microbiota: O uso de antibióticos pode eliminar as bactérias benéficas que controlam o crescimento da Candida.\n•	Sistema imunológico comprometido: Condições como diabetes, HIV/AIDS ou uso de imunossupressores podem aumentar o risco de candidíase.\n•	Mudanças hormonais: A flutuação hormonal durante a menstruação, gravidez ou uso de anticoncepcionais pode favorecer a proliferação do fungo.\n•	Ambiente úmido: O uso de roupas justas ou materiais sintéticos que retêm umidade pode criar um ambiente propício para a Candida.\n•	Relação sexual sem proteção: a candidíase pode ser transmitida sexualmente, ou se proliferar junto com doenças como HIV e AIDS.\n',
    2,
    47
  ),
  (
    218,
    'O que é vaginose bacteriana?',
    'A vaginose bacteriana é um desequilíbrio da microbiota vaginal, caracterizado por uma redução das bactérias benéficas (como os lactobacilos) e um aumento de bactérias patogênicas. Esse desequilíbrio pode levar a sintomas desconfortáveis e, embora não seja uma infecção sexualmente transmissível (IST), pode aumentar o risco de infecções. ',
    1,
    48
  ),
  (
    219,
    'Sintomas da vaginose bacteriana',
    'Os sintomas da vaginose bacteriana podem variar, mas geralmente incluem um corrimento vaginal característico, que é fino e de cor cinza ou branca, acompanhado de um odor forte, especialmente após relações sexuais. \nAlém disso, algumas mulheres podem sentir coceira ou irritação na região vaginal, o que pode causar desconforto. É importante buscar orientação médica se esses sintomas forem apresentados, para um diagnóstico adequado e tratamento eficaz. \n',
    3,
    48
  ),
  (
    220,
    'Causas da vaginose bacteriana',
    'A vaginose bacteriana é causada pelo desequilíbrio da flora vaginal, mas outros fatores podem contribuir para o seu desenvolvimento:\n•	As alterações na flora vaginal, podem ser influenciadas por fatores como dieta, estresse e uso de antibióticos.\n•	Ter múltiplos parceiros sexuais ou novos parceiros podem aumentar o risco.\n•	Duchas vaginais, sabonetes perfumados e sprays íntimos podem alterar o equilíbrio da flora vaginal.\n•	Diabetes e outras condições que afetam o sistema imunológico podem predispor ao desenvolvimento da vaginose.\n',
    2,
    48
  ),
  (
    221,
    'Tratamento da vaginose bacteriana',
    'O tratamento da vaginose bacteriana pode incluir:\n•	Antibióticos: \nMedicamentos como metronidazol ou clindamicina são frequentemente prescritos para tratar a condição.\n•	Mudanças na higiene íntima: \nEvitar duchas vaginais e produtos irritantes pode ajudar a manter a saúde vaginal.\n•	Probióticos: \nO uso de probióticos pode ajudar a restaurar o equilíbrio da microbiota vaginal, embora mais pesquisas sejam necessárias nessa área.\n',
    4,
    48
  ),
  (
    222,
    'Prevenção da vaginose bacteriana',
    'Algumas medidas podem ajudar a prevenir a vaginose bacteriana:\n•	Manter a região genital higienizada e limpa.\n•	Usar roupas íntimas de algodão, ajuda a manter a área arejada e seca.\n•	O uso de preservativos pode ajudar a reduzir o risco.\n',
    5,
    48
  ),
  (
    223,
    'Conclusão',
    'A vaginose bacteriana é uma condição comum que pode causar desconforto, mas é tratável com a orientação adequada. Se você suspeita que pode estar com vaginose ou apresenta sintomas relacionados, consulte um profissional de saúde para avaliação e tratamento. \nPara mais informações sobre vaginose bacteriana e outros temas relacionados à saúde, sinta-se à vontade para explorar nosso site. Cuidar da sua saúde íntima é fundamental para o bem-estar geral!\n',
    6,
    48
  ),
  (
    224,
    'O que é infecção urinária?',
    'Uma infecção urinária ocorre quando bactérias se multiplicam no trato urinário, afetando partes como a bexiga, uretra, ureteres ou rins. As infecções urinárias são mais frequentes em mulheres, mas também podem ocorrer em homens e crianças. ',
    1,
    49
  ),
  (
    225,
    'Conclusão',
    'As infecções urinárias são condições comuns que podem ser tratadas de forma eficaz com a orientação adequada. Se você suspeita que pode ter uma infecção urinária ou apresenta sintomas relacionados, é importante consultar um profissional de saúde para avaliação e tratamento.',
    5,
    49
  ),
  (
    226,
    'Causas da infecção urinária',
    'As infecções urinárias são geralmente causadas por bactérias que conseguem entrar no trato urinário, a Escherichia coli (E. coli), uma bactéria intestinal, é a responsável pela maioria desses casos, frequentemente originando-se do próprio intestino. \nAlém disso, a atividade sexual pode facilitar a introdução de bactérias na uretra. Outro fator que contribui é a anatomia feminina, pois a uretra das mulheres é mais curta, tornando mais fácil a entrada de microorganismos. \nO uso de produtos como sabonetes perfumados, duchas vaginais e outros produtos químicos também pode irritar a uretra, aumentando o risco de infecções. Condições de saúde preexistentes, como diabetes, cálculos renais ou obstruções no trato urinário, podem ainda elevar a vulnerabilidade a essas infecções.\n',
    2,
    49
  ),
  (
    227,
    'Sintomas da infecção urinária',
    'Os sintomas de uma infecção urinária podem variar, mas geralmente incluem:\n•	Queimação ao urinar;\n•	Urinar com frequência;\n•	Dor na parte inferior do abdômen;\n•	Febre e calafrios;\n',
    3,
    49
  ),
  (
    228,
    'Tratamento da infecção urinária',
    'O tratamento de infecções urinárias geralmente envolve:\n•	O tratamento mais comum é a prescrição de antibióticos, que podem variar conforme a gravidade da infecção.\n•	Em alguns casos, medicamentos podem ser prescritos para aliviar a dor e o desconforto.\n•	Beber bastante água ajuda a eliminar as bactérias do trato urinário.\n•	Usar os métodos contraceptivos e ter boa higiene intima pode prevenir a infecção urinaria\n',
    4,
    49
  ),
  (
    229,
    'O Que são infecções sexualmente transmissíveis?',
    'As ISTs são infecções causadas por vírus, bactérias ou outros microorganismos que se propagam principalmente por meio de relações sexuais desprotegidas. Elas podem afetar diferentes partes do corpo, incluindo órgãos genitais, uretra, ânus e até mesmo a boca.',
    1,
    50
  ),
  (
    230,
    'Tipos Comuns de ISTs',
    'As ISTs mais comuns incluem:\n1.	Clamídia: \nCausada pela bactéria Chlamydia trachomatis, pode ser assintomática ou causar dor e secreção.\n2.	Gonorreia: \nCausada pela bactéria Neisseria gonorrhoeae, também pode ser assintomática e provocar dor ao urinar.\n3.	Sífilis: \nUma infecção bacteriana que pode ter estágios variados, começando com úlceras indolores.\n4.	Herpes Genital: \nCausada pelo vírus herpes simplex (HSV), provoca bolhas dolorosas na região genital.\n5.	HIV: \nO vírus da imunodeficiência humana, que pode levar à AIDS, afeta o sistema imunológico.\n6.	HPV: \nO papilomavírus humano é uma infecção viral que pode causar verrugas genitais e está associado a câncer cervical.\n',
    3,
    50
  ),
  (
    231,
    'Sintomas das ISTs',
    'Os sintomas das infecções sexualmente transmissíveis (ISTs) podem variar bastante, e muitas pessoas podem não apresentar sinais visíveis, sendo assintomáticas. \nNo entanto, alguns sintomas comuns incluem dor ao urinar, caracterizada por queimação ou desconforto durante a micção. Alterações no corrimento genital, como mudanças na cor, consistência ou odor, também são frequentes. \nAlém disso, a coceira ou irritação na área genital, dor durante relações sexuais e a presença de úlceras ou bolhas na região genital são sintomas que podem indicar uma IST. É importante consultar um médico caso esses sinais apareçam, para diagnóstico e tratamento adequados.\n',
    4,
    50
  ),
  (
    232,
    'Diagnóstico e tratamento',
    'O diagnóstico de infecções sexualmente transmissíveis (ISTs) envolve várias etapas para garantir precisão. O médico realiza uma avaliação do histórico médico da paciente, considerando sintomas e o histórico sexual. Também realiza exames físicos, para identificar sinais visíveis de infecção, e exames laboratoriais, como a coleta de amostras de sangue, urina ou secreções para análise detalhada. \n\nO tratamento das ISTs varia de acordo com o tipo de infecção. Para infecções bacterianas, como clamídia, gonorreia e sífilis, o uso de antibióticos é a abordagem mais comum e eficaz. \nJá para infecções virais, como herpes e HIV, são utilizados medicamentos antivirais, que ajudam a controlar os sintomas e a propagação do vírus. \nDestaca-se também a vacinação, que é uma medida preventiva importante, disponível para infecções como HPV e hepatite B, contribuindo para a redução do risco de contrair essas doenças. É fundamental seguir as orientações médicas para garantir um tratamento adequado e eficaz.\n',
    5,
    50
  ),
  (
    233,
    'Prevenção das ISTs',
    'Algumas medidas podem ajudar a prevenir ISTs:\n•	Uso de preservativos;\n•	Exames regulares;\n•	Educação sexual;\n•	Reduzir o número de parceiros.',
    6,
    50
  ),
  (
    234,
    'Conclusão',
    'As infecções sexualmente transmissíveis são condições comuns que podem ter consequências sérias para a saúde. O diagnóstico precoce e o tratamento adequado são essenciais para prevenir complicações. Se você suspeita que pode ter uma IST ou apresenta sintomas, consulte um profissional de saúde para avaliação e tratamento.\nPara mais informações sobre outros temas relacionados à saúde, sinta-se à vontade para explorar nosso site. Cuidar da sua saúde sexual é fundamental para o bem-estar geral!\n',
    7,
    50
  ),
  (
    235,
    'Causas das ISTs',
    'As principais causas das ISTs incluem:\n•	Relações sexuais sem o uso de preservativos ou outros métodos de proteção.\n•	Ter múltiplos parceiros sexuais aumenta o risco de exposição a infecções.\n•	O uso de drogas injetáveis sem a devida higiene pode aumentar o risco de ISTs.\n•	Algumas infecções podem ser transmitidas durante a gravidez ou o parto.\n',
    2,
    50
  ),
  (
    236,
    'O que é o ciclo menstrual?',
    'O ciclo menstrual é uma série de mudanças que ocorrem no sistema reprodutivo da mulher, preparando o corpo para uma possível gravidez. A duração do ciclo é contada do primeiro dia de uma menstruação até o primeiro dia da menstruação seguinte. Em média, um ciclo menstrual dura entre 21 e 35 dias, e a menstruação geralmente dura de 2 a 7 dias.',
    1,
    51
  ),
  (
    237,
    'Ciclo menstrual irregular',
    'Um ciclo menstrual é considerado irregular quando há variações significativas na duração e na periodicidade das menstruações, justamente o contrário de um ciclo regular. As características de um ciclo irregular incluem:\nDuração variável: O intervalo entre os ciclos pode variar muito. Por exemplo, uma mulher pode ter um ciclo de 21 dias um mês e 35 dias no mês seguinte.\nMenstruação imprevisível: A chegada da menstruação não é previsível e pode ocorrer em intervalos não regulares, tornando difícil o planejamento.\nSintomas variados: Os sintomas associados à menstruação podem variar de um ciclo para outro, tornando-os menos consistentes e mais difíceis de prever.\n',
    3,
    51
  ),
  (
    238,
    'Causas de ciclos irregulares',
    'Existem vários fatores que podem contribuir para um ciclo menstrual irregular:\nAltos níveis de estresse podem interferir na função hormonal e levar a ciclos irregulares.\nGanho ou perda de peso pode afetar o ciclo menstrual.\nDoenças como a síndrome dos ovários policísticos (SOP), problemas na tireoide e distúrbios alimentares podem causar irregularidades.\nCertos medicamentos, como contraceptivos hormonais, podem alterar o padrão do ciclo menstrual.\nA puberdade e a menopausa são períodos de transição em que os ciclos menstruais podem ser irregulares.\n',
    4,
    51
  ),
  (
    239,
    'Quando procurar ajuda?',
    'Embora variações menores no ciclo menstrual possam ser normais, é importante procurar orientação médica se seus ciclos menstruais são extremamente irregulares e interferem em sua qualidade de vida ou se você está experimentando sintomas incomuns, como sangramentos excessivos ou muito dolorosos. Também se você tem dificuldade em engravidar e está tentando conceber.\nSaber mais sobre o seu ciclo menstrual, seja ele regular ou irregular, é essencial para manter a saúde geral. Se você tem preocupações sobre seu ciclo menstrual, é sempre uma boa ideia consultar um profissional de saúde. \n',
    5,
    51
  ),
  (
    240,
    'Ciclo menstrual regular',
    'Um ciclo menstrual é considerado regular quando a duração e a periodicidade das menstruações são consistentes ao longo do tempo. As características de um ciclo regular incluem:\nMesma duração: A duração do ciclo varia pouco de mês para mês. Por exemplo, se o ciclo de uma mulher é de 28 dias, ele tende a permanecer próximo a esse valor, com variações pequenas, como entre 26 a 30 dias.\nMenstruação previsível: A chegada da menstruação é relativamente previsível. Se uma mulher tem ciclos de 28 dias, ela pode esperar que sua menstruação ocorra em torno da mesma data todos os meses.\nSintomas reproduzíveis: Os sintomas associados à menstruação, como cólicas, alterações de humor e sensibilidade mamária, ocorrem de forma consistente e previsível.\n',
    2,
    51
  ),
  (
    241,
    'Interação entre as fases',
    'As fases do ciclo menstrual estão interconectadas e dependem de um equilíbrio delicado de hormônios. O ciclo é regulado pelo eixo hipotálamo-hipófise-ovário, que coordena a liberação de hormônios que controlam cada fase. A transição suave entre as fases é crucial para a saúde reprodutiva e o bem-estar geral. \nApós o fim do ciclo ocorre a tensão pré-menstrual (TPM). Seus sinais surgem na fase lútea e duram, no máximo, até o 4º dia da menstruação (já na fase folicular). \nEntender as fases do ciclo menstrual pode ajudar as mulheres a identificarem padrões normais e anômalos e tomar decisões informadas sobre sua saúde. Se você tiver preocupações sobre o seu ciclo menstrual, como irregularidades ou sintomas severos, é aconselhável consultar um profissional de saúde para uma avaliação adequada e orientação.\n',
    1,
    52
  ),
  (
    242,
    'O ciclo menstrual e o período fértil',
    'O ciclo menstrual é dividido em várias fases: folicular, ovulatória e lútea. O período fértil geralmente ocorre durante a fase ovulatória, que é o momento em que um óvulo maduro é liberado do ovário e está disponível para ser fertilizado. Em um ciclo menstrual típico de 28 dias, a ovulação costuma acontecer por volta do 14º dia. No entanto, isso pode variar dependendo da duração e regularidade do ciclo.',
    1,
    53
  ),
  (
    243,
    'Importância do período fértil',
    'Conhecer o período fértil é fundamental por diversas razões. Para casais que desejam engravidar, saber quando esse período ocorre pode aumentar as chances de concepção. Ter relações sexuais durante esses dias maximiza a probabilidade de os espermatozoides encontrarem o óvulo. Além disso, identificar o período fértil também auxilia na prevenção de relações desprotegidas, diminuindo o risco de gravidez indesejada.',
    2,
    53
  ),
  (
    244,
    'Fatores que podem afetar o período fértil',
    'Vários fatores podem influenciar a regularidade e a duração do período fértil:\n•	Estresse;\n•	Gravidez;\n•	Má alimentação;\n•	Idade;\n•	Mudanças de Peso;\n•	Condições Médicas.\nO período fértil é uma parte fundamental do ciclo menstrual e da saúde reprodutiva. Procurar saber quando ocorre e como identificá-lo pode ser extremamente útil, seja para aqueles que buscam engravidar ou para quem deseja evitar a gravidez. Utilizar métodos para monitorar a ovulação e entender as variações individuais do ciclo menstrual pode proporcionar uma maior consciência e controle sobre a saúde reprodutiva.\n',
    3,
    53
  ),
  (
    245,
    'Tipos de Disfunção Menstrual',
    'As disfunções menstruais podem ser classificadas em várias categorias, incluindo:\n\n•	Amenorreia: A ausência de menstruação por um período de três ciclos consecutivos ou mais. Pode ser primária (quando uma adolescente ainda não menstruou até os 16 anos) ou secundária (quando uma mulher que tinha ciclos regulares para de menstruar).\n\n•	Sangramento Uterino Disfuncional:\n1.	Menorragia: Fluxo menstrual excessivo ou prolongado, que pode levar a anemia e outras complicações.\n2.	Oligomenorreia: Ciclos menstruais infrequentes, geralmente definidos como períodos que ocorrem a cada 35 dias ou mais.\n3.	Dismenorreia: Menstruação dolorosa que pode ser acompanhada de cólicas intensas, náuseas e outros sintomas.\n\n•	Sindrome Pré-Menstrual (SPM): Um conjunto de sintomas emocionais e físicos que ocorrem na fase lútea do ciclo, geralmente resolvendo-se com o início da menstruação.\n',
    1,
    54
  ),
  (
    246,
    'Sintomas associados',
    'Além das irregularidades menstruais em si, as disfunções podem estar associadas a uma variedade de sintomas, incluindo:\n•	Cólica abdominal intensa\n•	Sangramento entre os períodos\n•	Mudanças de humor\n•	Fadiga\n•	Dores de cabeça\n',
    3,
    54
  ),
  (
    247,
    'Diagnóstico e Tratamento',
    'O diagnóstico de disfunções menstruais geralmente envolve uma combinação de histórico médico, exame físico e, em alguns casos, testes laboratoriais. O tratamento pode variar dependendo da causa subjacente e pode incluir:\nMudanças no estilo de vida: Dieta equilibrada, exercícios regulares e manejo do estresse.\nMedicação: Anticoncepcionais hormonais, analgésicos ou tratamentos específicos para condições como SOP ou endometriose.\nTerapia: Apoio psicológico e terapia comportamental para lidar com o estresse e a ansiedade.\nIntervenções cirúrgicas: Em casos mais graves, procedimentos cirúrgicos podem ser necessários para remover miomas ou tratar endometriose.\n',
    4,
    54
  ),
  (
    248,
    'Causas das Disfunções Menstruais',
    'As causas das disfunções menstruais podem ser variadas e incluem:\nHormonal: Desequilíbrios nos hormônios responsáveis pela regulação do ciclo menstrual, como estrogênio e progesterona.\nCondições de saúde: Doenças como síndrome dos ovários policísticos (SOP), endometriose e miomas uterinos podem interferir no ciclo menstrual.\nFatores emocionais: Estresse, ansiedade e depressão podem afetar a regularidade do ciclo.\nMudanças de peso: Ganho ou perda significativa de peso podem alterar os hormônios e impactar o ciclo.\nUso de contraceptivos: Alguns métodos anticoncepcionais podem causar alterações nos padrões menstruais.\n',
    2,
    54
  ),
  (
    249,
    'O que é o fluxo menstrual?',
    'O fluxo menstrual refere-se à quantidade de sangue e tecido que é expelido do útero durante a menstruação. Este fluxo é composto por sangue, células endometriais, muco cervical e, em alguns casos, secreções vaginais. O volume e a consistência do fluxo podem variar, e isso é influenciado por fatores hormonais, saúde geral e condições subjacentes.',
    1,
    55
  ),
  (
    250,
    'Implicações da Alteração no Fluxo',
    'Alterações no fluxo menstrual podem ter diversas implicações, tanto físicas quanto emocionais. Um fluxo muito intenso pode levar a anemia, fadiga e impactos na qualidade de vida. Por outro lado, fluxos leves podem causar preocupação sobre a fertilidade e a saúde reprodutiva.',
    5,
    55
  ),
  (
    251,
    'Quando buscar ajuda?',
    'É importante que as mulheres fiquem atentas a mudanças significativas em seu fluxo menstrual. Se houver aumento no volume, alteração na duração do período, ou a presença de sintomas associados, como dor intensa ou fadiga excessiva, é recomendável buscar orientação médica. A avaliação adequada pode ajudar a identificar a causa subjacente e permitir o tratamento adequado.\n\nAs alterações no fluxo e volume de sangue durante a menstruação são comuns e podem ser influenciadas por uma variedade de fatores. Manter um diálogo aberto com profissionais de saúde pode ajudar as mulheres a gerenciar melhor suas experiências menstruais e a cuidar de sua saúde reprodutiva.\n\n',
    6,
    55
  ),
  (
    252,
    'Volume normal de sangue',
    'Em média, o volume de sangue perdido durante a menstruação varia de 30 a 80 mililitros por ciclo, sendo que a maioria das mulheres percebe um fluxo mais intenso nos primeiros dias. O volume pode ser medido em tampões ou absorventes, com um padrão geral de que a maioria das mulheres precisa trocar de 3 a 6 produtos por dia durante os dias de fluxo intenso.',
    2,
    55
  ),
  (
    253,
    'Alterações comuns no fluxo e volume',
    'Fluxo Leve: Algumas mulheres podem ter um fluxo menstrual mais leve, o que pode ser normal para elas. Isso pode ocorrer devido a fatores genéticos, hormonais ou mesmo por condições como a síndrome dos ovários policísticos (SOP).\nFluxo Intenso (Menorragia): O aumento do fluxo menstrual, ou menorragia, é caracterizado por períodos que exigem a troca de produtos de higiene a cada hora ou menos, ou que duram mais de sete dias. Causas incluem fibromas uterinos, endometriose, distúrbios hormonais ou uso de dispositivos intrauterinos (DIUs).\nCiclos Irregulares: Algumas mulheres podem experimentar variações significativas no volume de sangue de um ciclo para outro, o que pode ser sinal de disfunções hormonais ou outras condições de saúde.\nCoágulos Sanguíneos: A presença de coágulos pode ocorrer em fluxos mais intensos e geralmente é normal, desde que os coágulos sejam pequenos. Coágulos grandes ou frequentes podem indicar problemas de saúde, como miomas ou problemas de coagulação.\n',
    3,
    55
  ),
  (
    254,
    'Causas das Alterações no Fluxo e Volume',
    'As alterações no fluxo e volume menstrual podem ser causadas por diversos fatores:\nHormônios: Desbalanços hormonais, especialmente de estrogênio e progesterona, podem impactar a espessura do endométrio e, consequentemente, o fluxo menstrual.\nIdade: Durante a adolescência e a perimenopausa, é comum observar variações significativas no ciclo menstrual.\nCondições de Saúde: Problemas como miomas, endometriose, adenomioma e distúrbios da tireoide podem afetar o fluxo menstrual.\nEstilo de Vida: Mudanças no peso, estresse, dieta e exercícios podem influenciar a regularidade e a intensidade do fluxo menstrual.\n',
    4,
    55
  ),
  (
    255,
    'Sangue Vermelho Brilhante',
    'O sangue menstrual de cor vermelho brilhante é geralmente considerado um sinal de um fluxo saudável e recente. Essa coloração indica que o sangue é fresco, proveniente da camada superficial do endométrio. É comum observar essa cor nos primeiros dias do período, quando o fluxo tende a ser mais intenso.',
    1,
    56
  ),
  (
    256,
    'Sangue Vermelho Escuro',
    'Um sangue menstrual de tom vermelho escuro é normal e pode ocorrer em dias mais avançados do ciclo. Essa cor pode indicar que o sangue está se oxidando e, portanto, é mais antigo, o que é comum quando o fluxo diminui. O sangue vermelho escuro também pode ser observado em coágulos.',
    2,
    56
  ),
  (
    257,
    'Sangue Rosa',
    'A presença de sangue rosa pode ser resultado de uma mistura de sangue com muco cervical ou secreções vaginais. Isso pode ocorrer no início ou no final do período menstrual e, em alguns casos, pode ser normal. No entanto, se o sangue rosa aparecer fora do ciclo menstrual, pode ser um sinal de sangramento de implantação (caso haja uma gravidez) ou de outras condições hormonais.',
    3,
    56
  ),
  (
    258,
    'Sangue Marrom',
    'O sangue menstrual marrom é comum e geralmente representa sangue mais velho, que levou mais tempo para ser expelido. Esse tom é frequentemente observado no início ou no final do ciclo menstrual, quando o fluxo é mais leve. Em geral, a presença de sangue marrom não é motivo de preocupação, a menos que seja acompanhada por outros sintomas.',
    4,
    56
  ),
  (
    259,
    'Sangue Preto',
    'O sangue menstrual de cor preta é menos comum e pode ser um sinal de sangue muito antigo. Embora o sangue negro possa ser normal em algumas mulheres, especialmente no final do ciclo, sua presença persistente deve ser avaliada por um profissional de saúde, pois pode indicar condições como endometriose ou outras anomalias.',
    5,
    56
  ),
  (
    260,
    'Sangue com Coágulos',
    'Coágulos de sangue durante a menstruação podem variar em cor, geralmente sendo vermelhos ou escuros. Pequenos coágulos são comuns e normalmente não são motivo de preocupação. No entanto, se houver coágulos grandes ou frequentes, isso pode indicar um fluxo menstrual intenso (menorragia) e deve ser discutido com um médico.\n\nA cor do sangue menstrual pode variar de uma mulher para outra e ao longo do próprio ciclo. Embora muitas variações sejam normais, é importante que as mulheres fiquem atentas a mudanças significativas na cor, no volume ou na consistência do fluxo menstrual. Essas alterações podem oferecer pistas sobre a saúde reprodutiva e, se acompanhadas de outros sintomas, como dor intensa ou desconforto, é aconselhável procurar orientação médica.\nCompreender a cor do sangue menstrual pode empoderar as mulheres a monitorar sua saúde e a reconhecer quando buscar ajuda. O ciclo menstrual é uma parte natural da vida, e estar atenta a essas nuances pode ser um passo importante para cuidar da saúde feminina.\n',
    6,
    56
  ),
  (
    261,
    'O que são cólicas menstruais?',
    'As cólicas menstruais são dores abdominais que ocorrem antes ou durante o fluxo menstrual. Elas são causadas pela contração do útero, que se prepara para expelir o revestimento endometrial. As cólicas podem variar de leves a severas e podem ser acompanhadas de outros sintomas, como náuseas e dores nas costas.',
    1,
    57
  ),
  (
    262,
    'Andar descalça e cólica: o que a ciência diz?',
    'Atualmente, não há evidências científicas que sustentem a afirmação de que andar descalça agrava a dor das cólicas menstruais. O que pode, de fato, influenciar a intensidade da dor está mais relacionado a fatores hormonais, estilo de vida, estresse e até mesmo genética.	\nPor outro lado, algumas mulheres relatam que andar descalças pode ser desconfortável, especialmente em ambientes frios. O frio pode, em alguns casos, causar tensão muscular, o que pode contribuir para uma sensação de maior desconforto, mas não há uma relação direta com a gravidade das cólicas.\n\nPortanto, a crença de que andar descalça piora a dor das cólicas menstruais seja um mito, é importante que cada mulher conheça seu corpo e identifique os fatores que realmente influenciam seu conforto durante o período menstrual. Manter uma boa saúde, praticar exercícios físicos, e adotar técnicas de relaxamento podem ser estratégias mais eficazes para lidar com a dor menstrual.\nÉ sempre recomendável que mulheres que enfrentam cólicas severas ou persistentes consultem um profissional de saúde para uma avaliação adequada. A educação sobre a menstruação e a desmistificação de crenças populares são passos importantes para promover uma melhor saúde menstrual e bem-estar geral.\n',
    2,
    57
  ),
  (
    263,
    'Quando é possível engravidar durante a menstruação?',
    'Embora muitas mulheres acreditem que a menstruação seja um período seguro para relações sexuais desprotegidas, a realidade é um pouco mais complexa. O ciclo menstrual pode variar bastante de mulher para mulher, e a ovulação pode ocorrer logo após o fim da menstruação, especialmente em ciclos curtos. O esperma pode viver no trato reprodutivo feminino por até cinco dias. Portanto, se uma mulher tiver relações sexuais durante a menstruação e ovular logo depois, as chances de engravidar aumentam. Para evitar surpresas indesejadas, o uso de métodos contraceptivos é sempre recomendado.',
    1,
    59
  ),
  (
    264,
    'Como evitar a gravidez?',
    'Se você deseja engravidar ou evitar uma gravidez, é importante entender seu ciclo menstrual e, se necessário, consultar um profissional de saúde para orientação sobre métodos contraceptivos ou planejamento familiar.',
    2,
    59
  ),
  (
    265,
    'Posso entrar na piscina menstruada?',
    'Essa crença é bastante comum, mas não tem fundamento. Nadar durante a menstruação é seguro e pode até ser refrescante. Muitas mulheres optam por usar absorventes internos ou copos menstruais, que evitam vazamentos. Além disso, a água da piscina não afeta a menstruação, já que a pressão da água pode até ajudar a reduzir a sensação de cólicas. Só tem que tomar cuidado com a temperatura da água, se a água estiver muito fria pode causar desconforto, assim tendo o efeito contrário, e aumentar a dor da cólica.\nHigiene: Para manter a higiene, é importante trocar os produtos menstruais antes e depois de nadar. Se você usar um copo menstrual, ele pode ser mantido por até 12 horas, dependendo do fluxo.\nOu seja, além do alívio de cólicas, nadar pode ser uma ótima forma de exercício durante a menstruação. O importante é ouvir seu corpo e fazer o que se sentir confortável.\n',
    1,
    60
  ),
  (
    266,
    'Benefício dos exercícios',
    'Fazer exercícios durante a menstruação é seguro e, muitas vezes, benéfico. A atividade física pode ajudar a aliviar as cólicas menstruais, melhorar o humor e aumentar os níveis de energia, diminuindo os sintomas da TPM. O exercício libera endorfinas, que são hormônios naturais que promovem a sensação de bem-estar.',
    1,
    61
  ),
  (
    267,
    'Escolha dos exercícios:',
    'Cada mulher é diferente; enquanto algumas podem preferir atividades mais leves, como yoga ou caminhada, outras se sentem motivadas a correr ou levantar pesos. O importante é escolher o que você gosta e o que seu corpo permite, e é importante lembrar de não exagerar e não se cobrar tanto, nada em excesso faz bem para a saúde, e caso você estiver menstruada e pegar menos peso que o normal, ao invés de se cobrar fique contente com seu pequeno avanço.\nEm suma, não só é seguro, mas também benéfico fazer exercícios durante a menstruação. O importante é escutar seu corpo e encontrar um equilíbrio que funcione para você. A atividade física pode ser uma aliada poderosa, contribuindo para o bem-estar físico e emocional.\n',
    2,
    61
  ),
  (
    268,
    'O que a ciência diz?',
    'Essa é uma crença muito comum em várias culturas, mas não há evidências científicas que apoiem a ideia de que o limão ou qualquer outro alimento pode induzir a menstruação. Algumas pessoas acreditam que o ácido cítrico pode ter esse efeito, mas a verdade é que o ciclo menstrual é influenciado por hormônios e não por alimentos específicos.',
    1,
    62
  ),
  (
    269,
    'O que fazer se a menstruação estiver atrasada?',
    'Se você está com dificuldades em regular seu ciclo menstrual, é importante buscar orientação médica. Há muitas razões pelas quais a menstruação pode atrasar, e um profissional pode ajudar a identificar a causa e sugerir opções de tratamento.',
    3,
    62
  ),
  (
    270,
    'Por que o mito persiste? ',
    'Muitas vezes, a crença em remédios caseiros se baseia em tradições populares ou experiências pessoais. O limão, por ser um alimento ácido, pode ter sido associado à ideia de limpeza ou purificação do corpo, levando algumas pessoas a acreditarem que ele tem o poder de regular a menstruação. Contudo, essa associação não tem respaldo científico.',
    2,
    62
  );

/*!40000 ALTER TABLE `topico` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `usuario`
--
DROP TABLE IF EXISTS `usuario`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE
  `usuario` (
    `idUsuario` int NOT NULL AUTO_INCREMENT,
    `username` varchar(30) NOT NULL,
    `email` varchar(45) NOT NULL,
    `senha` varchar(15) NOT NULL,
    `nome` varchar(45) NOT NULL,
    `dataNasc` date NOT NULL,
    `tipo` varchar(15) NOT NULL,
    PRIMARY KEY (`idUsuario`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--
LOCK TABLES `usuario` WRITE;

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;

INSERT INTO
  `usuario`
VALUES
  (
    1,
    'gabriela',
    'nicagabi2@gmail.com',
    'senha1234',
    'Gabriela Garcia Custodio',
    '2006-07-25',
    'admin'
  ),
  (
    2,
    'gabriel',
    'gabrielsilveriobeti@gmail.com',
    'senha1234',
    'Gabriel dos Santos Silvério Ramos',
    '2006-12-31',
    'admin'
  ),
  (
    3,
    'ana',
    'moura.julianascimento@gmail.com',
    'senha1234',
    'Ana Júlia Moura Nascimento',
    '2006-05-22',
    'admin'
  ),
  (
    4,
    'isabelly',
    'isatavares0606@gmail.com',
    'senha1234',
    'Isabelly Vitória Tavares Ramalho',
    '2006-12-21',
    'admin'
  ),
  (
    5,
    'fabiano',
    'bianopietra@gmail.com',
    'senha1234',
    'Fabiano Eduardo Taglipietra',
    '2006-10-06',
    'admin'
  );

/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
