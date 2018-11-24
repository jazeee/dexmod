.class public Lcom/dexcom/cgm/activities/AppVersion;
.super Ljava/lang/Object;
.source "AppVersion.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "ecf3e88.29"

    return-object v0
.end method

.method public static getShortVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    const-string v0, "1.7.6.1"

    return-object v0
.end method
