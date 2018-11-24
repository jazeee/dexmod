.class public final enum Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;
.super Ljava/lang/Enum;
.source "TechSupportLogSubtype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum AlertReceived_BackgroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum AlertReceived_ForegroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum AppLifeCycle_AppInstalled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum AppLifeCycle_AppLaunched:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum AppLifeCycle_AppMinimized:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum AppLifeCycle_AppOpened:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum BatteryState_Charging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum BatteryState_Discharging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum BluetoothEvent_Off:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum BluetoothEvent_On:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum CircleStateLog_ErrorCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum CircleStateLog_PairingCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum CircleStateLog_WarmUpCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum Device_Info:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DiskSpaceLow_Critical:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DiskSpaceLow_Low:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DisplayingAlert_AlertDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DisplayingAlert_AlertShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DisplayingAlert_PopUpDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DisplayingAlert_PopUpShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DisplayingScreen_Appearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum DisplayingScreen_Disppearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum Eula_AgreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum Eula_DisagreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum Extension_QuickGlanceNotification:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum InteractionType_ScreenOff:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum InteractionType_ScreenOn:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum InteractionType_UserPresent:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum SQLiteError_Fatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum SQLiteError_NonFatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum TransmitterEvent_TxRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum TransmitterEvent_TxStaticInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum UpdatingScreen_TrendView:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

.field public static final enum WatchRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;


# instance fields
.field private m_displayString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "EmptySubtype"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "Device_Info"

    const-string v2, "Device Info"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Device_Info:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "WatchRuntimeInfo"

    const-string v2, "Watch RuntimeInfo"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->WatchRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "CircleStateLog_ErrorCircle"

    const-string v2, "Error Circle"

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->CircleStateLog_ErrorCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "CircleStateLog_WarmUpCircle"

    const-string v2, "Warmup Circle"

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->CircleStateLog_WarmUpCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "CircleStateLog_PairingCircle"

    const/4 v2, 0x5

    const-string v3, "Pairing Circle"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->CircleStateLog_PairingCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DisplayingAlert_PopUpShowing"

    const/4 v2, 0x6

    const-string v3, "PopUpAppearing"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_PopUpShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DisplayingAlert_AlertShowing"

    const/4 v2, 0x7

    const-string v3, "AlertDialogAppearing"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_AlertShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DisplayingAlert_PopUpDisappearing"

    const/16 v2, 0x8

    const-string v3, "PopupDisappearing"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_PopUpDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DisplayingAlert_AlertDisappearing"

    const/16 v2, 0x9

    const-string v3, "AlertDisappearing"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_AlertDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "UpdatingScreen_TrendView"

    const/16 v2, 0xa

    const-string v3, "UpdatingTrendView"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->UpdatingScreen_TrendView:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "Extension_QuickGlanceNotification"

    const/16 v2, 0xb

    const-string v3, "QuickGlanceNotification"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Extension_QuickGlanceNotification:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "BatteryState_Charging"

    const/16 v2, 0xc

    const-string v3, "Charging"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BatteryState_Charging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "BatteryState_Discharging"

    const/16 v2, 0xd

    const-string v3, "Discharging"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BatteryState_Discharging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "AlertReceived_ForegroundAlert"

    const/16 v2, 0xe

    const-string v3, "ForegroundAlert"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_ForegroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "AlertReceived_BackgroundAlert"

    const/16 v2, 0xf

    const-string v3, "BackgroundAlert"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_BackgroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "BluetoothEvent_On"

    const/16 v2, 0x10

    const-string v3, "BluetoothOn"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BluetoothEvent_On:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "BluetoothEvent_Off"

    const/16 v2, 0x11

    const-string v3, "BluetoothOff"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BluetoothEvent_Off:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "Eula_AgreedToEula"

    const/16 v2, 0x12

    const-string v3, "AgreedToEula"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Eula_AgreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "Eula_DisagreedToEula"

    const/16 v2, 0x13

    const-string v3, "DisagreedToEula"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Eula_DisagreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "TransmitterEvent_TxRuntimeInfo"

    const/16 v2, 0x14

    const-string v3, "TxRuntimeInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->TransmitterEvent_TxRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "TransmitterEvent_TxStaticInfo"

    const/16 v2, 0x15

    const-string v3, "TxStaticInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->TransmitterEvent_TxStaticInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "SQLiteError_Fatal"

    const/16 v2, 0x16

    const-string v3, "Fatal"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->SQLiteError_Fatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "SQLiteError_NonFatal"

    const/16 v2, 0x17

    const-string v3, "NonFatal"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->SQLiteError_NonFatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DiskSpaceLow_Critical"

    const/16 v2, 0x18

    const-string v3, "Critical"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DiskSpaceLow_Critical:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 49
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DiskSpaceLow_Low"

    const/16 v2, 0x19

    const-string v3, "Low"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DiskSpaceLow_Low:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 51
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DisplayingScreen_Appearing"

    const/16 v2, 0x1a

    const-string v3, "Appearing"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingScreen_Appearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 52
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "DisplayingScreen_Disppearing"

    const/16 v2, 0x1b

    const-string v3, "Disappearing"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingScreen_Disppearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 54
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "InteractionType_ScreenOn"

    const/16 v2, 0x1c

    const-string v3, "ScreenOn"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_ScreenOn:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 55
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "InteractionType_ScreenOff"

    const/16 v2, 0x1d

    const-string v3, "ScreenOff"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_ScreenOff:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 56
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "InteractionType_UserPresent"

    const/16 v2, 0x1e

    const-string v3, "UserPresent"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_UserPresent:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 58
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "AppLifeCycle_AppInstalled"

    const/16 v2, 0x1f

    const-string v3, "AppInstalled"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppInstalled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 59
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "AppLifeCycle_AppLaunched"

    const/16 v2, 0x20

    const-string v3, "AppLaunched"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppLaunched:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 60
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "AppLifeCycle_AppMinimized"

    const/16 v2, 0x21

    const-string v3, "AppMinimized"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppMinimized:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 61
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    const-string v1, "AppLifeCycle_AppOpened"

    const/16 v2, 0x22

    const-string v3, "AppOpened"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppOpened:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 10
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Device_Info:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->WatchRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->CircleStateLog_ErrorCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->CircleStateLog_WarmUpCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->CircleStateLog_PairingCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_PopUpShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_AlertShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_PopUpDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_AlertDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->UpdatingScreen_TrendView:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Extension_QuickGlanceNotification:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BatteryState_Charging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BatteryState_Discharging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_ForegroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_BackgroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BluetoothEvent_On:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BluetoothEvent_Off:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Eula_AgreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Eula_DisagreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->TransmitterEvent_TxRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->TransmitterEvent_TxStaticInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->SQLiteError_Fatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->SQLiteError_NonFatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DiskSpaceLow_Critical:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DiskSpaceLow_Low:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingScreen_Appearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingScreen_Disppearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_ScreenOn:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_ScreenOff:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_UserPresent:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppInstalled:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppLaunched:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppMinimized:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppOpened:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->m_displayString:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->m_displayString:Ljava/lang/String;

    return-object v0
.end method
