select cmp.company,
    ctg.name
FROM companies AS cmp
    INNER JOIN categories AS ctg ON (cmp.category_id = ctg.id);