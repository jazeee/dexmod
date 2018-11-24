.class final Lcom/dexcom/cgm/e;
.super Ljava/lang/Object;
.source "CgmApplication.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/CgmApplication;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .prologue
    .line 440
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 442
    invoke-static {p1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logMemoryLevel(I)V

    .line 444
    :cond_0
    return-void
.end method
