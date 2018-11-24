.class Landroid/support/wearable/view/BackgroundController$2;
.super Landroid/support/v4/util/LruCache;
.source "BackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/BackgroundController;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/BackgroundController;I)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Landroid/support/wearable/view/BackgroundController$2;->this$0:Landroid/support/wearable/view/BackgroundController;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/support/wearable/view/BackgroundController;->access$100(I)I

    move-result v0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/support/wearable/view/BackgroundController;->access$200(I)I

    move-result v1

    .line 95
    iget-object v2, p0, Landroid/support/wearable/view/BackgroundController$2;->this$0:Landroid/support/wearable/view/BackgroundController;

    invoke-static {v2}, Landroid/support/wearable/view/BackgroundController;->access$000(Landroid/support/wearable/view/BackgroundController;)Landroid/support/wearable/view/GridPagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/wearable/view/GridPagerAdapter;->getBackgroundForPage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/BackgroundController$2;->create(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
