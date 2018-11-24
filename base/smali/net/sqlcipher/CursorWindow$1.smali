.class final Lnet/sqlcipher/CursorWindow$1;
.super Ljava/lang/Object;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/sqlcipher/CursorWindow;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lnet/sqlcipher/CursorWindow$1;->createFromParcel(Landroid/os/Parcel;)Lnet/sqlcipher/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lnet/sqlcipher/CursorWindow;
    .locals 2

    .prologue
    .line 588
    new-instance v0, Lnet/sqlcipher/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/sqlcipher/CursorWindow;-><init>(Landroid/os/Parcel;I)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lnet/sqlcipher/CursorWindow$1;->newArray(I)[Lnet/sqlcipher/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lnet/sqlcipher/CursorWindow;
    .locals 1

    .prologue
    .line 592
    new-array v0, p1, [Lnet/sqlcipher/CursorWindow;

    return-object v0
.end method
