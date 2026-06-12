using EventEasePart3.Models;
using System.ComponentModel.DataAnnotations;

namespace EventEasePart3.Models
{
    public class Venue
    {
        public int VenueId { get; set; }

        [Required(ErrorMessage = "Venue name is required")]
        public string VenueName { get; set; }

        [Required(ErrorMessage = "Location is required")]
        public string Location { get; set; }

        [Required]
        [Range(1, int.MaxValue, ErrorMessage = "Capacity must be greater than 0")]
        public int Capacity { get; set; }

        public string? ImageUrl { get; set; }

        public bool IsAvailable { get; set; } = true;

        public ICollection<Event>? Events { get; set; }
        public ICollection<Booking>? Bookings { get; set; }
    }
}
