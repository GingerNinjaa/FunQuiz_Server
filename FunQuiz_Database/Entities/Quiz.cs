using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FunQuiz_Database.Entities
{
    public class Quiz
    {
        [Key]
        public int Id { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public string ImageUrl { get; set; }

        //[NotMapped]
        public ICollection<Question> Questions { get; set; }

    }
}
