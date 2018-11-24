.class public interface abstract Lcom/google/common/util/concurrent/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract awaitRunning()V
.end method

.method public abstract awaitRunning(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract awaitTerminated()V
.end method

.method public abstract awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract failureCause()Ljava/lang/Throwable;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract startAsync()Lcom/google/common/util/concurrent/Service;
.end method

.method public abstract state()Lcom/google/common/util/concurrent/Service$State;
.end method

.method public abstract stopAsync()Lcom/google/common/util/concurrent/Service;
.end method
