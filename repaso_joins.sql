INSERT INTO TBL_CARGOS(CODIGO_CARGO, NOMBRE_CARGO)
VALUES (2, 'PROGRAMADOR');



SELECT *
FROM TBL_CARGOS;

SELECT *
FROM TBL_EMPLEADOS;

--CRUCE UTILIZANDO UN INNER JOIN
SELECT NOMBRE_EMPLEADO, NOMBRE_CARGO
FROM TBL_EMPLEADOS A
INNER JOIN TBL_CARGOS B
ON (A.CODIGO_CARGO = B.CODIGO_CARGO); 
--CRUCE UTILIZANDO UN NATURAL JOIN
SELECT NOMBRE_EMPLEADO, NOMBRE_CARGO
FROM TBL_EMPLEADOS A
NATURAL JOIN TBL_CARGOS B;


--CRUCE UTILIZANDO UN PRODUCTO CARTESIANO
SELECT NOMBRE_EMPLEADO, NOMBRE_CARGO
FROM  TBL_EMPLEADOS A,
      TBL_CARGOS B
WHERE A.CODIGO_CARGO = B.CODIGO_CARGO;

--CRUCE UTILIZANDO UN INNER JOIN
SELECT NOMBRE_EMPLEADO, NOMBRE_CARGO, B.CODIGO_CARGO
FROM TBL_EMPLEADOS A
LEFT JOIN TBL_CARGOS B
ON (A.CODIGO_CARGO = B.CODIGO_CARGO)
WHERE B.CODIGO_CARGO IS NULL;


SELECT NOMBRE_EMPLEADO, NOMBRE_CARGO
FROM TBL_EMPLEADOS A
RIGHT JOIN TBL_CARGOS B
ON (A.CODIGO_CARGO = B.CODIGO_CARGO);

SELECT NOMBRE_EMPLEADO, NOMBRE_CARGO
FROM TBL_EMPLEADOS A
FULL OUTER JOIN TBL_CARGOS B
ON (A.CODIGO_CARGO = B.CODIGO_CARGO);







