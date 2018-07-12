def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
FROM books
INNER JOIN series
ON books.series_id = series.id
WHERE series.id = 1;
"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
FROM characters
ORDER BY length(characters.motto) DESC
LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "
  SELECT characters.species, COUNT(characters.species)
  FROM characters
  GROUP BY characters.species
  ORDER BY characters.species  desc
  LIMIT 1;
"
end

def select_name_and_series_subgenres_of_authors
  "
  SELECT authors.name, subgenres.name
FROM series
INNER JOIN authors
ON authors.id = series.author_id
JOIN subgenres
ON subgenres.id = series.subgenre_id

"
end

def select_series_title_with_most_human_characters
  "select series.title from series
inner join characters 
on characters.series_id = series.id
where characters.species = 'human'
group by series.title
limit 1
"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
