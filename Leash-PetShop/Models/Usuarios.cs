namespace Leash_PetShop.Models
{
    public class Usuarios
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public string PasswordHash { get; set; }
        public string UserRoleId { get; set; }
        public Roles Role { get; set; }

    }
}
