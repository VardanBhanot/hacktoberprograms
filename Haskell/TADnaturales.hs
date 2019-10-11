module TADnaturales (Natural, mas, por, pot, Booleano, no, y, o, condicional)
where
-- Se construyen los naturales iniciando en Cero ~ 0

-- Constructores
data Natural = Cero
             | Sucesor Natural
             deriving (Eq, Show)

-- Un par de numeros para probarlo
cero = Cero
uno = Sucesor cero
dos = Sucesor uno
tres = Sucesor dos
cuatro = Sucesor tres
cinco = Sucesor cuatro
seis = Sucesor cinco
siete = Sucesor seis
ocho = Sucesor siete
nueve = Sucesor ocho
diez = Sucesor nueve
once = Sucesor diez
doce = Sucesor once


-- Operaciones

mas :: Natural -> Natural -> Natural
mas numero Cero = numero
mas numero (Sucesor n) = mas (Sucesor numero) n


por :: Natural -> Natural -> Natural
por numero Cero = Cero
por numero (Sucesor Cero) = numero
por numero (Sucesor n) = mas numero (por numero n)


-- x^y Ingresar de la forma:  pot x y  
pot :: Natural -> Natural -> Natural
pot Cero numero = Cero
pot numero Cero = Sucesor Cero
pot numero (Sucesor n) = por numero (pot numero n)


-- menor estricto x<y ~ menor x y
menor :: Natural -> Natural -> Booleano
menor _ Cero = Falso
menor Cero (Sucesor n) = Verdadero
menor (Sucesor n) (Sucesor m) = menor n m

--menor o igual x<=y ~ menorIgual x y
menorIgual :: Natural -> Natural -> Booleano
menorIgual Cero _ = Verdadero
menorIgual (Sucesor n) Cero = Falso
menorIgual (Sucesor n) (Sucesor m) = menorIgual n m


-- mayor estricto x>y ~ mayor x y 
mayor :: Natural -> Natural -> Booleano
mayor Cero _ = Falso
mayor (Sucesor n) Cero = Verdadero
mayor (Sucesor n) (Sucesor m) = mayor n m

--mayor o igual x>=y ~ mayorIgual x y
mayorIgual :: Natural -> Natural -> Booleano
mayorIgual _ Cero = Verdadero
mayorIgual Cero (Sucesor n) = Falso
mayorIgual (Sucesor n) (Sucesor m) = mayorIgual n m

-- igualdad
igual :: Natural -> Natural -> Booleano
igual Cero Cero = Verdadero
igual Cero (Sucesor n) = Falso
igual (Sucesor n) Cero = Falso
igual (Sucesor n) (Sucesor m) = igual n m


--------------------------------------------------------------------------------
--Constructor

data Booleano = Verdadero
              | Falso
              deriving (Eq, Show)


--Operaciones

no :: Booleano -> Booleano
no Verdadero = Falso
no Falso = Verdadero

y :: Booleano -> Booleano -> Booleano
y Verdadero Verdadero = Verdadero
y _ _ = Falso

o :: Booleano -> Booleano  -> Booleano
o Falso Falso = Falso
o _ _ = Verdadero

condicional :: Booleano -> a -> a -> a
condicional Verdadero este _ = este
condicional Falso _ otro = otro



