//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <untitled2/untitled2_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) untitled2_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "Untitled2Plugin");
  untitled2_plugin_register_with_registrar(untitled2_registrar);
}
