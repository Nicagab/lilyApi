import ProfissionalRepository from "../repositories/profissionalRepository.js";

class ProfissionalController {

    async index(req,res){
        try{
        const row = await ProfissionalRepository.findAll()
        res.status(200).json(row)}
        catch (error) {
            res.status(404).json({ message: error.message });
          }
    }
    async show(req,res){
        try{
        const id = req.params.id
        const row = await ProfissionalRepository.findByID(id)
        res.status(200).json(row)}
        catch (error) {
            res.status(404).json({ message: error.message });
          }
    }
    async store(req,res){
        try{
        const profissional = req.body
        const row = await ProfissionalRepository.create(profissional)
        res.status(201).json(row)}
        catch (error) {
            res.status(400).json({ message: error.message });
          }
    }
    async update(req,res){
        try{
        const id = req.params.id
        const profissional = req.body
        const row = await ProfissionalRepository.update(profissional,id)
        res.status(201).json(row)}
        catch (error) {
            res.status(400).json({ message: error.message });
          }
    }
    async delete(req,res){
        try{
        const id = req.params.id
        const row = await ProfissionalRepository.delete(id)
        res.status(200).json(row)}
        catch (error) {
            res.status(400).json({ message: error.message });
          }
    } 
}

export default new ProfissionalController()