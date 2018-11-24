.class final Lcom/samsung/android/sdk/internal/healthdata/a;
.super Ljava/lang/Object;
.source "AggregateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2100
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;-><init>(Landroid/os/Parcel;B)V

    .line 96
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    .line 1105
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    .line 96
    return-object v0
.end method
