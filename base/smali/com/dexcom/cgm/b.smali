.class final Lcom/dexcom/cgm/b;
.super Ljava/lang/Object;
.source "CgmApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/CgmApplication;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 189
    invoke-static {}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->onAlertSettingsDataCorruption()V

    .line 190
    return-void
.end method
