--
-- File generated with SQLiteStudio v3.3.3 on mié. oct. 5 21:31:48 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: categorias
CREATE TABLE categorias (
    id_categoria          INTEGER       PRIMARY KEY AUTOINCREMENT
                                        NOT NULL,
    nombre_categoria      VARCHAR (50)  NOT NULL,
    descripcion_categoria VARCHAR (100) 
);

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           1,
                           'carros',
                           NULL
                       );

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           2,
                           'camionetas',
                           NULL
                       );

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           3,
                           'pick-ups',
                           NULL
                       );

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           4,
                           'deportivos',
                           NULL
                       );

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           5,
                           'vans',
                           NULL
                       );

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           6,
                           'taxis',
                           NULL
                       );

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           7,
                           'camiones',
                           NULL
                       );

INSERT INTO categorias (
                           id_categoria,
                           nombre_categoria,
                           descripcion_categoria
                       )
                       VALUES (
                           8,
                           'buses',
                           NULL
                       );


-- Table: clientes
CREATE TABLE clientes (
    id_cliente        INTEGER       PRIMARY KEY AUTOINCREMENT
                                    NOT NULL,
    cedula_cliente    INTEGER (50)  NOT NULL
                                    UNIQUE,
    nombre_cliente    VARCHAR (50)  NOT NULL,
    apellidos_cliente VARCHAR       NOT NULL,
    direccion_cliente VARCHAR (100) NOT NULL,
    ciudad_cliente    VARCHAR,
    pais_cliente      VARCHAR,
    telefono_cliente  INT,
    email_cliente     VARCHAR,
    id_tipo_usuario                 REFERENCES tipo_usuarios (id_tipo_usuario) 
);

INSERT INTO clientes (
                         id_cliente,
                         cedula_cliente,
                         nombre_cliente,
                         apellidos_cliente,
                         direccion_cliente,
                         ciudad_cliente,
                         pais_cliente,
                         telefono_cliente,
                         email_cliente,
                         id_tipo_usuario
                     )
                     VALUES (
                         1,
                         6142346,
                         'Rodrigo',
                         'Fernandez Tovar',
                         'AVD . PRINCIPE ASTURIAS 23',
                         'Madrid',
                         'España',
                         958123345,
                         'lazaro.bas@correo.com',
                         3
                     );

INSERT INTO clientes (
                         id_cliente,
                         cedula_cliente,
                         nombre_cliente,
                         apellidos_cliente,
                         direccion_cliente,
                         ciudad_cliente,
                         pais_cliente,
                         telefono_cliente,
                         email_cliente,
                         id_tipo_usuario
                     )
                     VALUES (
                         2,
                         23001002,
                         'Ramón',
                         'Bassol',
                         'cra 45 #34-54',
                         'Cali ',
                         'Colombia',
                         958234234,
                         'ramón.bassol@correo.com',
                         3
                     );

INSERT INTO clientes (
                         id_cliente,
                         cedula_cliente,
                         nombre_cliente,
                         apellidos_cliente,
                         direccion_cliente,
                         ciudad_cliente,
                         pais_cliente,
                         telefono_cliente,
                         email_cliente,
                         id_tipo_usuario
                     )
                     VALUES (
                         3,
                         18232587,
                         'Carola',
                         'Cervantes',
                         'Avenida Colmenares cl34',
                         'D.F Mexico',
                         'Mexico',
                         958631412,
                         'carola.cervantes@correo.com',
                         3
                     );

INSERT INTO clientes (
                         id_cliente,
                         cedula_cliente,
                         nombre_cliente,
                         apellidos_cliente,
                         direccion_cliente,
                         ciudad_cliente,
                         pais_cliente,
                         telefono_cliente,
                         email_cliente,
                         id_tipo_usuario
                     )
                     VALUES (
                         4,
                         74214563,
                         'Roxana',
                         'Barbier Liz',
                         'Boulevar Street 34 Av.',
                         'Florida',
                         'EU',
                         958123345,
                         'roxana.barbier@correo.com',
                         3
                     );

INSERT INTO clientes (
                         id_cliente,
                         cedula_cliente,
                         nombre_cliente,
                         apellidos_cliente,
                         direccion_cliente,
                         ciudad_cliente,
                         pais_cliente,
                         telefono_cliente,
                         email_cliente,
                         id_tipo_usuario
                     )
                     VALUES (
                         5,
                         74001002,
                         'Esperanza',
                         'Arbelaiz Rol',
                         'NQS diagonal 45',
                         'Bogota',
                         'Colombia',
                         958606060,
                         'esperanza.arbelaiz@correo.com',
                         3
                     );


-- Table: empleados
CREATE TABLE empleados (
    id_empleado               INTEGER      PRIMARY KEY AUTOINCREMENT
                                           NOT NULL,
    codigo_empleado           INTEGER (50) NOT NULL
                                           UNIQUE,
    nombre_empleado           VARCHAR (50) NOT NULL,
    apellidos_empleado        VARCHAR      NOT NULL,
    ciudad_empleado           VARCHAR,
    pais_empleado             VARCHAR,
    telefono_empresa_empleado INT,
    email_empresa_empleado    VARCHAR,
    id_tipo_usuario                        REFERENCES tipo_usuarios (id_tipo_usuario) 
);

INSERT INTO empleados (
                          id_empleado,
                          codigo_empleado,
                          nombre_empleado,
                          apellidos_empleado,
                          ciudad_empleado,
                          pais_empleado,
                          telefono_empresa_empleado,
                          email_empresa_empleado,
                          id_tipo_usuario
                      )
                      VALUES (
                          1,
                          2345,
                          'Andrea',
                          'Mendoza',
                          'Cali',
                          'Colombia',
                          '3345678 ext 245',
                          'mendoza.everest@com.co',
                          2
                      );

INSERT INTO empleados (
                          id_empleado,
                          codigo_empleado,
                          nombre_empleado,
                          apellidos_empleado,
                          ciudad_empleado,
                          pais_empleado,
                          telefono_empresa_empleado,
                          email_empresa_empleado,
                          id_tipo_usuario
                      )
                      VALUES (
                          2,
                          2456,
                          'Ivan ',
                          'Paz',
                          'Cali',
                          'Colombia',
                          '3345678 ext 246',
                          'paz.everest@com.co',
                          2
                      );

INSERT INTO empleados (
                          id_empleado,
                          codigo_empleado,
                          nombre_empleado,
                          apellidos_empleado,
                          ciudad_empleado,
                          pais_empleado,
                          telefono_empresa_empleado,
                          email_empresa_empleado,
                          id_tipo_usuario
                      )
                      VALUES (
                          3,
                          2340,
                          'Isabella',
                          'Gallego',
                          'Cali',
                          'Colombia',
                          '3345678 ext 247',
                          'gallego.everest@com.co',
                          2
                      );


-- Table: envio_vehiculo
CREATE TABLE envio_vehiculo (
    id_envio_transporte   INTEGER  PRIMARY KEY AUTOINCREMENT
                                   NOT NULL,
    fecha_registro_envio  DATETIME NOT NULL,
    nombre_transportadora VARCHAR  NOT NULL,
    costo_transporte      DOUBLE   NOT NULL,
    tiempod_envio         TIME     NOT NULL,
    fechad_entrega        DATETIME NOT NULL,
    direccion_envio       VARCHAR  NOT NULL,
    ciudad_envio          VARCHAR  NOT NULL,
    pais_envio            VARCHAR,
    codigo_postal_envio   VARCHAR,
    estado_envio          VARCHAR
);

INSERT INTO envio_vehiculo (
                               id_envio_transporte,
                               fecha_registro_envio,
                               nombre_transportadora,
                               costo_transporte,
                               tiempod_envio,
                               fechad_entrega,
                               direccion_envio,
                               ciudad_envio,
                               pais_envio,
                               codigo_postal_envio,
                               estado_envio
                           )
                           VALUES (
                               1,
                               '23/08/2022',
                               'DEPRISA S.A',
                               '1,500,00',
                               3,
                               '23/09/2022',
                               'CRA 14 # 34-345',
                               'cali',
                               'Colombia',
                               '07456',
                               'En progreso'
                           );


-- Table: facturad_compra
CREATE TABLE facturad_compra (
    id_facturad_compra        INTEGER  PRIMARY KEY AUTOINCREMENT
                                       UNIQUE
                                       NOT NULL,
    fecha_compra              DATETIME NOT NULL,
    precio_vehiculo_compra    DOUBLE   NOT NULL,
    precio_accesorios_compra  DOUBLE,
    descuentos_compra         DOUBLE,
    costos_tributarios_compra DOUBLE,
    aplica_financiacion       INTEGER,
    total_compra              DOUBLE,
    medio_pago_usado_compra   VARCHAR  NOT NULL,
    id_cliente                         REFERENCES clientes (id_cliente),
    id_empleado                        REFERENCES empleados (id_empleado),
    id_envio_transporte                REFERENCES envio_vehiculo (id_envio_transporte),
    id_proveedor                       REFERENCES proveedor (id_proveedor) 
);

INSERT INTO facturad_compra (
                                id_facturad_compra,
                                fecha_compra,
                                precio_vehiculo_compra,
                                precio_accesorios_compra,
                                descuentos_compra,
                                costos_tributarios_compra,
                                aplica_financiacion,
                                total_compra,
                                medio_pago_usado_compra,
                                id_cliente,
                                id_empleado,
                                id_envio_transporte,
                                id_proveedor
                            )
                            VALUES (
                                123,
                                '23/08/2022',
                                '85,000,000',
                                '250,000',
                                0.0,
                                '2,500,000',
                                1,
                                '92,000,000',
                                'efectivo',
                                2,
                                2,
                                NULL,
                                1
                            );


-- Table: lista_facturasd_ventas
CREATE TABLE lista_facturasd_ventas (
    id_facturasd_ventas  INTEGER PRIMARY KEY AUTOINCREMENT
                                 NOT NULL,
    valor_ventas_totales DOUBLE,
    id_facturad_compra           REFERENCES facturad_compra (id_facturad_compra) 
);


-- Table: proveedor
CREATE TABLE proveedor (
    id_proveedor            INTEGER      PRIMARY KEY AUTOINCREMENT
                                         NOT NULL,
    compañia_proveedor      VARCHAR (50),
    representante_proveedor VARCHAR,
    ciudad_proveedor        VARCHAR,
    pais_proveedor          VARCHAR,
    email_proveedor         VARCHAR
);

INSERT INTO proveedor (
                          id_proveedor,
                          compañia_proveedor,
                          representante_proveedor,
                          ciudad_proveedor,
                          pais_proveedor,
                          email_proveedor
                      )
                      VALUES (
                          1,
                          'CHEVROLET',
                          'Camilo saas',
                          'paris',
                          'Francia',
                          'director.ventas@chevrolet.com'
                      );

INSERT INTO proveedor (
                          id_proveedor,
                          compañia_proveedor,
                          representante_proveedor,
                          ciudad_proveedor,
                          pais_proveedor,
                          email_proveedor
                      )
                      VALUES (
                          2,
                          'MAZDA',
                          'Andrea pascal',
                          'sevilla',
                          'España',
                          'director.ventas@mazda.com'
                      );


-- Table: solicitudes_pre_compras
CREATE TABLE solicitudes_pre_compras (
    id_solicitud_precompras           INTEGER  PRIMARY KEY AUTOINCREMENT
                                               NOT NULL,
    fecha_solicitud                   DATETIME NOT NULL,
    concesionario_nombre_solicitud    VARCHAR  NOT NULL,
    concesionario_direccion_solicitud VARCHAR,
    ciudad_solicitud                  VARCHAR,
    pais_solicitud                             NOT NULL,
    escriba_id_vehiculo_comprar       INTEGER  UNIQUE
                                               NOT NULL,
    id_cliente                                 REFERENCES clientes (id_cliente) 
);

INSERT INTO solicitudes_pre_compras (
                                        id_solicitud_precompras,
                                        fecha_solicitud,
                                        concesionario_nombre_solicitud,
                                        concesionario_direccion_solicitud,
                                        ciudad_solicitud,
                                        pais_solicitud,
                                        escriba_id_vehiculo_comprar,
                                        id_cliente
                                    )
                                    VALUES (
                                        1,
                                        '22/10/2021',
                                        'CARROYA',
                                        'Cra 23 # 123-a23 ',
                                        'bogotá',
                                        'Colombia',
                                        1,
                                        5
                                    );


-- Table: tipo_usuarios
CREATE TABLE tipo_usuarios (
    id_tipo_usuario INTEGER      PRIMARY KEY AUTOINCREMENT
                                 NOT NULL,
    usuario_tipo    VARCHAR (50) NOT NULL
);

INSERT INTO tipo_usuarios (
                              id_tipo_usuario,
                              usuario_tipo
                          )
                          VALUES (
                              1,
                              'administrador'
                          );

INSERT INTO tipo_usuarios (
                              id_tipo_usuario,
                              usuario_tipo
                          )
                          VALUES (
                              2,
                              'empleado'
                          );

INSERT INTO tipo_usuarios (
                              id_tipo_usuario,
                              usuario_tipo
                          )
                          VALUES (
                              3,
                              'cliente'
                          );


-- Table: vehiculos
CREATE TABLE vehiculos (
    id_vehiculo                    INTEGER      PRIMARY KEY AUTOINCREMENT
                                                NOT NULL
                                                UNIQUE,
    marca_vehiculo                 VARCHAR (50) NOT NULL,
    modelo_vehiculo                VARCHAR (50),
    year_vehiculo                  DATE         NOT NULL,
    color_vehiculo                 VARCHAR (50) NOT NULL,
    kilometros_recorridos_vehiculo DOUBLE,
    precio_vehiculo                DOUBLE       NOT NULL,
    es_nacional_vehiculo           INT          NOT NULL,
    descripcion_vehiculo           TEXT,
    id_categoria                                REFERENCES categorias (id_categoria) 
);

INSERT INTO vehiculos (
                          id_vehiculo,
                          marca_vehiculo,
                          modelo_vehiculo,
                          year_vehiculo,
                          color_vehiculo,
                          kilometros_recorridos_vehiculo,
                          precio_vehiculo,
                          es_nacional_vehiculo,
                          descripcion_vehiculo,
                          id_categoria
                      )
                      VALUES (
                          1,
                          'KIA',
                          'Rio Sedan Vibrant 1.4',
                          2023,
                          'azul',
                          0.0,
                          '82.190.000',
                          1,
                          'CARROCERÍA: Sedán.
LUGAR DE ENSAMBLAJE: México.
GARANTÍA: 7 años o 150.000 km.
TIPO DE CAJA: Automática.
COMBUSTIBLE:Gasolina.
CILINDRAJE:1.368.
PUERTAS: 5.',
                          1
                      );

INSERT INTO vehiculos (
                          id_vehiculo,
                          marca_vehiculo,
                          modelo_vehiculo,
                          year_vehiculo,
                          color_vehiculo,
                          kilometros_recorridos_vehiculo,
                          precio_vehiculo,
                          es_nacional_vehiculo,
                          descripcion_vehiculo,
                          id_categoria
                      )
                      VALUES (
                          2,
                          'VOLKSWAGEN',
                          'Jetta TSI 1.4 Sportline',
                          2019,
                          'gris',
                          0.0,
                          '95.900.000',
                          0,
                          'CARROCERÍA: Sedán.
LUGAR DE ENSAMBLAJE: Argentina.
GARANTÍA: 7 años o 150.000 km.
TIPO DE CAJA: Automática.
COMBUSTIBLE:Gasolina.
CILINDRAJE:1.400.
PUERTAS: 4.',
                          5
                      );

INSERT INTO vehiculos (
                          id_vehiculo,
                          marca_vehiculo,
                          modelo_vehiculo,
                          year_vehiculo,
                          color_vehiculo,
                          kilometros_recorridos_vehiculo,
                          precio_vehiculo,
                          es_nacional_vehiculo,
                          descripcion_vehiculo,
                          id_categoria
                      )
                      VALUES (
                          3,
                          'OPEL',
                          'Crossland
Elegance 1.2 Suv',
                          2022,
                          'blanco',
                          0.0,
                          '95.900.000',
                          1,
                          'CARROCERÍA: SUV.
LUGAR DE ENSAMBLAJE: Colombia.
GARANTÍA: 7 años o 150.000 km.
TIPO DE CAJA: Automática.
COMBUSTIBLE:Gasolina.
CILINDRAJE:1.200.
PUERTAS: 4.',
                          6
                      );

INSERT INTO vehiculos (
                          id_vehiculo,
                          marca_vehiculo,
                          modelo_vehiculo,
                          year_vehiculo,
                          color_vehiculo,
                          kilometros_recorridos_vehiculo,
                          precio_vehiculo,
                          es_nacional_vehiculo,
                          descripcion_vehiculo,
                          id_categoria
                      )
                      VALUES (
                          4,
                          'MAZDA',
                          '2 - 1.5 hatchback Carbon Edition',
                          2023,
                          'rojo',
                          0.0,
                          '81.500.000',
                          0,
                          'CARROCERÍA: HATCHBACK.
LUGAR DE ENSAMBLAJE: Colombia.
GARANTÍA: 7 años o 150.000 km.
TIPO DE CAJA: Automática.
COMBUSTIBLE:Gasolina.
CILINDRAJE:1.296.
PUERTAS: 4.',
                          7
                      );

INSERT INTO vehiculos (
                          id_vehiculo,
                          marca_vehiculo,
                          modelo_vehiculo,
                          year_vehiculo,
                          color_vehiculo,
                          kilometros_recorridos_vehiculo,
                          precio_vehiculo,
                          es_nacional_vehiculo,
                          descripcion_vehiculo,
                          id_categoria
                      )
                      VALUES (
                          5,
                          'NISSAN',
                          'Qashqai
2.0 ',
                          2017,
                          'negro',
                          1.0,
                          '86.000.000',
                          1,
                          'CARROCERÍA: SEDAN.
LUGAR DE ENSAMBLAJE: México.
GARANTÍA: 7 años o 150.000 km.
TIPO DE CAJA: Mecánica.
COMBUSTIBLE:Gasolina.
CILINDRAJE:2.000.
PUERTAS: 4.',
                          2
                      );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
