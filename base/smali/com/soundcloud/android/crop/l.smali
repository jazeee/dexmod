.class final Lcom/soundcloud/android/crop/l;
.super Ljava/lang/Object;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/soundcloud/android/crop/k;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/k;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/k;

    invoke-static {v0}, Lcom/soundcloud/android/crop/k;->a(Lcom/soundcloud/android/crop/k;)Lcom/soundcloud/android/crop/s;

    move-result-object v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/k;

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/s;->removeLifeCycleListener(Lcom/soundcloud/android/crop/t;)V

    .line 166
    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/k;

    invoke-static {v0}, Lcom/soundcloud/android/crop/k;->b(Lcom/soundcloud/android/crop/k;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soundcloud/android/crop/l;->a:Lcom/soundcloud/android/crop/k;

    invoke-static {v0}, Lcom/soundcloud/android/crop/k;->b(Lcom/soundcloud/android/crop/k;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    :cond_0
    return-void
.end method
