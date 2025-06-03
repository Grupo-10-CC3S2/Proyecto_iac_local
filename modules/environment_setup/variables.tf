variable "base_path" {
  description = "Ruta base para el entorno."
  type        = string
}

variable "nombre_entorno_modulo" {
  description = "Nombre del entorno para este módulo."
  type        = string
}

variable "setup_version" {
  description = "Versión del setup inicial"
  type = string
  default = "v0" // Cambiar este valor por defecto para forzar la re-ejecucion en el recurso "ejecutar_setup_inicial"
}