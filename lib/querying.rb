def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name,motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(*) as count FROM characters GROUP BY species ORDER BY count DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON authors.id = series.author_id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
	JOIN characters ON series.id = characters.series_id
	WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(characters.species ) DESC
	LIMIT 1 ;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(b.id) as count
FROM characters c
JOIN character_books cb ON c.id = cb.character_id
JOIN books b ON cb.book_id = b.id
GROUP BY c.name
ORDER BY count DESC;"
end
