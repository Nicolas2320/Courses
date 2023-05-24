#SELECCIONAR COLUMNAS

trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time)

#RENOMBRAR COLUMNA

trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename (hotel_type = hotel)

#UNIR DOS COLUMNAS

example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = ' ')

#CREAR NUEVA COLUMNA PARA OPERACIONES ENTRE COLUMNAS

example_df <- bookings_df %>% 
  mutate(guests = adults + children + babies)

#OPERACIONES UNA COLUMNA

example_df <- bookings_df %>% 
  summarize(number_canceled = sum(is_canceled), average_lead_time = mean(lead_time))
