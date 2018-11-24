.class abstract Lcom/soundcloud/android/crop/s;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/soundcloud/android/crop/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/soundcloud/android/crop/t;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/t;

    .line 43
    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/t;->onActivityCreated(Lcom/soundcloud/android/crop/s;)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/t;

    .line 51
    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/t;->onActivityDestroyed(Lcom/soundcloud/android/crop/s;)V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/t;

    .line 59
    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/t;->onActivityStarted(Lcom/soundcloud/android/crop/s;)V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 66
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/t;

    .line 67
    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/t;->onActivityStopped(Lcom/soundcloud/android/crop/s;)V

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/soundcloud/android/crop/t;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/soundcloud/android/crop/s;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method
