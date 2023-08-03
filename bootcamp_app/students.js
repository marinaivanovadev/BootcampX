const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect();

const cohortName = process.argv[2];
const maximumResult = process.argv[3];

pool
  .query(`SELECT students.id, students.name, cohorts.name as cohort_name
  FROM students
  JOIN cohorts ON students.cohort_id = cohorts.id
  WHERE cohorts.name LIKE $1
  LIMIT $2;
  `, [`%${cohortName}%`, maximumResult])
  .then(result => {
    result.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  });
})
  .catch(err => console.error('query error', err.stack));

