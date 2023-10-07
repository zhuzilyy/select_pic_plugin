#include "include/untitled2/untitled2_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "untitled2_plugin.h"

void Untitled2PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  untitled2::Untitled2Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
