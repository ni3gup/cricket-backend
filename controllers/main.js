const { getPointsTable, getTeams, getPlayersOfTeam } = require('../repositories/main'); 

const pointsTable = async (req, res) => {
    const pointsData = await getPointsTable();
    res.json({ status: true, data: pointsData });
}

const teams = async (req, res) => {
    const teams = await getTeams();
    res.json({ status: true, data: teams });
}

const playersOfTeam = async (req, res) => {
    const id = req.params.id;
    const players = await getPlayersOfTeam(id);
    res.json({ status: true, data: players });
}

module.exports = { pointsTable, teams, playersOfTeam };