const express = require('express');
var cors = require('cors');

const api = require('./routes/api');

const app = express();

const PORT = process.env.PORT || 3000;

app.use(cors());

app.use('/api/v1', api);

app.listen(PORT, () => console.log(`App listening on port ${PORT}`));

// SELECT t.name, sum(r.points_earned) as total_points, count(r.team_id) as total_matches FROM `results` r right join teams t on t.id = r.team_id GROUP by r.team_id order by total_points desc