.class public Lnet/sqlcipher/AbstractCursor$SelfContentObserver;
.super Landroid/database/ContentObserver;
.source "AbstractCursor.java"


# instance fields
.field mCursor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/sqlcipher/AbstractCursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sqlcipher/AbstractCursor;)V
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 581
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    .line 582
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lnet/sqlcipher/AbstractCursor$SelfContentObserver;->mCursor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/AbstractCursor;

    .line 592
    if-eqz v0, :cond_0

    .line 593
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sqlcipher/AbstractCursor;->onChange(Z)V

    .line 595
    :cond_0
    return-void
.end method
