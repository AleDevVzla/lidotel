program Lidotel;

{$codepage utf8}
uses
	SysUtils, crt;
	
type // types para los records de los clientes en general
  TClienteBase = record 
    cedula: string;
    nombre: string;
    apellido:string;
    email: string;
    telefono: string;
    dias: integer;
    habitacion: string;
    costeHabitacion: integer;
    costoTotal: Longint;
  end;

  TAcompanante = record 
    cedulaBase: string;
    nombre: string;
    apellido:string;
    clienteNombre: string;
    cedula: string;
	email: string;
	telefono: string;
  end;

  TGrupoFamiliar = record
	clienteNombre: string;
    cedulaBase: string;
    nombre: string;
    edad: integer;
    tipo: string; 
  end;

var
  opcion: integer;
  
procedure hFamilyRoom;	// Descripciones de la habitacion Family Room 
begin
	writeln(' ------------------------------------------------ ');
	writeln('|    HABITACION FAMILY ROOM - 200$ POR NOCHE     |');
	writeln(' ------------------------------------------------ ');
	writeln('| CALIDA   Y  CONFORTABLE  HABITACION   DECORADA |');
	writeln('| CON UN ESTILO VANGUARDISTA, 100$ LIBRE DE HUMO |');
	writeln('| CAMA LIDOTEL ROYAL KING CON RELOJ DESPERTADOR, |');
	writeln('| TV  32" HD PLASMA CON  CABLE, BANO CON  DUCHA, |');
	writeln('| CAFETERA  ELECTRICA,  NEVERA  EJECUTIVA,  CAJA |');
	writeln('| ELECTRONICA DE  SEGURIDAD, SECADOR DE CABELLO, |');
	writeln('| ARMARIO   ADICIONAL  AMPLIO,  UNA   HABITACION |');
	writeln('| SEPARADA  CON  2 CAMAS FULL Y BANO  CON  DUCHA |');
	writeln(' ------------------------------------------------ ');
	writeln('|                    INCLUYE:                    |');
	writeln(' ------------------------------------------------ ');
	writeln('| DESAYUNO  BUFFET EN EL RESTAURANT LE  NOUVEAU, |');
	writeln('| ACCESO INALAMBRICO A INTERTET (WIFI), BUSINESS |');
	writeln('| CENTER,  USO  DE  NUESTRA  EXCLUSIVA  PISCINA, |');
	writeln('| ACCESO A NUESTRO  GIMNASIO, SILLAS Y TOLDOS EN |');
	writeln('| LA  PLAYA, KIT DE VANIDADES Y NINOS DE 0  A  2 |');
	writeln('| ANOS                 SIN              RECARGOS |');
	writeln('|------------------------------------------------|');
	writeln('|         PRESIONE <ENTER> PARA CONTINUAR        |');
	writeln(' ------------------------------------------------ ');
end;

procedure hSencilla;	// Descripciones de la habitacion Sencilla 
begin
	writeln(' ------------------------------------------------- ');
	writeln('|       HABITACION SENCILLA - 60$ POR NOCHE       |');
	writeln(' ------------------------------------------------- ');
	writeln('| AMPLIA Y CONFORTABLE HABITACION DECORADA CON UN |');
	writeln('| ESTILO  VANGUARDISTA, CAMA  LIDOTEL ROYAL  KING |');
	writeln('| CON  SABANAS DE ALGODON  EGIPCIO, SOPORTE  PARA |');
	writeln('| IPOD  CON RELOJ  DESPERTADOR, TV 32" HD  PLASMA |');
	writeln('| CON CABLE, BANO CON  DUCHA, CAFETERA ELECTRICA, |');
	writeln('| NEVERA EJECUTIVA, CAJA ELECTRONICA DE SEGURIDAD |');
	writeln('| Y          SECADOR          DE          CABELLO |');
	writeln(' ------------------------------------------------- ');
	writeln('|                     INCLUYE:                    |');
	writeln(' ------------------------------------------------- ');
	writeln('| DESAYUNO  BUFFET EN EL  RESTAURANT LE  NOUVEAU, |');
	writeln('| ACCESO INALAMBRICO A  INTERNET (WIFI), ACCESO A |');
	writeln('| LAS  INSTALACIONES DEL BUSINESS CENTER, USO  DE |');
	writeln('| NUESTRA   EXCLUSIVA PISCINA, ACCESO A   NUESTRO |');
	writeln('| MODERNO  GIMNASIO Y KIT DE VANIDADES, NINOS  DE |');
	writeln('| 0      A      2     ANOS      SIN      RECARGOS |');
	writeln(' ------------------------------------------------- ');
	writeln('|          PRESIONE <ENTER> PARA CONTINUAR        |');
	writeln(' ------------------------------------------------- ');
end;

procedure hDoble;	// Descripciones de la habitacion Doble 
begin
	writeln(' ------------------------------------------------- ');
	writeln('| HABITACION DOBLE - 120$ POR NOCHE |');
	writeln(' ------------------------------------------------- ');
	writeln('| AMPLIA Y CONFORTABLE HABITACION DECORADA CON UN |');
	writeln('| ESTILO VANGUARDISTA, DOS CAMAS LIDOTEL FULL CON |');
	writeln('| SABANAS  DE ALGODON EGIPCIO, SOPORTE PARA  IPOD |');
	writeln('| CON   RELOJ DESPERTADOR, TV 32" HD PLASMA   CON |');
	writeln('| CABLE,   BANO CON DUCHA,  CAFETERA   ELECTRICA, |');
	writeln('| NEVERA    EJECUTIVA,    CAJA   ELECTRONICA   DE |');
	writeln('| SEGURIDAD     Y     SECADOR     DE      CABELLO |');
	writeln(' ------------------------------------------------- ');
	writeln('|                     INCLUYE:                    |');
	writeln(' ------------------------------------------------- ');
	writeln('| DESAYUNO  BUFFET EN EL  RESTAURANT LE  NOUVEAU, |');
	writeln('| ACCESO INALAMBRICO A  INTERNET (WIFI), ACCESO A |');
	writeln('| LAS  INSTALACIONES DEL BUSINESS CENTER, USO  DE |');
	writeln('| NUESTRA  EXCLUSIVA  PISCINA, ACCESO  A  NUESTRO |');
	writeln('| MODERNO  GIMNASIO Y KIT DE VANIDADES, NINOS  DE |');
	writeln('| 0      A      2     ANOS      SIN      RECARGOS |');
	writeln(' ------------------------------------------------- ');
	writeln('|          PRESIONE <ENTER> PARA CONTINUAR        |');
	writeln(' ------------------------------------------------- ');
end;

procedure hSuite;	// Descripciones de la habitacion Suite 
begin
	writeln(' ------------------------------------------------- ');
	writeln('| HABITACION    SUITE    -   300$    POR    NOCHE |');
	writeln(' ------------------------------------------------- ');
	writeln('| CALIDA Y CONFORTABLE HABITACION DECORADA CON UN |');
	writeln('| ESTILO  VANGUARDISTA, 100% LIBRE DE HUMO,  CAMA |');
	writeln('| LIDOTEL  ROYAL KING  CON RELOJ DESPERTADOR,  TV |');
	writeln('| 32"  HD  PLASMA CON CABLE, 2 BANOS  CON  DUCHA, |');
	writeln('| CAFETERA  ELECTRICA,   NEVERA  EJECUTIVA,  CAJA |');
	writeln('| ELECTRONICA  DE SEGURIDAD, SECADOR DE  CABELLO, |');
	writeln('| ARMARIO ADICIONAL  AMPLIO Y AREA SEPARADA CON 2 |');
	writeln('| SOFA-CAMA                          INDIVIDUALES |');
	writeln(' ------------------------------------------------- ');
	writeln('|                     INCLUYE:                    |');
	writeln(' ------------------------------------------------- ');
	writeln('| DESAYUNO  BUFFET EN EL  RESTAURANT LE  NOUVEAU, |');
	writeln('| ACCESO INALAMBRICO A INTERNET (WIFI), BUSSINESS |');
	writeln('| CENTER,  USO  DE   NUESTRA  EXCLUSIVA  PISCINA, |');
	writeln('| ACCESO  A NUESTRO GIMNASIO, SILLAS Y TOLDOS  EN |');
	writeln('| LA  PLAYA,  KIT DE VANIDADES Y NINOS DE 0  A  2 |');
	writeln('| ANOS                  SIN              RECARGOS |');
	writeln(' ------------------------------------------------- ');
	writeln('|          PRESIONE <ENTER> PARA CONTINUAR        |');
	writeln(' ------------------------------------------------- ');
end;

function obtenerOpcionValida(mensaje: string; min, max: integer): integer; // funcion para validar numeros enteros en un rango dado
var 
	entrada: string;
	valor, codigo: integer;
begin
	repeat
		write(mensaje);
		readln(entrada);
		Val(entrada, valor, codigo); // Convierte el input en un número para verificar
		if (codigo <> 0) or (valor < min) or (valor > max) then
			begin
				writeln('Entrada invalida. Ingresa un numero entre ', min, ' y ', max, '.');
				continue;
			end;
		exit(valor); // Retorna el valor válido
	until false;
end;

function LeerEntero(prompt: string): Integer; // funcion para validar numero entero
var
  input: String;
  numero, codigo: Integer;
begin
  repeat
    write(prompt);
    ReadLn(input);
    Val(input, numero, codigo);
    if codigo <> 0 then
      WriteLn('Error: El valor ingresado no es un número entero. Inténtelo de nuevo.');
  until codigo = 0;
  LeerEntero := numero;
end;

procedure elegirHabitacion(var cliente: TClienteBase);	// Procedimiento para la eleccion de las habitaciones con sus respectivas descripciones 
	var opcionH: integer;
begin
	clrscr;
	writeln('SELECCIONE LA HABITACION QUE DESEA');
	writeln('1.- FAMILLY ROOM - 200$ POR NOCHE');
	writeln('2.- SENCILLA - 60$ POR NOCHE');
	writeln('3.- DOBLE - 120$ POR NOCHE');
	writeln('4.- SUITE - 300$ POR NOCHE');
	opcionH := obtenerOpcionValida('OPCION: ', 1, 4);
	case opcionH of
		1:begin
			cliente.habitacion := 'Family Room';
			cliente.costeHabitacion:= 200;
			hFamilyRoom;
			readln;
		end;
		2:begin
			cliente.habitacion := 'Habitacion Secilla';
			cliente.costeHabitacion:= 60;
			hSencilla;
			readln;
		end;
		3:begin
			cliente.habitacion := 'Habitacion Doble';
			cliente.costeHabitacion:= 120;
			hDoble;
			readln;
		end;
		4:begin
			cliente.habitacion := 'Habitacion Suite';
			cliente.costeHabitacion:= 300;
			hSuite;
			readln;
		end;
	end;	
end;

procedure GuardarClienteBase(cliente: TClienteBase); // Procedimiento para Guardar el Type del cliente en los registros
var
    archivo: file of TClienteBase;
begin
    Assign(archivo, 'ClientesBase.dat');
	if FileExists('ClientesBase.dat') then
		Reset(archivo)
	else
		Rewrite(archivo);
	Seek(archivo, FileSize(archivo));  // Añadir al final
	Write(archivo, cliente);
	Close(archivo);
end;

procedure GuardarAcompanante(acompanante: TAcompanante); // Procedimiento para Guardar el Type del acompanante en los registros
var
    archivo: file of TAcompanante;
begin
	Assign(archivo, 'Acompanantes.dat');
	if FileExists('Acompanantes.dat') then
		Reset(archivo)
	else
		Rewrite(archivo);
	Seek(archivo, FileSize(archivo));  // Añadir al final
	Write(archivo, acompanante);
	Close(archivo);
end;

procedure RegistrarAcompanante(var acompanante: TAcompanante; cedulaBase: string; clienteNombre: string);  // Procedimiento para registrar acompanante con su Type
begin
	clrscr;
    acompanante.cedulaBase := cedulaBase;
    acompanante.clienteNombre := clienteNombre;
    write('Ingrese el nombre del acompanante: ');
    readln(acompanante.nombre);
    write('Ingrese el apellido: ');
    readln(acompanante.apellido);
    write('Ingrese el email: ');
    readln(acompanante.email);
	write('Ingrese el telefono: ');
    readln(acompanante.telefono);
end;

procedure GuardarGrupoFamiliar(grupo: TGrupoFamiliar);  // Procedimiento para Guardar el Type del grupo familiar en los registros
var
    archivo: file of TGrupoFamiliar;
begin
    Assign(archivo, 'GrupoFamiliar.dat');
	if FileExists('GrupoFamiliar.dat') then
		Reset(archivo)
    else
		Rewrite(archivo);
    Seek(archivo, FileSize(archivo));  // Añadir al final
    Write(archivo, grupo);
    Close(archivo);
end;

procedure RegistrarGrupoFamiliar(cedulaBase: string; clienteNombre: string); // registra grupo familiar teniendo en cuenta cuantas personas son y utilizando la cedula del cliente como base para tener control
var
    grupo: TGrupoFamiliar;
    i, numAdultos, numNinos,edad, ninosTrue: integer;
begin
	clrscr;
    numAdultos := LeerEntero('Ingrese la cantidad de adultos (Mayores de 12 años): ');
	for i := 1 to numAdultos do
		begin
			grupo.cedulaBase := cedulaBase; // cedula del cliente base pedido en los parametros
			grupo.clienteNombre := clienteNombre; //nombre del cliente base pedido en los parametros
			write('Ingrese el nombre del adulto: ');
			readln(grupo.nombre);
			edad := LeerEntero('Ingrese la edad: '); // comprobar edad del adulto
				if edad < 12 then
					edad := LeerEntero('Los adultos son mayores de 12 años. Intente de nuevo: ');
			grupo.edad := edad; 
			grupo.tipo := 'Adulto';
			GuardarGrupoFamiliar(grupo);
		end;
	clrscr;
    ninosTrue:= obtenerOpcionValida('Hay niños en el grupo (1-Si, 2-No):',1,2);
    if ninosTrue = 1 then
		begin
			numNinos := LeerEntero('Ingrese la cantidad de niños (Menores de 12 años): ');
			for i := 1 to numNinos do
			begin
				grupo.clienteNombre := clienteNombre; //nombre del cliente base pedido en los parametros
				grupo.cedulaBase := cedulaBase; // cedula del cliente base pedido en los parametros
				write('Ingrese el nombre del nino: ');
				readln(grupo.nombre);
				edad := LeerEntero('Ingrese la edad: '); 
				if edad >= 12 then // comprobar edad del menor
					edad := LeerEntero('Los Niños son menores de 12 años. Intente de nuevo: ');
					grupo.edad := edad;
				grupo.tipo := 'Nino';
				GuardarGrupoFamiliar(grupo);
			end;
		end
end;

procedure MostrarFacturaClienteBase(cliente: TClienteBase); // Procedimiento para mostrar factura del cliente
begin
	clrscr;
	writeln('--- Factura del Cliente ---');
	writeln('Nombre: ', cliente.nombre, ' ', cliente.apellido);
	writeln('Cedula: ', cliente.cedula);
	writeln('Teléfono: ', cliente.telefono);
	writeln('Email: ', cliente.email);
	writeln('Días de Reserva: ', cliente.dias);
	writeln('Costo por Habitación: ', cliente.costeHabitacion);
	writeln('Costo Total: ', cliente.costoTotal);
	writeln('-----------------------------------');
	writeln('<3 ¡Gracias por su compra! <3');
end;

procedure MostrarFacturaConAcompanante(cliente: TClienteBase; acompanante: TAcompanante); // Procedimiento para mostrar factura del cliente y acompanante
begin
	clrscr;
	writeln('--- Factura del Cliente y su Acompañante ---');
	writeln('Cliente: ', cliente.nombre, ' ', cliente.apellido);
	writeln('Cedula: ', cliente.cedula);
	writeln('Teléfono: ', cliente.telefono);
	writeln('Email: ', cliente.email);
	writeln('Días de Reserva: ', cliente.dias);
	writeln('Costo por Habitación: ', cliente.costeHabitacion);
	writeln('Costo Total: ', cliente.costoTotal);
	writeln('--- Datos del Acompañante ---');
	writeln('Nombre: ', acompanante.nombre, ' ', acompanante.apellido);
	writeln('Email: ', acompanante.email);
	writeln('Teléfono: ', acompanante.telefono);
	writeln('-----------------------------------');
	writeln('<3 ¡Gracias por su compra! <3');
end;

procedure MostrarFacturaConGrupoFamiliar(cliente: TClienteBase); // Procedimiento para mostrar factura del cliente y familia q no pude hacer q mostrara tambien a los familiares XD
begin
    writeln('--- Factura del Cliente con su Grupo Familiar ---');
    writeln('Familia Del Cliente: ', cliente.nombre, ' ', cliente.apellido);
   	writeln('Cedula: ', cliente.cedula);
	writeln('Teléfono: ', cliente.telefono);
	writeln('Email: ', cliente.email);
	writeln('Días de Reserva: ', cliente.dias);
	writeln('Costo por Habitación: ', cliente.costeHabitacion);
	writeln('Costo Total: ', cliente.costoTotal);
	writeln('-----------------------------------');
	writeln('<3 ¡Gracias por su compra! <3');
end;

///////////////////////////////////////////////////////////////////////////////////////////

procedure MostrarIndividual(cliente: TClienteBase);
begin
  writeln('--- Datos del Cliente Individual ---');
  writeln('Nombre: ', cliente.nombre, ' ', cliente.apellido);
  writeln('Cedula: ', cliente.cedula);
  writeln('Email: ', cliente.email);
  writeln('Telefono: ', cliente.telefono);
  writeln('Dias de estadia: ', cliente.dias);
  writeln('Habitacion: ', cliente.habitacion);
  writeln('Costo Total: ', cliente.costoTotal);
end;

procedure MostrarAcompanante(acompanante: TAcompanante);
begin
  writeln('--- Datos del Acompañante ---');
  writeln('Nombre: ', acompanante.nombre, ' ', acompanante.apellido);
  writeln('Cedula del Acompañante: ', acompanante.cedula);
  writeln('Email: ', acompanante.email);
  writeln('Telefono: ', acompanante.telefono);
  writeln('Cliente Asociado: ', acompanante.clienteNombre);
end;

procedure MostrarFamiliar(familiar: TGrupoFamiliar);
begin
  writeln('--- Datos del Familiar ---');
  writeln('Nombre: ', familiar.nombre);
  writeln('Edad: ', familiar.edad);
  writeln('Tipo (Adulto/Niño): ', familiar.tipo);
  writeln('Cliente Asociado: ', familiar.clienteNombre);
end;

procedure BuscarCliente(cedula: string);
var
  archivo: file of TClienteBase;
  cliente: TClienteBase;
  encontrado: boolean;
begin
  encontrado := False;
  if not FileExists('ClientesBase.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'ClientesBase.dat');
  Reset(archivo);

  while not EOF(archivo) do
  begin
    Read(archivo, cliente);
    if cliente.cedula = cedula then
    begin
	  Close(archivo);
      MostrarIndividual(cliente);
      encontrado := True;
      break;
    end;
  end;

  if not encontrado then
    writeln('Cliente no encontrado.');
end;

function VerificarCliente(cedula: string): boolean;
var
  archivo: file of TClienteBase;
  cliente: TClienteBase;
  encontrado: boolean;
begin
  encontrado := False;
  if not FileExists('ClientesBase.dat') then 
  begin
    VerificarCliente := False;
	exit;
  end;

  Assign(archivo, 'ClientesBase.dat');
  Reset(archivo);

  while not EOF(archivo) do
  begin
    Read(archivo, cliente);
    if cliente.cedula = cedula then
    begin
      encontrado := True;
      break;
    end;
  end;

  Close(archivo);
  VerificarCliente := encontrado;
end;

procedure RegistrarClienteBase(var cliente: TClienteBase);
begin
  clrscr;
  write('Ingrese la cédula: ');
  readln(cliente.cedula);

  // Verificar si el cliente ya existe
  if VerificarCliente(cliente.cedula) then
  begin
    writeln('Ya existe un cliente registrado con esta cédula.');
    BuscarCliente(cliente.cedula); // Mostrar los datos del cliente existente
    exit; // Salir del procedimiento para evitar sobrescribir datos
  end;

  // Continuar con el registro si no existe un cliente con la misma cédula
  write('Ingrese su nombre: ');
  readln(cliente.nombre);
  write('Ingrese su apellido: ');
  readln(cliente.apellido);
  write('Ingrese su email: ');
  readln(cliente.email);
  write('Ingrese su teléfono: ');
  readln(cliente.telefono);

  // Solicitar los días de estadía y tipo de habitación
  cliente.dias := LeerEntero('¿Cuántos días desea hospedarse?: ');
  elegirHabitacion(cliente); // Procedimiento para seleccionar habitación

  // Calcular el costo total de la estadía
  cliente.costoTotal := cliente.dias * cliente.costeHabitacion;

  // Guardar el cliente en el archivo
  GuardarClienteBase(cliente);

  writeln('Registro completado exitosamente.');
end;

//procedure RegistrarClienteBase(var cliente: TClienteBase); // Procedimiento para registrar cliente con su Type
//begin
//	clrscr;
//	write('Ingrese la cedula: ');
//    readln(cliente.cedula);
//
//	if VerificarCliente(cliente.cedula) then
//	begin
//	  write('Se ha encontrado un registro previo para este cliente, se omite el registro.');
//	  BuscarCliente(cliente.cedula);
//	end
//	else
//	begin
//	  write('Ingrese su nombre: ');
//      readln(cliente.nombre);
//      write('Ingrese su apellido: ');
//      readln(cliente.apellido);
//      write('Ingrese su email: ');
//      readln(cliente.email);
//	  write('Ingrese su telefono: ');
//      readln(cliente.telefono);
//      cliente.dias:= LeerEntero('¿Cuantos dias desea hospedarse?: ');
//      write('Ingrese el tipo de habitacion: ');
//      elegirHabitacion(cliente);
//      cliente.costoTotal := cliente.dias * cliente.costeHabitacion;
//	end;
//end;

procedure NuevoCliente; // procedimiento que usa los procedimientos ateriores para crear y guardar los clientes con sus acompanantes ademas de ensenar la factura
var
	cliente: TClienteBase;
	acompanante: TAcompanante;
	opcion: integer;
begin
	clrscr;
	writeln('Bienvenido! ');
	writeln;
	writeln('Seleccione el tipo de Reservacion');
    writeln('1. Acompañado');
    writeln('2. Grupo/Familia');
    writeln('3. Individual');
    opcion := obtenerOpcionValida('Seleccione una opción: ',1,3);
	case opcion of
		1:begin
			 RegistrarClienteBase(cliente);
			 GuardarClienteBase(cliente);
			 RegistrarAcompanante(acompanante, cliente.cedula, cliente.nombre);
			 GuardarAcompanante(acompanante);
			 MostrarFacturaConAcompanante(cliente, acompanante);
		  end;
		   
		2:begin
			RegistrarClienteBase(cliente);
			GuardarClienteBase(cliente);
			RegistrarGrupoFamiliar(cliente.cedula,cliente.nombre);
			MostrarFacturaConGrupoFamiliar(cliente);
		  end;

		3:begin
			RegistrarClienteBase(cliente);
			GuardarClienteBase(cliente);
			MostrarFacturaClienteBase(cliente);
		  end;
	end;
	
end;

procedure ActualizarCliente(clienteActualizado: TClienteBase);
var
  archivo: file of TClienteBase;
  cliente: TClienteBase;
  i: integer;
begin
  if not FileExists('ClientesBase.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'ClientesBase.dat');
  Reset(archivo);

  for i := 0 to FileSize(archivo) - 1 do
  begin
    Read(archivo, cliente);
    if cliente.cedula = clienteActualizado.cedula then
    begin
      Seek(archivo, i); 
      Write(archivo, clienteActualizado); 
      writeln('Cliente actualizado exitosamente.');
      break;
    end;
  end;

  Close(archivo);
end;

procedure EliminarCliente(cedula: string);
var
  archivo, tempArchivo: file of TClienteBase;
  cliente: TClienteBase;
begin
  if not FileExists('ClientesBase.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'ClientesBase.dat');
  Assign(tempArchivo, 'Temp.dat');
  
  Reset(archivo);
  Rewrite(tempArchivo);

  while not EOF(archivo) do
  begin
    Read(archivo, cliente);
    if cliente.cedula <> cedula then 
      Write(tempArchivo, cliente); 
  end;

  Close(archivo);
  Close(tempArchivo);

  Erase(archivo); 
  Rename(tempArchivo, 'ClientesBase.dat');
  
  writeln('Cliente eliminado exitosamente.');
end;

procedure BuscarAcompanante(cedula: string);
var
  archivo: file of TAcompanante;
  acompanante: TAcompanante;
  encontrado: boolean;
begin
  encontrado := False;
  if not FileExists('Acompanantes.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'Acompanantes.dat');
  Reset(archivo);

  while not EOF(archivo) do
  begin
    Read(archivo, acompanante);
    if acompanante.cedula = cedula then
    begin
	  MostrarAcompanante(acompanante);
      encontrado := True;
      break;
    end;
  end;

  if not encontrado then
    writeln('Acompañante no encontrado.');

  Close(archivo);
end;

procedure ActualizarAcompanante(acompananteActualizado: TAcompanante);
var
  archivo: file of TAcompanante;
  acompanante: TAcompanante;
  i: integer;
begin
  if not FileExists('Acompanantes.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'Acompanantes.dat');
  Reset(archivo);

  for i := 0 to FileSize(archivo) - 1 do
  begin
    Read(archivo, acompanante);
    if acompanante.cedula = acompananteActualizado.cedula then
    begin
      Seek(archivo, i); 
      Write(archivo, acompananteActualizado); 
      writeln('Acompañante actualizado exitosamente.');
      break;
    end;
  end;

  Close(archivo);
end;

procedure EliminarAcompanante(cedula: string);
var
  archivo, tempArchivo: file of TAcompanante;
  acompanante: TAcompanante;
begin
  if not FileExists('Acompanantes.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'Acompanantes.dat');
  Assign(tempArchivo, 'Temp.dat');
  
  Reset(archivo);
  Rewrite(tempArchivo);

  while not EOF(archivo) do
  begin
    Read(archivo, acompanante);
    if acompanante.cedula <> cedula then 
      Write(tempArchivo, acompanante); 
  end;

  Close(archivo);
  Close(tempArchivo);

  Erase(archivo); 
  Rename(tempArchivo, 'Acompanantes.dat');
  
  writeln('Acompañante eliminado exitosamente.');
end;

procedure BuscarFamiliares(cedulaBase: string);
var
  archivo: file of TGrupoFamiliar;
  familiar: TGrupoFamiliar;
begin
  if not FileExists('GrupoFamiliar.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'GrupoFamiliar.dat');
  Reset(archivo);

  writeln('--- Familiares Asociados al Cliente ---');
  
  while not EOF(archivo) do
  begin
    Read(archivo, familiar);
    if familiar.cedulaBase = cedulaBase then
    begin
      writeln('Nombre del Familiar: ', familiar.nombre);
      writeln('Edad: ', familiar.edad);
      writeln('Tipo (Adulto/Niño): ', familiar.tipo);
      writeln('---');
    end;
  end;

  Close(archivo);
end;

procedure ActualizarFamiliar(familiarActualizado: TGrupoFamiliar);
var
  archivo: file of TGrupoFamiliar;
  familiar: TGrupoFamiliar;
  i: integer;
begin
  if not FileExists('GrupoFamiliar.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'GrupoFamiliar.dat');
  Reset(archivo);

  for i := 0 to FileSize(archivo) - 1 do
  begin
    Read(archivo, familiar);
    if (familiar.cedulaBase = familiarActualizado.cedulaBase) and 
       (familiar.nombre = familiarActualizado.nombre) then 
    begin
      Seek(archivo, i); 
      Write(archivo, familiarActualizado); 
      writeln('Familiar actualizado exitosamente.');
      break;
    end;
  end;

  Close(archivo);
end;

procedure EliminarFamiliar(cedulaCliente: string; nombreFamiliar: string);
var
  archivo, tempArchivo: file of TGrupoFamiliar;
  familiar: TGrupoFamiliar;
begin
  if not FileExists('GrupoFamiliar.dat') then
  begin
    writeln('No se han encontrado registros.');
    exit;
  end;

  Assign(archivo, 'GrupoFamiliar.dat');
  Assign(tempArchivo, 'Temp.dat');

  Reset(archivo);
  Rewrite(tempArchivo);

  while not EOF(archivo) do
  begin
    Read(archivo, familiar);
    if not ((familiar.cedulaBase = cedulaCliente) and (familiar.nombre = nombreFamiliar)) then 
      Write(tempArchivo, familiar); 
   end;

   Close(archivo);
   Close(tempArchivo);

   Erase(archivo); 
   Rename(tempArchivo, 'GrupoFamiliar.dat');

   writeln('Familiar eliminado exitosamente.');
end;

/////////////////////////////////////////////////////////////////////////////////////////////

procedure LeerRegistrosIndividual(nombreArchivo: string); // Leer registros de cliente (todavia falta mejorar toda la parte de lectura de registros)
var
	archivo: file of TClienteBase; 
	cliente: TClienteBase;
begin
	if not FileExists(nombreArchivo) then
		begin
			writeln('No se han encontrado registros en: ', nombreArchivo);
			exit;
		end;

	Assign(archivo, nombreArchivo);
	Reset(archivo);

	writeln('--- Registros en ', nombreArchivo, ' ---');
	while not EOF(archivo) do
		begin
			Read(archivo, cliente);
			MostrarIndividual(cliente);
		end;

	Close(archivo);
end;

procedure ListarAcompanantes(nombreArchivo: string); // leer registros de acompanantes
var
	archivo: file of TAcompanante;
	acompanante: TAcompanante;
begin
	if not FileExists(nombreArchivo) then
		begin
			writeln('No se han encontrado registros en: ', nombreArchivo);
			exit;
		end;

	Assign(archivo, nombreArchivo);
	Reset(archivo);

	writeln('--- Listado de Clientes y sus Acompañantes ---');
	while not EOF(archivo) do
		begin
			Read(archivo, acompanante);
			MostrarAcompanante(acompanante);
		end;
	
	Close(archivo);
end;

procedure ListarGrupoFamiliar(nombreArchivo: string);
var
	archivo: file of TGrupoFamiliar;
	familiar: TGrupoFamiliar;
begin
	if not FileExists(nombreArchivo) then
		begin
		writeln('No se han encontrado registros en: ', nombreArchivo);
		exit;
	end;

	Assign(archivo, nombreArchivo);
	Reset(archivo);

	writeln('--- Listado de Clientes y su Grupo Familiar ---');
	while not EOF(archivo) do
	begin
		Read(archivo, familiar);
		MostrarFamiliar(familiar);
	end;

	Close(archivo);
end;

procedure MostrarRegistros; // procedimiento para mostrar los registros anteriormente hechos
var
	opcion: integer;
begin
	writeln('Seleccione el tipo de registro que desea ver:');
	writeln('1. Individual');
	writeln('2. Acompañado');
	writeln('3. Grupo/Familia');
	write('Opcion: ');
	readln(opcion);

	case opcion of
		1: LeerRegistrosIndividual('ClientesBase.dat');
		2: ListarAcompanantes('Acompanantes.dat');
		3: ListarGrupoFamiliar('GrupoFamiliar.dat');
	else
		writeln('Opcion no válida');
	end;
end;

procedure MostrarMenu; //menu principal
begin
	writeln('========== Hotel Lidotel Boutique Margarita ==========');
	writeln('1. Nuevo Cliente');
	writeln('2. Ver Clientes Registrados');
	writeln('3. Buscar Cliente');
	writeln('4. Modificar Cliente');
	writeln('5. Eliminar Cliente');
	writeln('6. Salir');
	writeln('=====================================================');
end;

/////////////////////////////////////////////////////////////////////////
procedure BuscarRegistro;
var
  subOpcion: integer;
  cedula: string;
begin
  clrscr;
  writeln('--- Buscar Registro ---');
  writeln('1. Cliente Individual');
  writeln('2. Acompañante');
  writeln('3. Grupo/Familiar');
  subOpcion := obtenerOpcionValida('Seleccione una opción: ', 1, 3);

  case subOpcion of
    1: begin
         write('Ingrese la cédula del cliente: ');
         readln(cedula);
         BuscarCliente(cedula);
       end;
    2: begin
         write('Ingrese la cédula del acompañante: ');
         readln(cedula);
         BuscarAcompanante(cedula);
       end;
    3: begin
         write('Ingrese la cédula del cliente base: ');
         readln(cedula);
         BuscarFamiliares(cedula);
       end;
  else
    writeln('Opción no válida.');
  end;
end;

procedure ModificarRegistro;
var
  subOpcion: integer;
  cedula: string;
  clienteActualizado: TClienteBase;
  acompananteActualizado: TAcompanante;
  familiarActualizado: TGrupoFamiliar;
begin
  clrscr;
  writeln('--- Modificar Registro ---');
  writeln('1. Cliente Individual');
  writeln('2. Acompañante');
  writeln('3. Grupo/Familiar');
  subOpcion := obtenerOpcionValida('Seleccione una opción: ', 1, 3);

  case subOpcion of
    1: begin
         write('Ingrese la cédula del cliente a modificar: ');
         readln(cedula);
         BuscarCliente(cedula); // Mostrar datos actuales
         writeln('Ingrese los nuevos datos del cliente.');
         RegistrarClienteBase(clienteActualizado); // Reutilizamos el procedimiento para registrar datos
         clienteActualizado.cedula := cedula; // Mantener la cédula original
         ActualizarCliente(clienteActualizado);
       end;
    2: begin
         write('Ingrese la cédula del acompañante a modificar: ');
         readln(cedula);
         BuscarAcompanante(cedula); // Mostrar datos actuales
         writeln('Ingrese los nuevos datos del acompañante.');
         RegistrarAcompanante(acompananteActualizado, '', ''); // Reutilizamos el procedimiento para registrar datos
         acompananteActualizado.cedula := cedula; // Mantener la cédula original
         ActualizarAcompanante(acompananteActualizado);
       end;
    3: begin
         write('Ingrese la cédula del cliente base y el nombre del familiar a modificar.');
         readln(familiarActualizado.cedulaBase);
         write('Nombre del familiar: ');
         readln(familiarActualizado.nombre);
         BuscarFamiliares(familiarActualizado.cedulaBase); // Mostrar familiares asociados
         writeln('Ingrese los nuevos datos del familiar.');
         RegistrarGrupoFamiliar(familiarActualizado.cedulaBase, familiarActualizado.clienteNombre); // Actualizar datos
       end;
  else
    writeln('Opción no válida.');
  end;
end;

procedure EliminarRegistro;
var
  subOpcion: integer;
  cedula, nombreFamiliar: string;
begin
  clrscr;
  writeln('--- Eliminar Registro ---');
  writeln('1. Cliente Individual');
  writeln('2. Acompañante');
  writeln('3. Grupo/Familiar');
  subOpcion := obtenerOpcionValida('Seleccione una opción: ', 1, 3);

  case subOpcion of
    1: begin
         write('Ingrese la cédula del cliente a eliminar: ');
         readln(cedula);
         EliminarCliente(cedula);
       end;
    2: begin
         write('Ingrese la cédula del acompañante a eliminar: ');
         readln(cedula);
         EliminarAcompanante(cedula);
       end;
    3: begin
         write('Ingrese la cédula del cliente base y el nombre del familiar a eliminar.');
         readln(cedula);
         write('Nombre del familiar: ');
         readln(nombreFamiliar);
         EliminarFamiliar(cedula, nombreFamiliar);
       end;
  else
    writeln('Opción no válida.');
  end;

end;

begin // Codigo general
	repeat
		clrscr;
		MostrarMenu;
		opcion := obtenerOpcionValida('Seleccione una opcion: ', 1, 6);
		case opcion of
			1:begin
				NuevoCliente;
			end;
			2:begin
				MostrarRegistros;
			end;
			3: BuscarRegistro;
			4: ModificarRegistro;
			5: EliminarRegistro;
		end;
			if opcion <> 6 then
				begin
					writeln('Presione Enter para continuar...');
					readln;
				end;
	until opcion = 6;
    writeln('Gracias por utilizar el sistema. Hasta pronto!');
end.
