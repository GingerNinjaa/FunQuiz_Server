using FunQuiz_Database.Entities;
using FunQuiz_Database.Repositories.Base;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
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

        public async Task<List<Quiz>> GetAllQuizes()
        {
            try
            {
                //to działa
                //var quiz =  _dbContext.Quizs.ToList();
                //return quiz;

                var quiz = await _dbContext.Quizs.ToListAsync();
                return quiz;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        //public async Task<IQueryable<Question>> GetQuizAndQuesions(int id)
        public async Task<Quiz> GetQuizAndQuesions(int id)
        {
            try
            {
                //var qustions = await this._dbContext.Questions
                //    .Include(x => x.Answers).FirstOrDefaultAsync(x =>x.Id == id);

                var quiz = await _dbContext.Quizs.Include(x => x.Questions).FirstOrDefaultAsync(y => y.Id == id);
                return quiz;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public async Task<Quiz> GetQuizAndQuesionswithAnswers(int id)
        {
            try
            {
                //var qustions = await this._dbContext.Questions
                //    .Include(x => x.Answers).FirstOrDefaultAsync(x =>x.Id == id);

                var quiz = await _dbContext.Quizs.Include(x => x.Questions).ThenInclude(y =>y.Answers).FirstOrDefaultAsync(z => z.Id == id);
                return quiz;
            }
            catch (Exception e)
            {
                return null;
            }
        }

        public bool AddQuizImg(Quiz quiz)
        {

            try
            {
                var QuizInDatabase = _dbContext.Quizs.Where(x => x.Title == quiz.Title).FirstOrDefault();

                if (QuizInDatabase != null)
                {
                    //var guid = Guid.NewGuid();
                    //var filePath = Path.Combine("wwwroot", guid + ".jpg");
                    //if (recepie.Image != null)
                    //{
                    //    var fileStream = new FileStream(filePath, FileMode.Create);
                    //    recepie.Image.CopyTo(fileStream);
                    //}

                    //recepieInDatabase.ImageUrl = filePath.Remove(0, 7);

                    //Maybe add temporary photo?
                    if (quiz.Image == null)
                    {
                        return false;
                    }
                    else
                    {
                        var guid = Guid.NewGuid();
                        var filePath = Path.Combine("wwwroot", guid + ".jpg");
                        //var filePath = Path.Combine("wwwroot", guid + ".jpg");
                        if (quiz.Image != null)
                        {
                            var fileStream = new FileStream(filePath, FileMode.Create);
                            quiz.Image.CopyTo(fileStream);
                        }
                        QuizInDatabase.ImageUrl = filePath.Remove(0, 7);
                    }
                    //QuizInDatabase.ImageUrl = FileHelper.UploadImage(recepie.Image).ToString();

                    _dbContext.SaveChanges();

                }

                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}
