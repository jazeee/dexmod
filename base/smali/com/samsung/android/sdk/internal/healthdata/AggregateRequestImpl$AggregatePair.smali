.class public Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;
.super Ljava/lang/Object;
.source "AggregateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/c;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/c;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->a:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->b:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->c:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insufficient arguments for aggregate function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/d;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->a:I

    .line 199
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->b:Ljava/lang/String;

    .line 200
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->c:Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getAggNum()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->a:I

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->a:I

    invoke-static {v1}, Lcom/samsung/android/sdk/healthdata/d;->from(I)Lcom/samsung/android/sdk/healthdata/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/d;->toSqlLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    return-void
.end method
