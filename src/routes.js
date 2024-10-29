import { Router } from "express";

import UsuarioController from "./app/controllers/usuarioController.js";
import ProfissionalController from "./app/controllers/profissionalController.js";
import ConteudoController from "./app/controllers/conteudoController.js";
import TopicoController from "./app/controllers/topicoController.js";
import ParceiroController from "./app/controllers/parceiroController.js";
import CalendarioController from "./app/controllers/calendarioController.js";
import TelefoneController from "./app/controllers/telefoneController.js";
import ImagemController from "./app/controllers/imagemController.js";
import PublicacaoController from "./app/controllers/publicacaoController.js";
import ComentarioController from "./app/controllers/comentarioController.js";
import DiaController from "./app/controllers/diaController.js";
import EventoController from "./app/controllers/eventoController.js";
import SintomaController from "./app/controllers/sintomaController.js";
import Dia_EventoController from "./app/controllers/dia_eventoController.js";
import Dia_SintomaController from "./app/controllers/dia_sintomaController.js";
import ReacaoController from './app/controllers/reacaoController.js'
import Reacao_PublicacaoController from './app/controllers/reacao_publicacaoController.js'

const router = Router();

// Rotas Usuario

router.get("/usuario", UsuarioController.index);
router.get("/usuario/:id", UsuarioController.show);
router.get("/usuario/tipo/:type", UsuarioController.showTipo);
router.post("/usuario", UsuarioController.store);
router.put("/usuario/:id", UsuarioController.update);
router.delete("/usuario/:id", UsuarioController.delete);

// Rotas usuários profissionais

router.get("/profissional", ProfissionalController.index);
router.get("/profissional/:id", ProfissionalController.show);
router.post("/profissional", ProfissionalController.store);
router.put("/profissional/:id", ProfissionalController.update);
router.delete("/profissional/:id", ProfissionalController.delete);

//Rotas para conteúdo

router.get("/conteudo", ConteudoController.index);
router.get("/conteudo/:id", ConteudoController.show);
router.get("/conteudo/tipo/:type", ConteudoController.showTipo);
router.post("/conteudo", ConteudoController.store);
router.put("/conteudo/:id", ConteudoController.update);
router.delete("/conteudo/:id", ConteudoController.delete);

//Rotas para tópicos

router.get("/topico", TopicoController.index);
router.get("/topico/:id", TopicoController.show);
router.post("/topico", TopicoController.store);
router.put("/topico/:id", TopicoController.update);
router.delete("/topico/:id", TopicoController.delete);

//Rotas parceiros

router.get("/parceiro", ParceiroController.index);
router.get("/parceiro/:id", ParceiroController.show);
router.get("/parceiro/tipo/:type", ParceiroController.showTipo);
router.post("/parceiro", ParceiroController.store);
router.put("/parceiro/:id", ParceiroController.update);
router.delete("/parceiro/:id", ParceiroController.delete);

//Rotas calendario

router.get("/calendario", CalendarioController.index);
router.get("/calendario/:id", CalendarioController.show);
router.post("/calendario", CalendarioController.store);
router.put("/calendario/:id", CalendarioController.update);
router.delete("/calendario/:id", CalendarioController.delete);

//Rotas dia

router.get("/dia", DiaController.index);
router.get("/dia/:id", DiaController.show);
router.post("/dia", DiaController.store);
router.put("/dia/:id", DiaController.update);
router.delete("/dia/:id", DiaController.delete);

// rotas evento

router.get("/evento", EventoController.index);
router.get("/evento/:id", EventoController.show);
router.post("/evento", EventoController.store);
router.put("/evento/:id", EventoController.update);
router.delete("/evento/:id", EventoController.delete);

//rotas dia_evento

router.get("/diaevento", Dia_EventoController.index);
router.get("/diaevento/:id", Dia_EventoController.show);
router.post("/diaevento", Dia_EventoController.store);
router.put("/diaevento/:id", Dia_EventoController.update);
router.delete("/diaevento/:id", Dia_EventoController.delete);

//rotas sintoma

router.get("/sintoma", SintomaController.index);
router.get("/sintoma/:id", SintomaController.show);
router.post("/sintoma", SintomaController.store);
router.put("/sintoma/:id", SintomaController.update);
router.delete("/sintoma/:id", SintomaController.delete);

//rotas dia_sintoma

router.get("/diasintoma", Dia_SintomaController.index);
router.get("/diasintoma/:id", Dia_SintomaController.show);
router.post("/diasintoma", Dia_SintomaController.store);
router.put("/diasintoma/:id", Dia_SintomaController.update);
router.delete("/diasintoma/:id", Dia_SintomaController.delete);

//Rotas telefone

router.get("/telefone", TelefoneController.index);
router.get("/telefone/:id", TelefoneController.show);
router.post("/telefone", TelefoneController.store);
router.put("/telefone/:id", TelefoneController.update);
router.delete("/telefone/:id", TelefoneController.delete);

//Rotas imagem

router.get("/imagem", ImagemController.index);
router.get("/imagem/:id", ImagemController.show);
router.post("/imagem", ImagemController.store);
router.put("/imagem/:id", ImagemController.update);
router.delete("/imagem/:id", ImagemController.delete);

// Rotas publicação

router.get("/publicacao", PublicacaoController.index);
router.get("/publicacao/:id", PublicacaoController.show);
router.get("/publicacao/comentarios/:id", PublicacaoController.showComents);
router.post("/publicacao", PublicacaoController.store);
router.put("/publicacao/:id", PublicacaoController.update);
router.delete("/publicacao/:id", PublicacaoController.delete);

// Rotas reações

router.get("/reacao", ReacaoController.index);
router.get("/reacao/:id", ReacaoController.show);
router.post("/reacao", ReacaoController.store);
router.put("/reacao/:id", ReacaoController.update);
router.delete("/reacao/:id", ReacaoController.delete);

// Rotas Reação_Publicação

router.get("/reacaoPublicacao", Reacao_PublicacaoController.index);
router.get("/reacaoPublicacao/:id", Reacao_PublicacaoController.show);
router.post("/reacaoPublicacao", Reacao_PublicacaoController.store);
router.put("/reacaoPublicacao/:id", Reacao_PublicacaoController.update);
router.delete("/reacaoPublicacao/:id", Reacao_PublicacaoController.delete);

// Rotas comentário

router.get("/comentario", ComentarioController.index);
router.get("/comentario/:id", ComentarioController.show);
router.post("/comentario", ComentarioController.store);
router.put("/comentario/:id", ComentarioController.update);
router.delete("/comentario/:id", ComentarioController.delete);

export default router;
