.class public Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;
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
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/e;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/e;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->a:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->b:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->c:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->d:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->e:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/j;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid timeUnit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    if-nez p2, :cond_1

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid amount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/b;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid timeUnit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :pswitch_0
    const/16 v0, 0x3c

    rem-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid amount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_1
    const/16 v0, 0x18

    rem-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid amount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :pswitch_2
    if-eq p2, v2, :cond_2

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid amount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_3
    if-eq p2, v2, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid amount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Insufficient arguments for time group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/j;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->a:I

    .line 360
    iput p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->b:I

    .line 361
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->c:Ljava/lang/String;

    .line 362
    iput-object p4, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->d:Ljava/lang/String;

    .line 363
    iput-object p5, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->e:Ljava/lang/String;

    .line 364
    return-void

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->b:I

    return v0
.end method

.method public getOffsetProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeUnit()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 382
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->a:I

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/j;->from(I)Lcom/samsung/android/sdk/healthdata/j;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->d:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/j;->toSqlLiteral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    return-void
.end method
