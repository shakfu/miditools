cmake_minimum_required(VERSION 3.15)

project(RECEIVEMIDI VERSION 1.3.1)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

juce_add_console_app(receivemidi
    PRODUCT_NAME "sendmidi")

juce_generate_juce_header(receivemidi)

target_sources(receivemidi
    PRIVATE
        Source/Main.cpp
        Source/MidiRPN.cpp
        Source/ScriptMidiMessageClass.cpp
        Source/ScriptOscClass.cpp
        Source/ScriptUtilClass.cpp
)
         
target_compile_definitions(receivemidi
    PRIVATE
        JUCE_WEB_BROWSER=0
        JUCE_USE_CURL=0)

target_link_libraries(receivemidi
    PRIVATE
        juce::juce_core
        juce::juce_events
        juce::juce_data_structures
        juce::juce_audio_basics
        juce::juce_audio_devices
        juce::juce_osc
    PUBLIC
        juce::juce_recommended_config_flags
        juce::juce_recommended_warning_flags
        $<$<BOOL:${CMAKE_HOST_LINUX}>:"-latomic">
)

