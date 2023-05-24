penguins %>% 
  arrange(-bill_length_mm)

penguins_2 <- penguins %>% 
  arrange(bill_length_mm)


View(penguins_2)

penguins %>% 
  group_by(island) %>% 
  drop_na %>%  
  summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% 
  group_by(island) %>% 
  summarise(mean_bill_length_mm = mean(bill_length_mm)) %>% 
  drop_na()

penguins %>% 
  group_by(island) %>% 
  drop_na %>%  
  summarise(max_bill_length_mm = max(bill_length_mm))

penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>%  
    summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

penguins %>%
  filter(species == 'Adelie')
