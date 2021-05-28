using FunQuiz_Database.Entities;
using FunQuiz_Database.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace FunQuiz_Database.Repositories
{
    public class QuizRepository : BaseRepository<Quiz>
    {
        protected override DbSet<Quiz> DbSet => _dbContext.Quizs;
        // protected override DbSet<Question> DbSet2 => _dbContext.Questions;


        public QuizRepository(FunQuizDbContext dbContext) : base(dbContext)
        {

        }

        public async Task<IQueryable<Quiz>> GetAllQuizes()
        {
            try
            {
                //var quiz = this._dbContext.Quizs
                //        .Include(x => x.Questions);

                var quiz = this._dbContext.Quizs.Include(X => X.Questions).ThenInclude(y => y.Answers);


                return quiz;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        //public async Task<IQueryable<Question>> GetAllQuestions()
        //{
        //    try
        //    {
        //        var qustions = this._dbContext.Questions
        //            .Include(x => x.Answers);
        //        return qustions;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e);
        //        throw;
        //    }
        //}
    }
}
