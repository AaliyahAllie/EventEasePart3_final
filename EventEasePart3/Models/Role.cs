using EventEasePart3.Models;
using System.ComponentModel.DataAnnotations;

namespace EventEasePart3.Models
{
    public class Role
    {
        public int RoleId { get; set; }

        [Required]
        public string RoleName { get; set; }

        public ICollection<User>? Users { get; set; }
    }
}
