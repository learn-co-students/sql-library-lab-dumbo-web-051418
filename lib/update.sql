UPDATE characters
SET species = 'Martian'
WHERE id > 0
ORDER BY id DESC
LIMIT 1;
