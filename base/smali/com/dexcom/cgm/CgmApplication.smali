.class public Lcom/dexcom/cgm/CgmApplication;
.super Landroid/app/Application;
.source "CgmApplication.java"


# static fields
.field private static final IS_TEST_ENABLED:Z


# instance fields
.field m_cgmDataCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private m_components:Lcom/dexcom/cgm/component_provider/a;

.field private m_dal:Lcom/dexcom/cgm/d/a;

.field m_lifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private m_shareWSInterceptor$222fc8dc:Lcom/dexcom/cgm/component_provider/n;

.field private m_txInterceptor:Lcom/dexcom/cgm/test/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_cgmDataCallbacks:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_lifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/CgmApplication;)Lcom/dexcom/cgm/component_provider/a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/CgmApplication;Landroid/content/Context;)Lcom/dexcom/cgm/model/PhoneInformation;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/CgmApplication;->getPhoneInformation(Landroid/content/Context;)Lcom/dexcom/cgm/model/PhoneInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/CgmApplication;)Lcom/dexcom/cgm/test/e;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_txInterceptor:Lcom/dexcom/cgm/test/e;

    return-object v0
.end method

.method static synthetic access$400$458538f6(Lcom/dexcom/cgm/CgmApplication;)Lcom/dexcom/cgm/component_provider/n;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_shareWSInterceptor$222fc8dc:Lcom/dexcom/cgm/component_provider/n;

    return-object v0
.end method

.method private createComponents$f8f5cb4(Lcom/dexcom/cgm/test/api/SetupConfiguration;Lcom/dexcom/cgm/test/e;Lcom/dexcom/cgm/component_provider/n;)Lcom/dexcom/cgm/component_provider/a;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    const-string v2, "Test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setup configuration on startup: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getStartupOptions()Ljava/util/List;

    move-result-object v3

    .line 174
    new-instance v4, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {v4, p0, v1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;-><init>(Landroid/content/Context;Z)V

    .line 175
    new-instance v2, Lcom/dexcom/cgm/a;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/a;-><init>(Lcom/dexcom/cgm/CgmApplication;)V

    invoke-interface {v4, v2}, Lcom/dexcom/cgm/e/f;->setFatalDatabaseCorruptionHandler(Ljava/lang/Runnable;)V

    .line 184
    new-instance v2, Lcom/dexcom/cgm/b;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/b;-><init>(Lcom/dexcom/cgm/CgmApplication;)V

    invoke-interface {v4, v2}, Lcom/dexcom/cgm/e/f;->setAlertSettingsDatabaseCorruptionHandler(Ljava/lang/Runnable;)V

    .line 193
    invoke-static {v4}, Lcom/dexcom/cgm/d/b;->create(Lcom/dexcom/cgm/e/f;)Lcom/dexcom/cgm/d/a;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/CgmApplication;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 197
    :try_start_0
    new-instance v2, Lcom/dexcom/cgm/component_provider/b;

    invoke-direct {v2}, Lcom/dexcom/cgm/component_provider/b;-><init>()V

    .line 198
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/CgmApplication;->getShareURL(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/dexcom/cgm/CgmApplication;->getShareApplicationID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/dexcom/cgm/component_provider/b;->setShareServer(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v2

    .line 199
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/CgmApplication;->getBulkURL(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/dexcom/cgm/CgmApplication;->getBulkDataApplicationID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/dexcom/cgm/component_provider/b;->setBulkData(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v2

    .line 200
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/CgmApplication;->getAppCompatibilityURL(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/dexcom/cgm/CgmApplication;->getShareApplicationID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/dexcom/cgm/component_provider/b;->setAppCompat(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v2

    .line 201
    invoke-virtual {p0}, Lcom/dexcom/cgm/CgmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/dexcom/cgm/CgmApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const v6, 0x7f0a033c

    .line 202
    invoke-virtual {p0, v6}, Lcom/dexcom/cgm/CgmApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-virtual {v2, v5, v6}, Lcom/dexcom/cgm/component_provider/b;->setSoftwareInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v5

    sget-object v2, Lcom/dexcom/cgm/test/api/StartupOption;->DataPublishDisabled:Lcom/dexcom/cgm/test/api/StartupOption;

    .line 203
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v5, v2}, Lcom/dexcom/cgm/component_provider/b;->setDataPublishEnabled(Z)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v2

    sget-object v5, Lcom/dexcom/cgm/test/api/StartupOption;->AppCompatibilityDisabled:Lcom/dexcom/cgm/test/api/StartupOption;

    .line 204
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/component_provider/b;->setAppCompatibilityEnabled(Z)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/component_provider/b;->setTransmitterMediatorInterceptor(Lcom/dexcom/cgm/component_provider/o;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p3}, Lcom/dexcom/cgm/component_provider/b;->setShareWebserviceInterceptor(Lcom/dexcom/cgm/component_provider/n;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v4}, Lcom/dexcom/cgm/component_provider/b;->setDatabase(Lcom/dexcom/cgm/e/f;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v0

    .line 208
    invoke-direct {p0}, Lcom/dexcom/cgm/CgmApplication;->createDefaultNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/component_provider/b;->setForegroundNotification(Landroid/app/Notification;)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v0

    const/4 v1, 0x1

    .line 209
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/component_provider/b;->setIsAlertSystemNeeded(Z)Lcom/dexcom/cgm/component_provider/b;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p0}, Lcom/dexcom/cgm/component_provider/b;->build(Landroid/content/Context;)Lcom/dexcom/cgm/component_provider/a;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    return-object v0

    :cond_0
    move v2, v1

    .line 203
    goto :goto_0

    :cond_1
    move v0, v1

    .line 204
    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createDefaultNotification()Landroid/app/Notification;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/dexcom/cgm/CgmApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/dexcom/cgm/CgmApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200ca

    .line 303
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0a0087

    .line 304
    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/CgmApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0a035e

    .line 305
    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/CgmApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 306
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 307
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getAppCompatibilityURL(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->isAppCompatUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getAppCompatUrl()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getAppCompatUrl()Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :cond_2
    const-string v0, "https://share2.dexcom.com/AppCompatibilityWebServices/Services"

    goto :goto_0
.end method

.method private getBulkDataApplicationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getBulkDataApplicationID()Ljava/util/UUID;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "13A907FB-AC7E-4F90-B4EC-2F2B8BE1C607"

    goto :goto_0
.end method

.method private getBulkURL(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->isBulkDataUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getBulkDataUrl()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getBulkDataUploadUrl()Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    :cond_2
    const-string v0, "https://share2.dexcom.com/ShareDataPostWebServices/Services/"

    goto :goto_0
.end method

.method private getPhoneInformation(Landroid/content/Context;)Lcom/dexcom/cgm/model/PhoneInformation;
    .locals 3

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setAppPackageName(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setAppVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 127
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setOsVersionSdkInt(I)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setOsVersionRelease(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setOsVersionIncremental(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildProduct(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildDevice(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildBoard(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildManufacturer(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildBrand(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildModel(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildBootloader(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildHardware(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    .line 138
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setBuildRadioVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->setPid(I)Lcom/dexcom/cgm/model/PhoneInformation$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/PhoneInformation$Builder;->build()Lcom/dexcom/cgm/model/PhoneInformation;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSetupConfiguration(Z)Lcom/dexcom/cgm/test/api/SetupConfiguration;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/dexcom/cgm/test/api/SetupConfiguration;

    invoke-direct {v0}, Lcom/dexcom/cgm/test/api/SetupConfiguration;-><init>()V

    .line 153
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/io/File;

    const-string v3, "SetupConfiguration.properties"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    const-string v1, "Test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Config file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-static {v2}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->read(Ljava/io/File;)Lcom/dexcom/cgm/test/api/SetupConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method private getShareApplicationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getShareApplicationID()Ljava/util/UUID;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "13A907FB-AC7E-4F90-B4EC-2F2B8BE1C607"

    goto :goto_0
.end method

.method private getShareURL(Lcom/dexcom/cgm/test/api/SetupConfiguration;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->isShareUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/SetupConfiguration;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getShareRealtimeUrl()Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :cond_2
    const-string v0, "https://share2.dexcom.com/ShareWebServices/Services/"

    goto :goto_0
.end method

.method private registerComponents(Lcom/dexcom/cgm/component_provider/a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 315
    new-instance v0, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;

    iget-object v1, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    invoke-virtual {v1}, Lcom/dexcom/cgm/component_provider/a;->getCgmDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/AndroidDatabaseLogProxy;-><init>(Lcom/dexcom/cgm/d/a;Z)V

    invoke-static {v0}, Lcom/dexcom/cgm/f/b;->initialize(Lcom/dexcom/cgm/f/d;)V

    .line 317
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    invoke-virtual {v0}, Lcom/dexcom/cgm/component_provider/a;->getIsDataPublished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    invoke-virtual {v0}, Lcom/dexcom/cgm/component_provider/a;->getCgmProvider()Lcom/dexcom/cgm/b/f;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/c;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/c;-><init>(Lcom/dexcom/cgm/CgmApplication;)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/b/f;->registerCgmDataUpdateCallback(Lcom/dexcom/cgm/b/i;)V

    .line 329
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 330
    new-instance v3, Lcom/dexcom/cgm/component_provider/h;

    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getCgmProvider()Lcom/dexcom/cgm/b/f;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/dexcom/cgm/component_provider/h;-><init>(Lcom/dexcom/cgm/b/f;)V

    .line 331
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->setCgmPresentationExtension(Lcom/dexcom/cgm/i/a;)V

    .line 332
    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getShareService()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->setShareComponent(Lcom/dexcom/cgm/share/ShareService;)V

    .line 333
    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getAppCompatibilityService$41724f43()Lcom/dexcom/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->setAppCompatabilityService$7a494fb7(Lcom/dexcom/a/a/a;)V

    .line 334
    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getBulkDataService()Lcom/dexcom/cgm/bulkdata/BulkDataService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->setBulkDataService(Lcom/dexcom/cgm/bulkdata/BulkDataService;)V

    .line 335
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    invoke-virtual {v0}, Lcom/dexcom/cgm/component_provider/a;->getIsAppCompatibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    invoke-virtual {v0}, Lcom/dexcom/cgm/component_provider/a;->getAppCompatibilityService$41724f43()Lcom/dexcom/a/a/a;

    move-result-object v0

    check-cast v0, Lcom/dexcom/a/a/a;

    .line 338
    invoke-virtual {v0}, Lcom/dexcom/a/a/a;->disableAppCompatibility()V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_cgmDataCallbacks:Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;->getInstance(Landroid/content/Context;Lcom/dexcom/cgm/i/a;)Lcom/dexcom/cgm/activities/shealth/SHealthSubscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_cgmDataCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_cgmDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_cgmDataCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/c;

    invoke-virtual {v3, v0}, Lcom/dexcom/cgm/component_provider/h;->registerCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 343
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_lifecycleCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/dexcom/cgm/activities/SecureScreenLifecycleCallbacks;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/dexcom/cgm/activities/SecureScreenLifecycleCallbacks;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_lifecycleCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getAlertSystem()Lcom/dexcom/cgm/a/f;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;-><init>(Lcom/dexcom/cgm/a/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_lifecycleCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;

    .line 351
    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getShareService()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v4

    .line 352
    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getBulkDataService()Lcom/dexcom/cgm/bulkdata/BulkDataService;

    move-result-object v5

    .line 353
    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getSystemHealthChecker()Lcom/dexcom/cgm/j/c;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;-><init>(Lcom/dexcom/cgm/share/ShareService;Lcom/dexcom/cgm/bulkdata/BulkDataService;Lcom/dexcom/cgm/j/c;)V

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_lifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_lifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/CgmApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v3}, Lcom/dexcom/cgm/component_provider/h;->startServices()V

    .line 361
    new-instance v0, Lcom/dexcom/cgm/g;

    .line 362
    invoke-virtual {p1}, Lcom/dexcom/cgm/component_provider/a;->getCgmDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/CgmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/g;-><init>(Lcom/dexcom/cgm/d/a;Landroid/content/Context;)V

    .line 363
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 364
    invoke-direct {p0}, Lcom/dexcom/cgm/CgmApplication;->updateRuntimeInfo()V

    .line 365
    return-void
.end method

.method private updateRuntimeInfo()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/d;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/d;-><init>(Lcom/dexcom/cgm/CgmApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 405
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 406
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 88
    invoke-static {p0}, Lcom/dexcom/cgm/activities/TheApplicationContext;->initialize(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/dexcom/cgm/f;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/f;-><init>(B)V

    invoke-static {v0}, Lcom/dexcom/cgm/k/d;->setProvider(Lcom/dexcom/cgm/k/f;)V

    .line 91
    new-instance v0, Lcom/dexcom/cgm/activities/AndroidLogProxy;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/AndroidLogProxy;-><init>(Z)V

    invoke-static {v0}, Lcom/dexcom/cgm/f/b;->initialize(Lcom/dexcom/cgm/f/d;)V

    .line 93
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/CgmApplication;->getSetupConfiguration(Z)Lcom/dexcom/cgm/test/api/SetupConfiguration;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/dexcom/cgm/test/e;

    invoke-direct {v1}, Lcom/dexcom/cgm/test/e;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/CgmApplication;->m_txInterceptor:Lcom/dexcom/cgm/test/e;

    .line 96
    new-instance v1, Lcom/dexcom/cgm/component_provider/n;

    invoke-direct {v1}, Lcom/dexcom/cgm/component_provider/n;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/CgmApplication;->m_shareWSInterceptor$222fc8dc:Lcom/dexcom/cgm/component_provider/n;

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/dexcom/cgm/CgmApplication;->m_txInterceptor:Lcom/dexcom/cgm/test/e;

    iget-object v2, p0, Lcom/dexcom/cgm/CgmApplication;->m_shareWSInterceptor$222fc8dc:Lcom/dexcom/cgm/component_provider/n;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/CgmApplication;->createComponents$f8f5cb4(Lcom/dexcom/cgm/test/api/SetupConfiguration;Lcom/dexcom/cgm/test/e;Lcom/dexcom/cgm/component_provider/n;)Lcom/dexcom/cgm/component_provider/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/CgmApplication;->m_components:Lcom/dexcom/cgm/component_provider/a;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/CgmApplication;->registerComponents(Lcom/dexcom/cgm/component_provider/a;)V

    .line 102
    invoke-virtual {p0}, Lcom/dexcom/cgm/CgmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/CgmApplication;->getPhoneInformation(Landroid/content/Context;)Lcom/dexcom/cgm/model/PhoneInformation;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAppLaunched(Lcom/dexcom/cgm/model/PhoneInformation;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/wear/DataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/CgmApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    new-instance v0, Lcom/dexcom/cgm/e;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/e;-><init>(Lcom/dexcom/cgm/CgmApplication;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/CgmApplication;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Lcom/dexcom/platform_database/database/CgmDatabaseComponent$DBInitFailException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setDatabaseError(Z)V

    goto :goto_0
.end method
