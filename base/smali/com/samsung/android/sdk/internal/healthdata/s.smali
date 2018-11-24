.class final Lcom/samsung/android/sdk/internal/healthdata/s;
.super Ljava/lang/Object;
.source "InsertRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2066
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;-><init>(Landroid/os/Parcel;B)V

    .line 62
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    .line 1071
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    .line 62
    return-object v0
.end method
