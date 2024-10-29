import CalendarioRepository from "../repositories/calendarioRepository.js";

class CalendarioController {

    async index(req,res){
        try{
        const row = await CalendarioRepository.findAll()
        res.status(200).json(row)
    } catch (error) {
        res.status(404).json({ message: error.message });
      }
    }

    async show(req,res){
        try{
        const id = req.params.id
        const calendarioInfo = await CalendarioRepository.findByID(id)
        const days = await CalendarioRepository.findDays(id)
        const calendario = {
            ...calendarioInfo,
            dias: days
        }
        res.status(200).json(calendario)
    } catch (error) {
        res.status(404).json({ message: error.message });
      }
    }

    async store(req,res){
        try{
        const Calendario = req.body
        const row = await CalendarioRepository.create(Calendario)
        res.status(201).json(row)
    } catch (error) {
        res.status(400).json({ message: error.message });
      }
    }

    async update(req,res){
        try{
        const id = req.params.id
        const Calendario = req.body
        const row = await CalendarioRepository.update(Calendario,id)
        res.status(201).json(row)
    } catch (error) {
        res.status(400).json({ message: error.message });
      }
    }

    async delete(req,res){
        try{
        const id = req.params.id
        const row = await CalendarioRepository.delete(id)
        res.status(200).json(row)
    } catch (error) {
        res.status(400).json({ message: error.message });
      }
    } 
}

export default new CalendarioController()