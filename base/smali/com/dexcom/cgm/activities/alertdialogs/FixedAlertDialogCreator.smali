.class public Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;
.super Ljava/lang/Object;
.source "FixedAlertDialogCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->showSensorInsertionVideo(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->wipeAppData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addAcknowledgeButtonIfNeeded(Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->hasAcknowledgeButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "OK"

    new-instance v1, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$1;

    invoke-direct {v1, p2}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 80
    :cond_0
    return-void
.end method

.method public static createDialogForFixedAlert(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 39
    invoke-static {v0, p1, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->setContentLayout(Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Activity;)V

    .line 40
    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->addAcknowledgeButtonIfNeeded(Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)V

    .line 43
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 44
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 45
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->showAlert()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static createDialogForSQLFailure(Landroid/app/Activity;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 54
    invoke-static {v0, p1, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->setContentLayout(Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Activity;)V

    .line 55
    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->addAcknowledgeButtonIfNeeded(Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Ljava/lang/Runnable;)V

    .line 58
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 59
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 60
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->showDialogWithoutActivitySwitchCheck()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private static getCallbackForIncompatibleTransmitter(Landroid/app/Activity;)Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$3;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static getCallbackForSQLError()Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$4;-><init>()V

    return-object v0
.end method

.method private static getCallbackForSensorExpiration(Landroid/app/Activity;)Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$2;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static getDexcomBluetoothDeviceName(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 228
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 233
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 235
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setContentLayout(Lcom/dexcom/cgm/activities/DexDialogBuilder;Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator$5;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->getLayoutID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 105
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->getLayoutID()I

    move-result v0

    .line 92
    invoke-static {p2}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->getCallbackForSensorExpiration(Landroid/app/Activity;)Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;

    move-result-object v1

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->getLayoutID()I

    move-result v0

    invoke-static {}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->getCallbackForSQLError()Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    goto :goto_0

    .line 98
    :pswitch_2
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->getLayoutID()I

    move-result v0

    .line 99
    invoke-static {p2}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->getCallbackForIncompatibleTransmitter(Landroid/app/Activity;)Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;

    move-result-object v1

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static showSensorInsertionVideo(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 246
    const-string v0, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public static showSensorRemovalHelp(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 256
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 258
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getTransmitterInfo()Lcom/dexcom/cgm/h/a/f;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/f;->getTransmitterId()Lcom/dexcom/cgm/h/a/e;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/e;->isTransmitterIdArcher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_stop_sensor_removal_archer:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 268
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->sensor_failed_help1:I

    .line 269
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 271
    return-void

    .line 266
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_stop_sensor_removal:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    goto :goto_0
.end method

.method private static unpairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 212
    if-eqz p0, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeBond"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static wipeAppData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    invoke-static {p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->getDexcomBluetoothDeviceName(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->unpairDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 202
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pm clear "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
