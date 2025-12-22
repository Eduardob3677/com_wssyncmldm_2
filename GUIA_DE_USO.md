# Implementación del Menú de Sobrescritura de Valores del Dispositivo

## Descripción General
Esta implementación añade un menú a la aplicación que permite cambiar los valores del dispositivo (IMEI, MEID, Fabricante, Idioma) para usar valores simulados en lugar de los valores reales del dispositivo.

## Cómo Usar

### Acceder al Menú
1. Abre la aplicación
2. Navega al "Admin Main Activity" (Actividad Principal de Administración)
3. Selecciona "Device Override Settings" (Configuración de Sobrescritura de Dispositivo)

### Configurar Valores Simulados
1. Activa el interruptor "Enable Device Override" (Activar Sobrescritura de Dispositivo)
2. Ingresa los valores simulados que deseas usar:
   - **Override IMEI**: Ingresa un IMEI simulado (deja vacío para usar el real)
   - **Override MEID**: Ingresa un MEID simulado (deja vacío para usar el real)
   - **Override Manufacturer**: Ingresa un fabricante simulado (deja vacío para usar el real)
   - **Override Language**: Ingresa un idioma simulado (por ejemplo, "es-ES", deja vacío para usar el real)
3. Los valores se guardan automáticamente

### Verificar los Valores
1. Navega a "Device Status" (Estado del Dispositivo) en el menú de administración
2. Verifica que los valores simulados se muestren en lugar de los valores reales del dispositivo
3. Para volver a los valores reales, desactiva el interruptor "Enable Device Override"

## Características

### Valores que se Pueden Sobrescribir
- **IMEI**: Identificador Internacional de Equipo Móvil
- **MEID**: Identificador de Equipo Móvil (para dispositivos CDMA)
- **Fabricante**: Nombre del fabricante del dispositivo
- **Idioma**: Configuración de idioma del dispositivo (formato: idioma-PAÍS, ej: "en-US", "es-ES")

### Almacenamiento de Datos
Todos los valores se almacenan de forma segura en SharedPreferences con la clave "device_override_prefs".

## Comportamiento Técnico

### Cuando la Sobrescritura está Activada
- La aplicación verifica primero si hay valores simulados configurados
- Si existe un valor simulado, lo utiliza en lugar del valor real
- Si no existe un valor simulado, utiliza el valor real del dispositivo

### Cuando la Sobrescritura está Desactivada
- La aplicación ignora los valores simulados configurados
- Siempre utiliza los valores reales del dispositivo

## Archivos Modificados

### Archivos de Recursos
- `res/values/strings.xml` - Nuevas cadenas de texto
- `res/xml/admin_main.xml` - Nuevo elemento de menú
- `res/xml/device_override_settings.xml` - Nueva pantalla de preferencias

### Código Fuente
- `DeviceOverrideFragment` - Nuevo fragmento para la interfaz de usuario
- `DeviceOverrideHelper` - Nueva clase auxiliar para gestionar los valores
- `IDMDeviceInfoAdapter` - Modificado para usar valores simulados cuando están disponibles

## Nota sobre la Recompilación

El APK puede requerir pasos adicionales para recompilarse debido a problemas preexistentes en el APK descompilado original (archivos de recursos con nombres inválidos). Consulte el archivo `IMPLEMENTATION_SUMMARY.md` para más detalles técnicos.
