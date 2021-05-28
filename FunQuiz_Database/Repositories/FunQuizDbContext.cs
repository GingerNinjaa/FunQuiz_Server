using FunQuiz_Database.Entities;
using Microsoft.EntityFrameworkCore;

namespace FunQuiz_Database.Repositories
{
   public class FunQuizDbContext : DbContext
    {
        public FunQuizDbContext(DbContextOptions options) : base(options)
        {
            
        }


        public DbSet<Quiz> Quizs { get; set; }
        public DbSet<Question> Questions { get; set; }
        public DbSet<Answer> Answers { get; set; }
    }
}
