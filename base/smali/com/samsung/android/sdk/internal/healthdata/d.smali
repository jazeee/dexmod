.class final Lcom/samsung/android/sdk/internal/healthdata/d;
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
        "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2302
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;-><init>(Landroid/os/Parcel;)V

    .line 298
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    .line 1307
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;

    .line 298
    return-object v0
.end method
