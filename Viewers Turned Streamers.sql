/ https://platform.stratascratch.com/coding/2012-viewers-turned-streamers?via=frederik&code_type=1/

/https://www.youtube.com/watch?v=8esdr3Ar7_o&ab_channel=FrederikM%C3%BCller /

```
SELECT twitch_sessions.user_id, COUNT(*) AS n_sessions

FROM twitch_sessions JOIN 

(select DISTINCT user_id, FIRST_VALUE(session_type) OVER (PARTITION BY user_id ORDER BY session_start ASC) AS first_session 
FROM twitch_sessions) user_first_session 

ON twitch_sessions.user_id = user_first_session.user_id

WHERE twitch_sessions.session_type = 'streamer'
AND first_session = 'viewer'

GROUP BY twitch_sessions.user_id

```
