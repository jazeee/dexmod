.class final Lcom/samsung/android/sdk/internal/healthdata/query/a;
.super Ljava/lang/Object;
.source "ComparisonFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2105
    invoke-static {}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->values()[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    .line 102
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    .line 1110
    new-array v0, p1, [Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 102
    return-object v0
.end method
