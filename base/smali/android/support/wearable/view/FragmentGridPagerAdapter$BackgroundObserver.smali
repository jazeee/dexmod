.class Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;
.super Ljava/lang/Object;
.source "FragmentGridPagerAdapter.java"

# interfaces
.implements Landroid/support/wearable/view/GridPageOptions$BackgroundListener;


# instance fields
.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->mTag:Ljava/lang/String;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;Landroid/support/wearable/view/FragmentGridPagerAdapter$1;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;-><init>(Landroid/support/wearable/view/FragmentGridPagerAdapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyBackgroundChanged()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;

    invoke-static {v0}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->access$100(Landroid/support/wearable/view/FragmentGridPagerAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Landroid/support/wearable/view/FragmentGridPagerAdapter$BackgroundObserver;->this$0:Landroid/support/wearable/view/FragmentGridPagerAdapter;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2, v0}, Landroid/support/wearable/view/FragmentGridPagerAdapter;->notifyPageBackgroundChanged(II)V

    .line 126
    :cond_0
    return-void
.end method
