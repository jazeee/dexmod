.class Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    return v0
.end method

.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
