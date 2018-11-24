.class final Lcom/samsung/android/sdk/internal/healthdata/e;
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
        "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2417
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;-><init>(Landroid/os/Parcel;)V

    .line 413
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    .line 1422
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    .line 413
    return-object v0
.end method
