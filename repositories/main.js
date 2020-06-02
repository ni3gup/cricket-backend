const dbConfig = require('../db');
const knex = require('knex')(dbConfig);

const getPointsTable = () => {
    try {
        return knex
            .from('results')
            .select([
                "teams.name as team",
                knex.raw("SUM(results.points_earned) as total_points"),
                knex.raw("COUNT(results.team_id) as total_matches")
            ])
            .rightJoin('teams', 'results.team_id', 'teams.id')
            .groupBy('results.team_id')
            .orderBy('total_points', 'desc')
            .then( rows => rows.length > 0 ? rows : [])
            .catch((err) => {
                throw err;
            });
    } catch (e) {
        throw e;
    }
}

const getTeams = () => {
    try {
        return knex
            .from('teams')
            .select([
                "teams.id as id",
                "teams.name as team",
                "countries.name as country"
            ])
            .rightJoin('countries', 'teams.country_id', 'countries.id')
            .then( rows => rows.length > 0 ? rows : [])
            .catch((err) => {
                throw err;
            });
    } catch (e) {
        throw e;
    }
}

const getPlayersOfTeam = (id) => {
    console.log(id);
    try {
        return knex
            .from('players')
            .select([
                "players.id as id",
                "players.name as name",
                "countries.name as country",
                "teams.name as team"
            ])
            .join('countries', 'players.country_id', 'countries.id')
            .join('teams', 'players.team_id', 'teams.id')
            .where('players.team_id', '=', id)
            .then( rows => rows.length > 0 ? rows : [])
            .catch((err) => {
                throw err;
            });
    } catch (e) {
        throw e;
    }
}

module.exports = { getPointsTable, getTeams, getPlayersOfTeam };