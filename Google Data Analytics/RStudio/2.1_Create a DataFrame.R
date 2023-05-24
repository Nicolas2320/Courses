
#ID, NOMBRES Y PROFESIONES

id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

#CREACION DE DATAFRAME

employee <- data.frame(id, name, job_title)
print(employee)

#SEPARAR COLUMNAS

employee_2 <- separate(employee, name, into = c('first_name','last_name'), sep = ' ')
print(employee_2)

#UNIR COLUMNAS

employee_3 <- unite(employee_2, 'name', first_name, last_name, sep = ' ')
print(employee_3)
