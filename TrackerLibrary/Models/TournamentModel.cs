using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackerLibrary.Models
{
    /// <summary>
    /// Represents one tournament
    /// </summary>
    public class TournamentModel
    {
        public event EventHandler<DateTime> OnTournamentComplete;

        /// <summary>
        /// The unique identifier for the tournament.
        /// </summary>
        public int Id { get; set; }
        /// <summary>
        /// The name of the tournament
        /// </summary>
        public string TournamentName { get; set; }
        /// <summary>
        /// What do you need to enter the tournament, like money
        /// </summary>
        public decimal EntryFee { get; set; }
        /// <summary>
        /// The list of teams that are participating in the tournament
        /// </summary>
        public List<TeamModel> EnteredTeams { get; set; } = new List<TeamModel>();
        /// <summary>
        /// The list of prices of the tournament
        /// </summary>
        public List<PrizeModel> Prizes { get; set; } = new List<PrizeModel>();
        /// <summary>
        /// A list of the matchups inside a list of rounds. Ex: 3 rounds; 4 matchups first, then 2, then 1
        /// </summary>
        public List<List<MatchupModel>> Rounds { get; set; } = new List<List<MatchupModel>>();

        public void CompleteTournament()
        {
            OnTournamentComplete?.Invoke(this, DateTime.Now);
        }
    }
}
