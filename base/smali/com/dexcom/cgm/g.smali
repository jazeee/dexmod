.class public final Lcom/dexcom/cgm/g;
.super Ljava/lang/Object;
.source "DexcomUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private m_dal:Lcom/dexcom/cgm/d/a;

.field private m_previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private m_versionNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/d/a;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p2}, Lcom/dexcom/cgm/g;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/g;->m_versionNumber:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/g;->m_previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-object p1, p0, Lcom/dexcom/cgm/g;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 33
    return-void
.end method

.method private static getVersionNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isCrashFrequencyToHigh()Z
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/g;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 79
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/k/j;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 80
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 78
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/d/a;->readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/dexcom/cgm/g;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 82
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/dexcom/cgm/k/j;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 83
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    .line 81
    invoke-interface {v1, v2, v3}, Lcom/dexcom/cgm/d/a;->readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/dexcom/cgm/g;->m_dal:Lcom/dexcom/cgm/d/a;

    new-instance v2, Lcom/dexcom/cgm/model/CrashLog;

    iget-object v3, p0, Lcom/dexcom/cgm/g;->m_versionNumber:Ljava/lang/String;

    invoke-direct {v2, p2, v3, v0}, Lcom/dexcom/cgm/model/CrashLog;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/d/a;->saveCrashLog(Lcom/dexcom/cgm/model/CrashLog;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    instance-of v0, p2, Lcom/dexcom/cgm/test/a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/g;->m_previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/g;->isCrashFrequencyToHigh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/g;->m_previousHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 74
    :goto_1
    return-void

    .line 71
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
