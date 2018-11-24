.class final Lcom/google/common/util/concurrent/AbstractService$2;
.super Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
        "<",
        "Lcom/google/common/util/concurrent/Service$Listener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final call(Lcom/google/common/util/concurrent/Service$Listener;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$Listener;->running()V

    .line 67
    return-void
.end method

.method final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/google/common/util/concurrent/Service$Listener;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$2;->call(Lcom/google/common/util/concurrent/Service$Listener;)V

    return-void
.end method
