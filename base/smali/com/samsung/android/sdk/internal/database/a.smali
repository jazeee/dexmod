.class final Lcom/samsung/android/sdk/internal/database/a;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2034
    new-instance v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;-><init>()V

    .line 2035
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    .line 31
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .line 1041
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    .line 31
    return-object v0
.end method
