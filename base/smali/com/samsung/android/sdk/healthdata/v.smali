.class public final Lcom/samsung/android/sdk/healthdata/v;
.super Ljava/lang/Object;
.source "HealthDataService.java"


# static fields
.field static a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVersionCode()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x18e71

    return v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "1.2.1"

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/healthdata/v;->a:Z

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isFeatureEnabled(I)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
