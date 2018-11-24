.class final Lcom/dexcom/cgm/a;
.super Ljava/lang/Object;
.source "CgmApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/CgmApplication;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 180
    invoke-static {}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->onDataCorruption()V

    .line 181
    return-void
.end method
