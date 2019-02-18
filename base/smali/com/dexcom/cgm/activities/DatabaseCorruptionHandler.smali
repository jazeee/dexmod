.class public Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;
.super Ljava/lang/Object;
.source "DatabaseCorruptionHandler.java"


# static fields
.field private static FixedAlertSound:Lcom/dexcom/cgm/i/a/a/a; = null

.field private static MAX_ESCALATION_COUNT:I = 0x0

.field private static final VIBRATE_FOR_1500_MILLISECONDS:I = 0x3e8

.field private static isAlertSettingsCorrupted:Z

.field private static isDatabaseCorrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isDatabaseCorrupted:Z

    .line 28
    sput-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isAlertSettingsCorrupted:Z

    .line 30
    sget-object v0, Lcom/dexcom/cgm/i/a/a/a;->ShortBeeps:Lcom/dexcom/cgm/i/a/a/a;

    sput-object v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->FixedAlertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->MAX_ESCALATION_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/dexcom/cgm/i/a/a/a;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->FixedAlertSound:Lcom/dexcom/cgm/i/a/a/a;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->MAX_ESCALATION_COUNT:I

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 25
    sput-boolean p0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isAlertSettingsCorrupted:Z

    return p0
.end method

.method public static isDatabaseCorrupted()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isDatabaseCorrupted:Z

    return v0
.end method

.method public static onAlertSettingsDataCorruption()V
    .locals 2

    .prologue
    .line 91
    sget-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isAlertSettingsCorrupted:Z

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$2;

    invoke-direct {v1}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isAlertSettingsCorrupted:Z

    .line 127
    return-void
.end method

.method public static onDataCorruption()V
    .locals 2

    .prologue
    .line 41
    sget-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isDatabaseCorrupted:Z

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$1;

    invoke-direct {v1}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isDatabaseCorrupted:Z

    .line 86
    return-void
.end method

.method public static showAlertSettingsDatabaseCorruptionDialogIfNeeded(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isAlertSettingsCorrupted:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/dexcom/cgm/activities/TrendActivity;

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$4;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$4;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->createAlertSettingsErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 167
    :cond_0
    return-void
.end method

.method public static showDatabaseCorruptionDialogIfNeeded(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 136
    sget-boolean v0, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->isDatabaseCorrupted:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
