.class Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1756
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 1

    .prologue
    .line 1759
    invoke-virtual {p2}, Landroid/support/v4/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatApi24;->setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V

    .line 1760
    return-void
.end method
