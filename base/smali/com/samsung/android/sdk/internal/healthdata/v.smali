.class final Lcom/samsung/android/sdk/internal/healthdata/v;
.super Ljava/lang/Object;
.source "ReadRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2114
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;-><init>(Landroid/os/Parcel;)V

    .line 110
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    .line 1119
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    .line 110
    return-object v0
.end method
