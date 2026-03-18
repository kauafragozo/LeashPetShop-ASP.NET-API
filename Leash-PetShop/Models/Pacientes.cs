namespace Leash_PetShop.Models
{
    public class Pacientes
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        
        public string Cpf { get; set; }
        public string Telefone { get; set; }
        public string Genero { get; set; }
        public int Idade { get; set; }


        public List<Pets> Pets { get; set; }= new();

    }
}
