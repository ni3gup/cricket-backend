const express = require('express');

const { pointsTable, teams, playersOfTeam } = require('../controllers/main');

const router = express.Router();

router.get('/points-table', pointsTable);
router.get('/teams', teams);
router.get('/team/:id/players', playersOfTeam);

module.exports = router;