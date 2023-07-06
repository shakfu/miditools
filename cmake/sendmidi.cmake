cmake_minimum_required(VERSION 3.15)

project(SENDMIDI VERSION 0.0.1)

juce_add_console_app(sendmidi
    PRODUCT_NAME "sendmidi")

juce_generate_juce_header(sendmidi)

target_sources(sendmidi
    PRIVATE
        Source/Main.cpp)

target_compile_definitions(sendmidi
    PRIVATE
        JUCE_WEB_BROWSER=0
        JUCE_USE_CURL=0)

target_link_libraries(sendmidi
    PRIVATE
        juce::juce_core
        juce::juce_events
        juce::juce_data_structures
        juce::juce_audio_basics
        juce::juce_audio_devices
    PUBLIC
        juce::juce_recommended_config_flags
        juce::juce_recommended_warning_flags
        # "-latomic"
)

