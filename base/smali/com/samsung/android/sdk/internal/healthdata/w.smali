.class final Lcom/samsung/android/sdk/internal/healthdata/w;
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
        "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2267
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;-><init>(Landroid/os/Parcel;)V

    .line 263
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    .line 1272
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;

    .line 263
    return-object v0
.end method
