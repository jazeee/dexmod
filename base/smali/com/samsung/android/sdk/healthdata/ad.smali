.class public final Lcom/samsung/android/sdk/healthdata/ad;
.super Ljava/lang/Object;
.source "HealthDevice.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/sdk/healthdata/ad;)I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->e:I

    return v0
.end method

.method static synthetic e(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Seed is not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/ad;->e:I

    .line 1372
    sparse-switch v0, :sswitch_data_0

    .line 1385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Device group is not set correctly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :sswitch_0
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;-><init>(Lcom/samsung/android/sdk/healthdata/ad;B)V

    return-object v0

    .line 1372
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x57e41 -> :sswitch_0
        0x57e42 -> :sswitch_0
        0x57e43 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setCustomName(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/ad;
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/ad;->a:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public final setDeviceSeed(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/ad;
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/ad;->d:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public final setGroup(I)Lcom/samsung/android/sdk/healthdata/ad;
    .locals 0

    .prologue
    .line 349
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/ad;->e:I

    .line 350
    return-object p0
.end method

.method public final setManufacturer(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/ad;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/ad;->c:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/ad;
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/ad;->b:Ljava/lang/String;

    .line 294
    return-object p0
.end method
