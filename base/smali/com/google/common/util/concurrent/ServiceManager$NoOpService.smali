.class final Lcom/google/common/util/concurrent/ServiceManager$NoOpService;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "ServiceManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .locals 0

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;->notifyStarted()V

    return-void
.end method

.method protected final doStop()V
    .locals 0

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;->notifyStopped()V

    return-void
.end method
