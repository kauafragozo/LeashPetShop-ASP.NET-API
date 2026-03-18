namespace Leash_PetShop.Models
{
    public class Roles
    {
        public int Id { get; set; }
        public string Role { get; set; }

        public List<Usuarios> Usuarios { get; set; } = new();

    }
}
