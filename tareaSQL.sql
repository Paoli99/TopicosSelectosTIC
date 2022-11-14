create table tabla(
    person varchar(255),
    supervisor varchar (255)
);


Insert INTO [tabla]
(
    [person],
    [supervisor]
)

values(
    ('Bob','Alice'),
    ('Mary','Susan'),
    ('Alice','David'),
    ('David','Mary'),
);

-- enunciado 1
SELECT supervisor 
from tabla
where person = 'Bob'

-- enunciado 2
select supervisor 
from prueba
where person=(select supervisor from prueba
           where person="Bob")

-- enunciado 3
select supervisor 
from prueba 
where person = "Bob"
OR person = (select supervisor
             from prueba 
             where person = "Bob")
OR person = (select supervisor 
             from prueba 
             where person = (select supervisor 
                             from prueba 
                             where person = "Bob"))
