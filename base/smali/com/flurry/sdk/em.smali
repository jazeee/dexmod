.class final Lcom/flurry/sdk/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/el;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/flurry/sdk/ej;

    invoke-direct {v0}, Lcom/flurry/sdk/ej;-><init>()V

    .line 105
    iput-object p0, v0, Lcom/flurry/sdk/ej;->a:Landroid/app/Activity;

    .line 106
    iput p1, v0, Lcom/flurry/sdk/ej;->b$7f90bf0e:I

    .line 107
    invoke-virtual {v0}, Lcom/flurry/sdk/ej;->b()V

    .line 108
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/el;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityCreated for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    sget v0, Lcom/flurry/sdk/ek;->a$7f90bf0e:I

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Landroid/app/Activity;I)V

    .line 65
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/el;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityDestroyed for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    sget v0, Lcom/flurry/sdk/ek;->b$7f90bf0e:I

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Landroid/app/Activity;I)V

    .line 101
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 81
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/el;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityPaused for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    sget v0, Lcom/flurry/sdk/ek;->c$7f90bf0e:I

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Landroid/app/Activity;I)V

    .line 83
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/el;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResumed for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    sget v0, Lcom/flurry/sdk/ek;->d$7f90bf0e:I

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Landroid/app/Activity;I)V

    .line 77
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/el;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivitySaveInstanceState for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    sget v0, Lcom/flurry/sdk/ek;->g$7f90bf0e:I

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Landroid/app/Activity;I)V

    .line 95
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 69
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/el;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStarted for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    sget v0, Lcom/flurry/sdk/ek;->e$7f90bf0e:I

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Landroid/app/Activity;I)V

    .line 71
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/el;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityStopped for activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    sget v0, Lcom/flurry/sdk/ek;->f$7f90bf0e:I

    invoke-static {p1, v0}, Lcom/flurry/sdk/em;->a(Landroid/app/Activity;I)V

    .line 89
    return-void
.end method
