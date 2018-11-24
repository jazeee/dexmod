.class public Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;
.super Ljava/lang/Object;
.source "TechSupportLogger.java"


# static fields
.field private static final ALERT_PREFIX:Ljava/lang/String; = "Alert: "

.field private static final CALIBRATION_BADGE:Ljava/lang/String; = "CalibrationBadge"

.field private static final PHONE_MUTED:Ljava/lang/String; = "PhoneMuted"

.field private static final POPUP_PREFIX:Ljava/lang/String; = "Popup: "

.field private static m_dal:Lcom/dexcom/cgm/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getListOfIndicatorsForCircleUpdate(ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    if-eqz p0, :cond_0

    .line 292
    const-string v1, "CalibrationBadge"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    return-object v0
.end method

.method private static getTechSupportSubtypeFromInteractionType(Lcom/dexcom/cgm/model/enums/InteractionType;)Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;
    .locals 3

    .prologue
    .line 473
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 474
    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$1;->$SwitchMap$com$dexcom$cgm$model$enums$InteractionType:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/InteractionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 486
    :goto_0
    return-object v0

    .line 477
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_ScreenOn:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0

    .line 480
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_ScreenOff:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0

    .line 483
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->InteractionType_UserPresent:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static initialize(Lcom/dexcom/cgm/d/a;)V
    .locals 0

    .prologue
    .line 69
    sput-object p0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 70
    return-void
.end method

.method private static log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p2}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private static log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    new-instance v0, Lcom/dexcom/cgm/model/TechSupportLogRecord;

    invoke-virtual {p1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/dexcom/cgm/model/TechSupportLogRecord;-><init>(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeTechSupportLog(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V

    .line 104
    return-void

    .line 96
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received an invalid JSON string. The type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and the subtype is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The invalid JSON is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static logAlertAcknowledged(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 3

    .prologue
    .line 387
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertAcknowledged:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v2, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertAcknowledgedJSON;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertAcknowledgedJSON;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 389
    return-void
.end method

.method public static logAlertCancelled(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 3

    .prologue
    .line 396
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertCleared:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v2, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertClearedJSON;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertClearedJSON;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 397
    return-void
.end method

.method public static logAlertDialogAppearing(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alert: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->trimDialogsTextIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingAlert:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_AlertShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v3, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;

    invoke-direct {v3, v0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 156
    return-void
.end method

.method public static logAlertDialogDisappearing(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alert: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->trimDialogsTextIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;

    invoke-direct {v1, v0, p1, p2}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;-><init>(Ljava/lang/String;J)V

    .line 181
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingAlert:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_AlertDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v0, v2, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 184
    return-void
.end method

.method public static logAlertFailed(Lcom/dexcom/cgm/h/a/a/a;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZLcom/dexcom/cgm/model/enums/AlertSoundFailureType;)V
    .locals 10

    .prologue
    .line 378
    if-eqz p6, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_ForegroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    move-object v8, v0

    .line 382
    :goto_0
    sget-object v9, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertFailed:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertFailedJSON;-><init>(Lcom/dexcom/cgm/h/a/a/a;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;)V

    invoke-static {v9, v8, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 384
    return-void

    .line 378
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_BackgroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    move-object v8, v0

    goto :goto_0
.end method

.method public static logAlertReceived(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZZ)V
    .locals 10

    .prologue
    .line 361
    if-eqz p6, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_ForegroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    move-object v8, v0

    .line 365
    :goto_0
    sget-object v9, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertReceived:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/AlertReceivedJSON;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;Z)V

    invoke-static {v9, v8, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 367
    return-void

    .line 361
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AlertReceived_BackgroundAlert:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    move-object v8, v0

    goto :goto_0
.end method

.method public static logAppLaunched(Lcom/dexcom/cgm/model/PhoneInformation;)V
    .locals 3

    .prologue
    .line 301
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 302
    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->AppLifeCycle_AppLaunched:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 304
    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->OS:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-static {v2, v1, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static logBatteryLevel(ZI)V
    .locals 3

    .prologue
    .line 344
    if-eqz p0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BatteryState_Charging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 348
    :goto_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->OS:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    new-instance v2, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BatteryStatusJSON;

    invoke-direct {v2, p0, p1}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BatteryStatusJSON;-><init>(ZI)V

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 349
    return-void

    .line 344
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BatteryState_Discharging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0
.end method

.method public static logBluetoothToggle(Z)V
    .locals 3

    .prologue
    .line 414
    if-eqz p0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BluetoothEvent_On:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 417
    :goto_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->BluetoothEvent:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 418
    return-void

    .line 414
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->BluetoothEvent_Off:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0
.end method

.method public static logButtonTap(Lcom/dexcom/cgm/g/b;)V
    .locals 3

    .prologue
    .line 205
    invoke-interface {p0}, Lcom/dexcom/cgm/g/b;->getDisplayNameForLogger()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ButtonTextJSON;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ButtonTextJSON;-><init>(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->ButtonTapped:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v0, v2, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 209
    return-void
.end method

.method public static logDeviceInfo(Lcom/dexcom/cgm/model/PhoneInformation;)V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Device_Info:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 312
    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->OS:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-static {v2, v1, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public static logDialogAppearing(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Popup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->trimDialogsTextIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingAlert:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_PopUpShowing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v3, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;

    invoke-direct {v3, v0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogAppearingJSON;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 147
    return-void
.end method

.method public static logDialogDisappearing(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Popup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->trimDialogsTextIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;

    invoke-direct {v1, v0, p1, p2}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/DialogDisappearingJSON;-><init>(Ljava/lang/String;J)V

    .line 167
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingAlert:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingAlert_PopUpDisappearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v0, v2, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 170
    return-void
.end method

.method public static logDiskSpaceLow(Z)V
    .locals 3

    .prologue
    .line 432
    if-eqz p0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DiskSpaceLow_Critical:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 435
    :goto_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DiskSpaceLow:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 436
    return-void

    .line 432
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DiskSpaceLow_Low:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0
.end method

.method public static logEGVCircleUpdate(Lcom/dexcom/cgm/h/a/b;ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)V
    .locals 4

    .prologue
    .line 241
    invoke-static {p1, p2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->getListOfIndicatorsForCircleUpdate(ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)Ljava/util/List;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->UpdatingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->UpdatingScreen_TrendView:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v3, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;

    invoke-direct {v3, p0, v0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/EGVCircleUpdateJSON;-><init>(Lcom/dexcom/cgm/h/a/b;Ljava/util/List;)V

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 247
    return-void
.end method

.method public static logEULAAcceptOrDecline(Z)V
    .locals 3

    .prologue
    .line 424
    if-eqz p0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Eula_AgreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 427
    :goto_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Eula:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 428
    return-void

    .line 424
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Eula_DisagreedToEula:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0
.end method

.method public static logInteraction(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/model/enums/InteractionType;)V
    .locals 2

    .prologue
    .line 491
    invoke-static {p1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->getTechSupportSubtypeFromInteractionType(Lcom/dexcom/cgm/model/enums/InteractionType;)Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public static logMemoryLevel(I)V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/LowMemoryJSON;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/LowMemoryJSON;-><init>(I)V

    .line 214
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->LowMemory:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 215
    return-void
.end method

.method public static logQuickGlanceNotificationUpdate(Lcom/dexcom/cgm/h/a/b;)V
    .locals 3

    .prologue
    .line 251
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Extension:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->Extension_QuickGlanceNotification:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v2, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/QuickGlanceUpdateJSON;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/QuickGlanceUpdateJSON;-><init>(Lcom/dexcom/cgm/h/a/b;)V

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 254
    return-void
.end method

.method public static logSQLError(Z)V
    .locals 3

    .prologue
    .line 441
    if-eqz p0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->SQLiteError_Fatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 444
    :goto_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->SQLiteError:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 445
    return-void

    .line 441
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->SQLiteError_NonFatal:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    goto :goto_0
.end method

.method public static logScreenAppearing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingScreen_Appearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v2, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenAppearingJSON;

    invoke-direct {v2, p0, p1}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenAppearingJSON;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 120
    return-void
.end method

.method public static logScreenDisappearing(Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/k;)V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;

    .line 131
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/ScreenDisappearingJSON;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->DisplayingScreen_Disppearing:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 136
    return-void
.end method

.method public static logStateCheckInformation(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->StateCheck:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v2, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/StateCheckJSON;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/StateCheckJSON;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 227
    return-void
.end method

.method public static logTextualCircleUpdate(Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;Ljava/lang/String;ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)V
    .locals 4

    .prologue
    .line 274
    invoke-static {p2, p3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->getListOfIndicatorsForCircleUpdate(ZLcom/dexcom/cgm/tech_support_logger/TechSupportLogger$ShareStateType;)Ljava/util/List;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->UpdatingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->UpdatingScreen_TrendView:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    new-instance v3, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TextualCircleUpdateJSON;

    invoke-direct {v3, p0, p1, v0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TextualCircleUpdateJSON;-><init>(Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 280
    return-void
.end method

.method public static logTxRuntimeInfo(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord;->isDetailsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/BluetoothDeviceJSON;-><init>(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Ljava/lang/String;)V

    .line 465
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Transmitter:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->TransmitterEvent_TxRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 469
    :cond_0
    return-void
.end method

.method public static logTxStaticInfo(Lcom/dexcom/cgm/model/TransmitterInfo;)V
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;-><init>(Lcom/dexcom/cgm/model/TransmitterInfo;)V

    .line 453
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Transmitter:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->TransmitterEvent_TxStaticInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 457
    :cond_0
    return-void
.end method

.method public static logUserDataEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 408
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/UserDataEntryJSON;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/UserDataEntryJSON;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DataEntry:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->EmptySubtype:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;)V

    .line 410
    return-void
.end method

.method public static logWatchRuntimeInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;->WatchRuntimeInfo:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;

    .line 319
    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Extension:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-static {v1, v0, p0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->log(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Lcom/dexcom/cgm/tech_support_logger/TechSupportLogSubtype;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private static trimDialogsTextIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v1, 0x1e

    .line 188
    if-nez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getViewsText() was called with a view that had no text in it!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 199
    :cond_1
    return-object p0
.end method
