.class public Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;
.super Ljava/lang/Object;
.source "ReadRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
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
    .line 263
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/w;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/w;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->a:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->b:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null or empty property for read request is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->a:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->b:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->b:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    return-void
.end method
