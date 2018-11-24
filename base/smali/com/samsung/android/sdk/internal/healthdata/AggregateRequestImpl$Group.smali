.class public Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;
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
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/d;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/d;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->a:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->b:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insufficient arguments for group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->a:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->b:Ljava/lang/String;

    .line 267
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    return-void
.end method
