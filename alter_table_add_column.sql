ALTER TABLE sub_category
ADD category_id INT NOT NULL FOREIGN KEY REFERENCES category(id)
