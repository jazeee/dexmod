.class final Lcom/google/common/eventbus/SynchronizedEventSubscriber;
.super Lcom/google/common/eventbus/EventSubscriber;
.source "SynchronizedEventSubscriber.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/common/eventbus/EventSubscriber;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final handleEvent(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/eventbus/EventSubscriber;->handleEvent(Ljava/lang/Object;)V

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method