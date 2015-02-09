LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
				   ../../Classes/Layers/AnimationLayer.cpp \
				   ../../Classes/Layers/BaseLayer.cpp \
				   ../../Classes/Scenes/CombatScene.cpp \
				   ../../Classes/Scenes/HeroScene.cpp \
				   ../../Classes/Layers/HUDLayer.cpp \
                   ../../Classes/Scenes/LoadingScene.cpp \
				   ../../Classes/Scenes/MainScene.cpp \
				   ../../Classes/Scenes/StoreScene.cpp \
				   ../../Classes/Layers/UILayer.cpp 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_STATIC_LIBRARIES := cocos2dx_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)