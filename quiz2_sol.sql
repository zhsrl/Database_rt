/* PART 1*/

/* question 1



   */

/* question 2
   Answer D.

   There are 3 break even with tuples (2, 5 , 3) ; (1, 2, 3) ; (4, 5 ,6). But there are as it were (2, 5, 3) in answer.

   */

/* question 3



   */

/* question 4
    Answer B.
    Because null = null is not true6 it is nul therefore there is no effect from first.


   */

/* question 5
    Answer C.
    Since whole of B is break even with 10 but C is equal to 9.


   */


/* PART 2 */

/* task 6 */

SELECT title, avg(stars)
    FROM Movie m LEFT JOIN Rating r ON m.mID = r.mID
    GROUP BY  title
    ORDER BY  avg(stars) DESC, title;

/* task 7 */

SELECT DISTINCT  ON (m.mID, r.stars) m.title, r.stars
    FROM Movie m LEFT JOIN Rating r on m.mID = r.mID
    ORDER BY  m.title, r.stars;

/* task 8 */

SELECT DISTINCT name
    FROM Reviewer
    WHERE rID in (SELECT rID FROM Rating where ratingDate is NULL);

/* task 9 */

CREATE MATERIALIZED VIEW movWithOutRat
    AS SELECT title FROM Movie
    WHERE mID NOT IN (SELECT mID from Rating);

/* task 10 */

CREATE USER adm WITH ENCRYPTED PASSWORD 'adm_user';
GRANT SELECT ON movWithOutRat to adm;
GRANT UPDATE ON movWithOutRat to adm;