using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using FunQuiz_Database.Repositories;

namespace FunQuiz_Server.Controllers
{
    [Route("[controller]/")]
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

        //[Authorize]
        [HttpGet]
        //[ResponseCache(Duration = 360, Location = ResponseCacheLocation.Any)]
        public async Task<IActionResult> Get()
        {
            var quiz = await _quizRepository.GetAllQuizes();

            //var recepie = await _settingsRepository.GetRecepieById(id);
            //var recepie = _recepieRepository.GetAll();
            return Ok(quiz);
        }

    }
}
