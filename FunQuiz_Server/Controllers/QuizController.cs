using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FunQuiz_Database.Entities;
using FunQuiz_Database.Repositories;
using Microsoft.AspNetCore.Http;

namespace FunQuiz_Server.Controllers
{
    [Route("[controller]/[action]")]
    [ApiController]
    public class QuizController : Controller
    {

        //połączenie do startup
        private QuizRepository _quizRepository;
        public
            QuizController(QuizRepository settingsRepository) //, IRecepieRepository recepieRepository,  RecepieRepository _settingsRepository
        {
            //połączenie do bazy danych
            _quizRepository = settingsRepository;

        }

        /// <summary>
        /// Get list of Quiz 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet]
        //[ResponseCache(Duration = 360, Location = ResponseCacheLocation.Any)]
        public async Task<IActionResult> QuizList()
        {
            var quiz = await _quizRepository.GetAllQuizes();
            return Ok(quiz);
        }

        /// <summary>
        /// Get Quiz and Questions
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        //[ResponseCache(Duration = 360, Location = ResponseCacheLocation.Any)]
        public async Task<IActionResult> QuizAndQuestion(int id)
        {
            var quiz = await _quizRepository.GetQuizAndQuesions(id);
            return Ok(quiz);
        }

        /// <summary>
        /// xd
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{id}")]
        //[ResponseCache(Duration = 360, Location = ResponseCacheLocation.Any)]
        public async Task<IActionResult> QuizAndQuestionAndAnswers(int id)
        {
            var quiz = await _quizRepository.GetQuizAndQuesionswithAnswers(id);
            return Ok(quiz);
        }

        
        //[HttpPut]
        //public IActionResult AddRecepieIMG([FromForm] Recipe recepie)
        //{
        //    var test = _dbContext.Recipes.Where(x => x.Title == recepie.Title).FirstOrDefault();

        //    if (test != null)
        //    {
        //        var guid = Guid.NewGuid();
        //        var filePath = Path.Combine("wwwroot", guid + ".jpg");
        //        //var filePath = Path.Combine("wwwroot", guid + ".jpg");
        //        if (recepie.Image != null)
        //        {
        //            var fileStream = new FileStream(filePath, FileMode.Create);
        //            recepie.Image.CopyTo(fileStream);
        //        }
        //        test.ImageUrl = filePath.Remove(0, 7);

        //        _dbContext.SaveChanges();
        //    }


        //    return StatusCode(StatusCodes.Status200OK);
        //}

        ////[Authorize]
        //[HttpPost("[action]")]
        //[ResponseCache(Duration = 360, Location = ResponseCacheLocation.Any)]
        //public IActionResult AddRecepieImg([FromForm] Quiz quiz)
        //{
        //    bool resoult = _quizRepository.AddQuizImg(quiz);

        //    if (resoult == true)
        //    {
        //        return StatusCode(StatusCodes.Status201Created);
        //    }
        //    else
        //    {
        //        return StatusCode(StatusCodes.Status501NotImplemented);
        //    }
        //}

    }
}
