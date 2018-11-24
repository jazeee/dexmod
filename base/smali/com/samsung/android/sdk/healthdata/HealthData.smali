.class public final Lcom/samsung/android/sdk/healthdata/HealthData;
.super Ljava/lang/Object;
.source "HealthData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Landroid/content/ContentValues;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/samsung/android/sdk/healthdata/b;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/b;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->d:Ljava/util/Map;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthData;->a()V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->b:Ljava/lang/String;

    .line 77
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->a:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->a:Ljava/lang/String;

    .line 361
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->b:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 363
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthData;->a()V

    .line 365
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getBlob(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 238
    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public final getBlobKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    return-object v0
.end method

.method public final getDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 177
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 206
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSourceDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final putBlob(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 324
    if-nez p2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public final putDouble(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 296
    return-void
.end method

.method public final putFloat(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 285
    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    return-void
.end method

.method public final putLong(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    return-void
.end method

.method public final putNull(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public final setSourceDevice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->b:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->c:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    return-void
.end method
