using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace FunQuiz_Database.Repositories.Base
{
    //klasa abstrakcyjna która przyjmuje Entity jako tabele z bazydanych
    public abstract class BaseRepository<Entity> where Entity : class
    {
        //zmienna przechowująca bazedanych
        protected FunQuizDbContext _dbContext;

        //referencja do tabelki 
        protected abstract DbSet<Entity> DbSet { get; }



        public BaseRepository(FunQuizDbContext dbContext)
        {
            this._dbContext = dbContext;

        }

        public List<Entity> GetAll()
        {
            var list = new List<Entity>();

            var entities = DbSet;

            foreach (var entity in entities)
            {
                list.Add(entity);
            }

            return list;
        }

        public void SaveChanges()
        {
            _dbContext.SaveChanges();
        }
    }
}
