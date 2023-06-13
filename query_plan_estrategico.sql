create database plan_estrategico

create table Universidades (IDUniversidad serial primary key not null, 
							Abreviacion varchar(10), 
							Nombre varchar(100), 
						   Plan_estudios varchar(15))
						   
create table Usuarios (IDUsuario serial primary key not null, 
					  Nombre_usuario varchar(20),
					  Contraseña varchar(8),
					  Cargo varchar (10),
					  Universidad int, 
					  constraint universidad foreign key (Universidad) 
					  references universidades(iduniversidad))

create table carreras (IDCarrera serial primary key not null,
					  Universidad int, 
					  constraint universidad foreign key (Universidad)
					  references universidades(iduniversidad),
					  Nombre varchar(100),
					  Avreviacion varchar (10), 
					  Modalidad varchar(15), 
					  Nivel varchar(15))

create table UTNA_Tasa_cobertura (IDTC serial primary key not null,
								 Carrera int, 
								 constraint carrera foreign key(Carrera)
								 references carreras(idcarrera),
								 Año int,
								 Incremento_matricula int)


create table UTNA_Eficiencia_IRE (IDEIRE serial primary key not null,
								 Carrera int,
								 constraint carrera foreign key(Carrera)
								 references carreras(idcarrera),
								 Año int,
								 indice_retencion int, 
								 Indice_desercion int,
								 Indice_eficiencia_terminal int,
								 Indice_titulacion int)

create table UTNA_Tasa_Puntaje_EGETSU (IDTPEGESTU serial primary key not null,
									  Carrera int, 
									  constraint carrera foreign key(Carrera)
									  references carreras(idcarrera),
									  Año int, 
									  p_700_800 int,
									  p_801_900 int,
									  p_901_1000 int,
									  p_1001_1200 int,
									  p_1201_1300 int,
									  puntaje_satisfactorio int,
									  puntaje_sobresaliente int)

create table UTNA_Tasa_Puntaje_EGEL (IDTPEGEL serial primary key not null,
									  Carrera int, 
									  constraint carrera foreign key(Carrera)
									  references carreras(idcarrera),
									  Año int, 
									  p_700_800 int,
									  p_801_900 int,
									  p_901_1000 int,
									  p_1001_1200 int,
									  p_1201_1300 int,
									  puntaje_satisfactorio int,
									  puntaje_sobresaliente int)