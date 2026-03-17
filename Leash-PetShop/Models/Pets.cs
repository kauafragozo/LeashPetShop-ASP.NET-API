namespace Leash_PetShop.Models
{
    public class Pets
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Especie { get; set; }
        public int DonoId { get; set; }
        public Pacientes Dono { get; set; }
        public string Genero { get; set; }
        public int Idade { get; set; }
    }
}
