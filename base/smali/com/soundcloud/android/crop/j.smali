.class final Lcom/soundcloud/android/crop/j;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/soundcloud/android/crop/i;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/i;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    invoke-static {v0}, Lcom/soundcloud/android/crop/i;->a(Lcom/soundcloud/android/crop/i;)V

    .line 228
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageView;->invalidate()V

    .line 229
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 230
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v1, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$100(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    invoke-static {v1, v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$802(Lcom/soundcloud/android/crop/CropImageActivity;Lcom/soundcloud/android/crop/m;)Lcom/soundcloud/android/crop/m;

    .line 231
    iget-object v0, p0, Lcom/soundcloud/android/crop/j;->a:Lcom/soundcloud/android/crop/i;

    iget-object v0, v0, Lcom/soundcloud/android/crop/i;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-static {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->access$800(Lcom/soundcloud/android/crop/CropImageActivity;)Lcom/soundcloud/android/crop/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/soundcloud/android/crop/m;->a(Z)V

    .line 233
    :cond_0
    return-void
.end method
