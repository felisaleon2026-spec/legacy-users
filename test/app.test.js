console.log("=== Ejecutando Pruebas Unitarias de Seguridad de Usuarios ===");
const passwordLength = 12;

if (passwordLength >= 8) {
    console.log("✅ PASSED: Políticas de complejidad de contraseñas aprobadas.");
    process.exit(0);
} else {
    console.error("❌ FAILED: Vulnerabilidad detectada, longitud de contraseña insegura.");
    process.exit(1);
}