using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FunQuiz_Database.Entities
{
    public class Question
    {
        [Key]
        public int Id { get; set; }

        public string Text { get; set; }

        public string ImageUrl { get; set; }

        public string CorectAnswer { get; set; }

        //[NotMapped]
        public ICollection<Answer> Answers { get; set; }
    }
}
