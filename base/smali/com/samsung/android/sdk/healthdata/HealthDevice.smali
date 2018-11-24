.class public final Lcom/samsung/android/sdk/healthdata/HealthDevice;
.super Ljava/lang/Object;
.source "HealthDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_COMPANION:I = 0x57e43

.field public static final GROUP_EXTERNAL:I = 0x57e42

.field public static final GROUP_MOBILE:I = 0x57e41

.field public static final GROUP_UNKNOWN:I


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ac;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/ac;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->a:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->d:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->e:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/healthdata/ad;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->a:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ad;->a(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->b:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ad;->b(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->c:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ad;->c(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->d:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ad;->d(Lcom/samsung/android/sdk/healthdata/ad;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->e:I

    .line 102
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ad;->e(Lcom/samsung/android/sdk/healthdata/ad;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/ad;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;-><init>(Lcom/samsung/android/sdk/healthdata/ad;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->a:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->d:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->c:Ljava/lang/String;

    .line 92
    iput-object p5, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->b:Ljava/lang/String;

    .line 93
    iput p6, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->e:I

    .line 94
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 164
    if-ne p1, p0, :cond_1

    .line 165
    const/4 v0, 0x1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    instance-of v1, p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;

    if-eqz v1, :cond_0

    .line 172
    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;

    .line 175
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getCustomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroup()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->e:I

    return v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return-void
.end method
