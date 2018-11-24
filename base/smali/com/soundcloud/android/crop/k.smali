.class final Lcom/soundcloud/android/crop/k;
.super Lcom/soundcloud/android/crop/t;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/soundcloud/android/crop/s;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/soundcloud/android/crop/s;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/soundcloud/android/crop/t;-><init>()V

    .line 163
    new-instance v0, Lcom/soundcloud/android/crop/l;

    invoke-direct {v0, p0}, Lcom/soundcloud/android/crop/l;-><init>(Lcom/soundcloud/android/crop/k;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/k;->e:Ljava/lang/Runnable;

    .line 172
    iput-object p1, p0, Lcom/soundcloud/android/crop/k;->a:Lcom/soundcloud/android/crop/s;

    .line 173
    iput-object p3, p0, Lcom/soundcloud/android/crop/k;->b:Landroid/app/ProgressDialog;

    .line 174
    iput-object p2, p0, Lcom/soundcloud/android/crop/k;->c:Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->a:Lcom/soundcloud/android/crop/s;

    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/s;->addLifeCycleListener(Lcom/soundcloud/android/crop/t;)V

    .line 176
    iput-object p4, p0, Lcom/soundcloud/android/crop/k;->d:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/soundcloud/android/crop/k;)Lcom/soundcloud/android/crop/s;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->a:Lcom/soundcloud/android/crop/s;

    return-object v0
.end method

.method static synthetic b(Lcom/soundcloud/android/crop/k;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final onActivityDestroyed(Lcom/soundcloud/android/crop/s;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 192
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public final onActivityStarted(Lcom/soundcloud/android/crop/s;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 203
    return-void
.end method

.method public final onActivityStopped(Lcom/soundcloud/android/crop/s;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 198
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/soundcloud/android/crop/k;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/soundcloud/android/crop/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/k;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/soundcloud/android/crop/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
