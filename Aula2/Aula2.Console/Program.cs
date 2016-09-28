using System;
using System.Collections.Generic;
using System.Linq;
using System.Speech.Synthesis;
using System.Text;
using System.Threading.Tasks;

namespace Aula2.Console {
    class Program {
        static void Main(string[] args) {
            SpeechSynthesizer hal9000 = new SpeechSynthesizer();
            hal9000.Speak("I'm sorry Dave, I'm afraid i can do that!");
        }
    }
}
