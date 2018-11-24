.class final Lcom/soundcloud/android/crop/c;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/soundcloud/android/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/soundcloud/android/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/soundcloud/android/crop/c;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/soundcloud/android/crop/c;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/soundcloud/android/crop/CropImageActivity;->setResult(I)V

    .line 81
    iget-object v0, p0, Lcom/soundcloud/android/crop/c;->a:Lcom/soundcloud/android/crop/CropImageActivity;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->finish()V

    .line 82
    return-void
.end method
