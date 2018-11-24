.class public Lcom/dexcom/cgm/activities/AppCompatabilityActivity;
.super Landroid/app/Activity;
.source "AppCompatabilityActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/appcompatability/a;


# static fields
.field private static final ACTIVITY:I = 0x1

.field private static final INTERNALCHECK:Ljava/lang/String; = "INTERNALCHECK"

.field private static final NOTHING:I = 0x0

.field private static RunningTests:Z = false

.field private static final SECONDS_24_HOURS:J

.field private static final TESTRUNNER:Ljava/lang/String; = "TESTRUNNER"

.field private static m_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

.field private static m_locale:Ljava/lang/String;

.field private static s_DatabaseInitError:Z


# instance fields
.field private FreshInstall:Z

.field private GooglePlayServicesDialog:Landroid/app/Dialog;

.field private final INVALID_UNSUPPORTED_ENV:Ljava/lang/String;

.field private IOErrorOccurred:Z

.field private InternalCheck:Z

.field private final UNSUPPORTED_ENV:Ljava/lang/String;

.field private final VALID_ENV:Ljava/lang/String;

.field private final VALID_ENV_WARN:Ljava/lang/String;

.field private appCompatCompareString:Ljava/lang/String;

.field private appUpgradeURL:Ljava/lang/String;

.field private currentActivity:Lcom/dexcom/cgm/appcompatability/a;

.field private handler:Landroid/os/Handler;

.field leftForNextStep:I

.field private loadedWebPage:Z

.field private m_activity:Landroid/app/Activity;

.field private m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

.field private m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

.field private m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

.field private moreInfoURL:Ljava/lang/String;

.field private previousAppCompatCompareString:Ljava/lang/String;

.field serverCallUnderway:Z

.field private warning:Lcom/dexcom/cgm/activities/DexDialogBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->SECONDS_24_HOURS:J

    .line 86
    sput-boolean v4, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->RunningTests:Z

    .line 97
    sput-boolean v4, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_DatabaseInitError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getAppCompatabilityService$41724f43()Lcom/dexcom/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    .line 58
    const-string v0, "INVALIDUNSUPPORTEDENVIRONMENT"

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->INVALID_UNSUPPORTED_ENV:Ljava/lang/String;

    .line 59
    const-string v0, "UNSUPPORTEDENVIRONMENT"

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->UNSUPPORTED_ENV:Ljava/lang/String;

    .line 60
    const-string v0, "VALIDENVIRONMENTWARN"

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->VALID_ENV_WARN:Ljava/lang/String;

    .line 61
    const-string v0, "VALIDENVIRONMENT"

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->VALID_ENV:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverCallUnderway:Z

    .line 75
    iput v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->leftForNextStep:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appCompatCompareString:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->loadedWebPage:Z

    .line 92
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->InternalCheck:Z

    .line 93
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->IOErrorOccurred:Z

    .line 95
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->FreshInstall:Z

    return-void
.end method

.method private StuffDefaultValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->FreshInstall:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 350
    sget v1, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_server_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Lcom/dexcom/cgm/model/ValidityResult;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/ValidityResult;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    .line 352
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    const-string v2, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/ValidityResult;->setValidity(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/model/ValidityResult;->setMessageId(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/GetMessageResult;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 355
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/model/GetMessageResult;->setAppUpgradeURL(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/model/GetMessageResult;->setCulture(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setMaxMessageDisplays(I)V

    .line 358
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setMessageDisplayFrequency(I)V

    .line 359
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v3}, Lcom/dexcom/cgm/model/GetMessageResult;->setMoreInfoURL(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/GetMessageResult;->setMessage(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->StuffDefaultValues()V

    return-void
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showDialogOrContinue(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setupCompatabilityScreen()V

    return-void
.end method

.method static synthetic access$1300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->GooglePlayServicesDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->warning:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/DexDialogBuilder;)Lcom/dexcom/cgm/activities/DexDialogBuilder;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->warning:Lcom/dexcom/cgm/activities/DexDialogBuilder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500()Lcom/dexcom/cgm/model/AppRuntimeInfo;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_locale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/cgm/appcompatability/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->currentActivity:Lcom/dexcom/cgm/appcompatability/a;

    return-object v0
.end method

.method static synthetic access$800$32e1a9(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)Lcom/dexcom/a/a/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    return-object v0
.end method

.method static synthetic access$902(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->IOErrorOccurred:Z

    return p1
.end method

.method private checkGooglePlayServices()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 201
    if-eqz v1, :cond_1

    .line 203
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->GooglePlayServicesDialog:Landroid/app/Dialog;

    .line 204
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->GooglePlayServicesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 207
    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$3;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 220
    :cond_1
    return v0
.end method

.method private static checkRootMethod1()Z
    .locals 2

    .prologue
    .line 736
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 737
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkRootMethod2()Z
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 743
    new-array v3, v6, [Ljava/lang/String;

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v3, v1

    const-string v2, "/sbin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    move v2, v1

    .line 746
    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v4, v3, v2

    .line 748
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    :goto_1
    return v0

    .line 746
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 753
    goto :goto_1
.end method

.method private static checkRootMethod3()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 759
    const/4 v2, 0x0

    .line 762
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/xbin/which"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "su"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 763
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 764
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 776
    if-eqz v2, :cond_0

    .line 778
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_0
    :goto_0
    return v0

    .line 776
    :cond_1
    if-eqz v2, :cond_2

    .line 778
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 778
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    move v0, v1

    goto :goto_0

    .line 776
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 778
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_4
    throw v0

    .line 776
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private compatValuesChanged()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appCompatCompareString:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configureButtons(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    .line 482
    :goto_0
    iget-object v3, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->moreInfoURL:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->moreInfoURL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v0

    .line 483
    :goto_1
    iget-object v4, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appUpgradeURL:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appUpgradeURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 485
    :goto_2
    if-eqz v0, :cond_0

    .line 487
    sget v0, Lcom/dexcom/cgm/activities/R$id;->appUpgradeButton:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 488
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    new-instance v4, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$7;

    invoke-direct {v4, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$7;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    :cond_0
    if-eqz v3, :cond_1

    .line 501
    sget v0, Lcom/dexcom/cgm/activities/R$id;->moreInfoButton:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 502
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 503
    new-instance v3, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$8;

    invoke-direct {v3, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$8;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    :cond_1
    if-eqz v1, :cond_2

    .line 515
    sget v0, Lcom/dexcom/cgm/activities/R$id;->continueToApp:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 516
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 517
    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$9;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$9;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 481
    goto :goto_0

    :cond_4
    move v3, v2

    .line 482
    goto :goto_1

    :cond_5
    move v0, v2

    .line 483
    goto :goto_2
.end method

.method private doAppCompatabilityLogic()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-static {v3}, Lcom/flurry/android/a;->setLogEnabled(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "6TM2FGGPGM7DCBVVTS7H"

    invoke-static {v0, v1}, Lcom/flurry/android/a;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->checkGooglePlayServices()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    sget-boolean v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->RunningTests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->loadedWebPage:Z

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    .line 186
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverIOTask()V

    .line 189
    :cond_0
    sget-boolean v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->RunningTests:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->loadedWebPage:Z

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 193
    :cond_1
    iput-boolean v3, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->loadedWebPage:Z

    .line 195
    :cond_2
    return-void
.end method

.method private goDirectlyToNextActivity()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 562
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 563
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    .line 564
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->InternalCheck:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->IOErrorOccurred:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 566
    :goto_0
    if-eqz v0, :cond_0

    .line 568
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->SECONDS_24_HOURS:J

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/dexcom/cgm/d/e;->setNextAppCompatabilityCheck(J)V

    .line 571
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->FreshInstall:Z

    if-eqz v0, :cond_1

    .line 573
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 574
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/dexcom/cgm/d/e;->setNextAppCompatabilityCheck(J)V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->GooglePlayServicesDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->GooglePlayServicesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->GooglePlayServicesDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 583
    :cond_2
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->InternalCheck:Z

    if-eqz v0, :cond_4

    .line 585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 586
    const-string v1, "INTERNALCHECK"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-class v1, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 606
    :goto_1
    return-void

    .line 564
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 591
    :cond_4
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedInitialSetupWizard()Z

    move-result v0

    if-nez v0, :cond_5

    .line 597
    const-class v0, Lcom/dexcom/cgm/activities/InitialSetupWizardActivity;

    invoke-direct {p0, v0, v3}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 601
    :cond_5
    const-class v0, Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0, v0, v3}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 604
    :cond_6
    const-class v0, Lcom/dexcom/cgm/activities/IntroActivity;

    invoke-direct {p0, v0, v3}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static isDatabaseError()Z
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_DatabaseInitError:Z

    return v0
.end method

.method private isRooted()Z
    .locals 1

    .prologue
    .line 730
    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->checkRootMethod1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->checkRootMethod2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->checkRootMethod3()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "su"

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->checkRootMethod4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processNewAppCompatability()V
    .locals 8

    .prologue
    .line 668
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appCompatCompareString:Ljava/lang/String;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    .line 671
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 672
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 673
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->SECONDS_24_HOURS:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/dexcom/cgm/d/e;->setNextAppCompatabilityCheck(J)V

    .line 674
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/ValidityResult;->getValidity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setAppCompatabilityValidity(Ljava/lang/String;)V

    .line 675
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setPreviousAppCompatCompare(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    if-eqz v1, :cond_0

    .line 678
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 679
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/GetMessageResult;->getMaxMessageDisplays()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setAppCompatabilityCount(I)V

    .line 680
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 681
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/GetMessageResult;->getMessageDisplayFrequency()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setAppCompatabilityFrequency(I)V

    .line 683
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 684
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/GetMessageResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setAppCompatabilityMessage(Ljava/lang/String;)V

    .line 685
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 686
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/GetMessageResult;->getMoreInfoURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setAppCompatabilityMoreInfoURL(Ljava/lang/String;)V

    .line 687
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 688
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/GetMessageResult;->getAppUpgradeURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setAppCompatabilityAppUpgradeURL(Ljava/lang/String;)V

    .line 690
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 696
    :goto_0
    return-void

    .line 693
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->IOErrorOccurred:Z

    .line 694
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_general_server_down:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showDialogWithStringThenExit(I)V

    goto :goto_0
.end method

.method private serverIOTask()V
    .locals 1

    .prologue
    .line 718
    new-instance v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$10;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$10;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method private setCurrentAppInfo()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AppRuntimeInfo$Builder;->build()Lcom/dexcom/cgm/model/AppRuntimeInfo;

    move-result-object v1

    .line 228
    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_name:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setAppName(Ljava/lang/String;)V

    .line 229
    sget v2, Lcom/dexcom/cgm/activities/R$string;->software_number:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setAppNumber(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/dexcom/cgm/activities/AppVersion;->getShortVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setAppVersion(Ljava/lang/String;)V

    .line 233
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 234
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 235
    sget v2, Lcom/dexcom/cgm/activities/R$string;->device_os_name:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceOsName(Ljava/lang/String;)V

    .line 236
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->setDeviceOsVersion(Ljava/lang/String;)V

    .line 238
    sget v2, Lcom/dexcom/cgm/activities/R$string;->locked_locale:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 242
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static setDatabaseError(Z)V
    .locals 0

    .prologue
    .line 169
    sput-boolean p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->s_DatabaseInitError:Z

    .line 170
    return-void
.end method

.method private setupCompatabilityScreen()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-static {}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isDatabaseCorrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    .line 477
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 406
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_application_compatability:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setContentView(I)V

    .line 408
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 411
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getAppCompatabilityValidity()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getAppCompatabilityMessage()Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/d/e;->getAppCompatabilityMoreInfoURL()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->moreInfoURL:Ljava/lang/String;

    .line 414
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getAppCompatabilityAppUpgradeURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appUpgradeURL:Ljava/lang/String;

    .line 416
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "VALIDENVIRONMENT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    if-nez v0, :cond_1

    .line 419
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 423
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    goto :goto_0

    .line 431
    :cond_2
    if-nez v0, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 433
    sget v0, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_invalid:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 441
    :goto_1
    sget v0, Lcom/dexcom/cgm/activities/R$id;->compat_text_heading:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 442
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    invoke-direct {p0, v4}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->configureButtons(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VALIDENVIRONMENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 447
    sget v5, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_notice:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VALIDENVIRONMENTWARN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 452
    iget-object v5, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appUpgradeURL:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appUpgradeURL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x1

    .line 454
    :cond_4
    if-eqz v2, :cond_9

    .line 456
    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_update:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UNSUPPORTEDENVIRONMENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 466
    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_incompatible_device:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "INVALIDUNSUPPORTEDENVIRONMENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 471
    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_incompatible_device:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_7
    sget v0, Lcom/dexcom/cgm/activities/R$id;->compat_text_message:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 476
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 435
    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "VALIDENVIRONMENTWARN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 436
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    sget v0, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_text_default_warning:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 460
    :cond_9
    sget v2, Lcom/dexcom/cgm/activities/R$string;->app_compatibility_title_warning:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private showDialogOrContinue(I)V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverCallUnderway:Z

    .line 282
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appCompatCompareString:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->showDialogWithStringThenExit(I)V

    goto :goto_0
.end method

.method private showDialogWithStringThenExit(I)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$4;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method private showIntent(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 610
    sget-boolean v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->RunningTests:Z

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->leftForNextStep:I

    .line 625
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 618
    if-eqz p2, :cond_1

    .line 620
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 622
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->startActivity(Landroid/content/Intent;)V

    .line 623
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public GetMessageResult()Lcom/dexcom/cgm/model/GetMessageResult;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    return-object v0
.end method

.method public GetValidityResult()Lcom/dexcom/cgm/model/ValidityResult;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    return-object v0
.end method

.method public checkRootMethod4(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 786
    .line 788
    new-array v3, v7, [Ljava/lang/String;

    const-string v2, "/sbin/"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/data/local/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/bin/"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/bin/failsafe/"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/"

    aput-object v4, v3, v2

    move v2, v1

    .line 791
    :goto_0
    if-ge v2, v7, :cond_1

    aget-object v4, v3, v2

    .line 793
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 799
    :goto_1
    return v0

    .line 791
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverCallUnderway:Z

    .line 367
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$6;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 394
    return-void
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 557
    invoke-super {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->finish()V

    .line 643
    return-void
.end method

.method public onClickContinueToApp(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 541
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v0

    .line 542
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    .line 543
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/d/e;->getNextAppCompatabilityFrequency()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 545
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/d/e;->getAppCompatabilityCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 546
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/dexcom/cgm/d/e;->setAppCompatabilityCount(I)V

    .line 547
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v3

    .line 548
    invoke-virtual {v3}, Lcom/dexcom/cgm/d/e;->getAppCompatabilityFrequency()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 549
    invoke-interface {v2}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dexcom/cgm/d/e;->setNextAppCompatabilityFrequency(J)V

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    .line 552
    return-void
.end method

.method public onClickMoreInformation(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->loadedWebPage:Z

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->moreInfoURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 631
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_in_bottom:I

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    .line 634
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 631
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 636
    return-void
.end method

.method public onClickUpdateApp(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appUpgradeURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 531
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->loadedWebPage:Z

    .line 532
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_in_bottom:I

    sget v2, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    .line 535
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 532
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 537
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isRooted()Z

    .line 107
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    const-string v1, "TESTRUNNER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->RunningTests:Z

    .line 109
    const-string v1, "INTERNALCHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->InternalCheck:Z

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->handler:Landroid/os/Handler;

    .line 111
    iput-object p0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_activity:Landroid/app/Activity;

    .line 112
    iput-object p0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->currentActivity:Lcom/dexcom/cgm/appcompatability/a;

    .line 114
    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isDatabaseError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_pre_app_compatability:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setContentView(I)V

    .line 134
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->InternalCheck:Z

    if-nez v0, :cond_1

    .line 120
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_pre_app_compatability:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setContentView(I)V

    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->InternalCheck:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->setCurrentAppInfo()V

    .line 144
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->serverIOTask()V

    .line 165
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->isDatabaseError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$2;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->doAppCompatabilityLogic()V

    goto :goto_0
.end method

.method performAppValidity()V
    .locals 6

    .prologue
    .line 293
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 294
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    .line 295
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getNextAppCompatabilityCheck()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 296
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->compatValuesChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->InternalCheck:Z

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$5;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$5;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    :goto_0
    return-void

    .line 312
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    sget-object v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_locale:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->getAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getAppCompatabilityCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 318
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity$updateUITask;-><init>(Lcom/dexcom/cgm/activities/AppCompatabilityActivity;Lcom/dexcom/cgm/activities/AppCompatabilityActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 321
    :cond_3
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->goDirectlyToNextActivity()V

    goto :goto_0
.end method

.method public serverCallFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    invoke-virtual {v0}, Lcom/dexcom/a/a/a;->getValidity()Lcom/dexcom/cgm/model/ValidityResult;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_validityResult:Lcom/dexcom/cgm/model/ValidityResult;

    .line 649
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    invoke-virtual {v0}, Lcom/dexcom/a/a/a;->getMessageResult()Lcom/dexcom/cgm/model/GetMessageResult;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 651
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/GetMessageResult;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    .line 654
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setAppUpgradeURL(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setCulture(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    const v1, 0x5f5e100

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/GetMessageResult;->setMaxMessageDisplays(I)V

    .line 657
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    const v1, 0xbebc200

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/GetMessageResult;->setMessageDisplayFrequency(I)V

    .line 658
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/GetMessageResult;->setMoreInfoURL(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_getMessageResult:Lcom/dexcom/cgm/model/GetMessageResult;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/GetMessageResult;->setMessage(Ljava/lang/String;)V

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->processNewAppCompatability()V

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->FreshInstall:Z

    .line 664
    return-void
.end method

.method setAppCompatability(Lcom/dexcom/cgm/model/AppRuntimeInfo;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 331
    sput-object p1, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    .line 332
    sget-object v0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_appRuntimeInfo:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AppRuntimeInfo;->compareValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->appCompatCompareString:Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPreviousAppCompatCompare()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->previousAppCompatCompareString:Ljava/lang/String;

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->FreshInstall:Z

    .line 341
    :cond_0
    sput-object p2, Lcom/dexcom/cgm/activities/AppCompatabilityActivity;->m_locale:Ljava/lang/String;

    .line 342
    return-void
.end method
