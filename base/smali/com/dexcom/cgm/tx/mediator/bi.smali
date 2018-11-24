.class public final Lcom/dexcom/cgm/tx/mediator/bi;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/bh;


# instance fields
.field private m_binder:Lcom/dexcom/cgm/tx/mediator/m;

.field private final m_bleLogger:Lcom/dexcom/cgm/g/a;

.field private m_callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/tx/mediator/aa;",
            ">;"
        }
    .end annotation
.end field

.field private m_connection:Lcom/dexcom/cgm/tx/mediator/bk;

.field private final m_context:Landroid/content/Context;

.field private m_isCommunicationLoopEnabled:Z

.field private m_listener:Lcom/dexcom/cgm/tx/mediator/bl;

.field private final m_notification:Landroid/app/Notification;

.field private final m_notificationId:I

.field private m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

.field private m_wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/dexcom/cgm/g/a;ILandroid/app/Notification;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_callbacks:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/bl;-><init>(Lcom/dexcom/cgm/tx/mediator/bi;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_listener:Lcom/dexcom/cgm/tx/mediator/bl;

    .line 71
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bk;

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/tx/mediator/bk;-><init>(Lcom/dexcom/cgm/tx/mediator/bi;B)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_connection:Lcom/dexcom/cgm/tx/mediator/bk;

    .line 73
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_isCommunicationLoopEnabled:Z

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_binder:Lcom/dexcom/cgm/tx/mediator/m;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_bleLogger:Lcom/dexcom/cgm/g/a;

    .line 93
    iput p3, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_notificationId:I

    .line 94
    iput-object p4, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_notification:Landroid/app/Notification;

    .line 96
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/bi;->getPhoneInformation(Landroid/content/Context;)Lcom/dexcom/cgm/model/PhoneInformation;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->TransmitterComponentCreate:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/tx/mediator/bi;->recordBluetoothEvent(Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 100
    const/4 v1, 0x1

    const-string v2, "TransmitterMediatorComponent.Callbacks"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/m;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_binder:Lcom/dexcom/cgm/tx/mediator/m;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/tx/mediator/m;)Lcom/dexcom/cgm/tx/mediator/m;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_binder:Lcom/dexcom/cgm/tx/mediator/m;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/bi;->recordBluetoothEvent(Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/tx/mediator/bi;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_callbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/g/a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_bleLogger:Lcom/dexcom/cgm/g/a;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/dexcom/cgm/tx/mediator/bi;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/ah;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/tx/mediator/bi;)Lcom/dexcom/cgm/tx/mediator/bl;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_listener:Lcom/dexcom/cgm/tx/mediator/bl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/tx/mediator/bi;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_notificationId:I

    return v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/tx/mediator/bi;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$602(Lcom/dexcom/cgm/tx/mediator/bi;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_isCommunicationLoopEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/bi;->recordBluetoothEvent(Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/dexcom/cgm/g/a;ILandroid/app/Notification;)Lcom/dexcom/cgm/tx/mediator/bh;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/bi;-><init>(Landroid/content/Context;Lcom/dexcom/cgm/g/a;ILandroid/app/Notification;)V

    return-object v0
.end method

.method private getPhoneInformation(Landroid/content/Context;)Lcom/dexcom/cgm/model/PhoneInformation;
    .locals 3

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setAppPackageName(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 112
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setAppVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setOsVersionSdkInt(I)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setOsVersionRelease(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setOsVersionIncremental(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildProduct(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildDevice(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildBoard(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildManufacturer(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildBrand(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildModel(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildBootloader(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildHardware(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    .line 124
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildRadioVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setPid(I)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->build()Lcom/dexcom/cgm/model/PhoneInformation;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isCoarseLocationPermissionGranted()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 191
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordBluetoothEvent(Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/tx/mediator/bi;->recordBluetoothEvent(Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method private recordBluetoothEvent(Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 229
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/model/GsonFactory;->get()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    new-instance v1, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;-><init>()V

    .line 231
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v1

    .line 232
    invoke-static {}, Lcom/dexcom/cgm/k/d;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setRecordRtcTime(J)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    .line 233
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setGlucoseTime(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1, p1}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setBluetoothEventType(Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->setPayloadString(Ljava/lang/String;)Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/BluetoothEventRecord$Builder;->build()Lcom/dexcom/cgm/model/BluetoothEventRecord;

    move-result-object v1

    .line 237
    const-string v2, "TransmitterBLE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BluetoothEvent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Payload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_bleLogger:Lcom/dexcom/cgm/g/a;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/g/a;->log(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V

    .line 239
    return-void

    .line 229
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final disableCommunicationLoop()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    const-class v2, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_binder:Lcom/dexcom/cgm/tx/mediator/m;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_connection:Lcom/dexcom/cgm/tx/mediator/bk;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_isCommunicationLoopEnabled:Z

    .line 205
    return-void
.end method

.method public final enableCommunicationLoop()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need to provide provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/bi;->isCoarseLocationPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_listener:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/tx/mediator/bl;->evCoarseLocationPermission(Z)V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_1
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_isCommunicationLoopEnabled:Z

    .line 182
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_listener:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bl;->evCoarseLocationPermission(Z)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    const-class v2, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_connection:Lcom/dexcom/cgm/tx/mediator/bk;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public final isBluetoothOn()Z
    .locals 4

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 218
    :goto_0
    return v0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    const-string v1, "TransmitterBLE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost Bluetooth Permission/n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCommunicationLoopEnabled()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_isCommunicationLoopEnabled:Z

    return v0
.end method

.method public final registerCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public final setConnectionCriteriaProvider(Lcom/dexcom/cgm/tx/mediator/ah;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    .line 143
    return-void
.end method

.method public final teardown()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public final unregisterCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public final unsetConnectionCriteriaProvider()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bi;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    .line 149
    return-void
.end method
