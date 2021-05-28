using System.ComponentModel.DataAnnotations;

namespace FunQuiz_Database.Entities
{
    public class Answer
    {
        [Key]
        public int Id { get; set; }

        public string Text { get; set; }

        public string ImageUrl { get; set; }
    }
}
