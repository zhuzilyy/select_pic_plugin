#ifndef FLUTTER_PLUGIN_UNTITLED2_PLUGIN_H_
#define FLUTTER_PLUGIN_UNTITLED2_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace untitled2 {

class Untitled2Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  Untitled2Plugin();

  virtual ~Untitled2Plugin();

  // Disallow copy and assign.
  Untitled2Plugin(const Untitled2Plugin&) = delete;
  Untitled2Plugin& operator=(const Untitled2Plugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace untitled2

#endif  // FLUTTER_PLUGIN_UNTITLED2_PLUGIN_H_
